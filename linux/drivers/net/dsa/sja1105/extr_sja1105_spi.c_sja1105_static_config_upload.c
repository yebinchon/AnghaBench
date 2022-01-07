
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sja1105_status {int ids; int crcchkl; int crcchkg; scalar_t__ configs; } ;
struct sja1105_static_config {int device_id; } ;
struct sja1105_regs {int config; } ;
struct sja1105_private {TYPE_2__* info; TYPE_1__* spidev; struct sja1105_static_config static_config; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int device_id; struct sja1105_regs* regs; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 unsigned long GENMASK_ULL (scalar_t__,int ) ;
 int GFP_KERNEL ;
 int RETRIES ;
 scalar_t__ SJA1105_NUM_PORTS ;
 int SPI_WRITE ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,...) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int sja1105_cold_reset (struct sja1105_private*) ;
 int sja1105_inhibit_tx (struct sja1105_private*,unsigned long,int) ;
 int sja1105_ptp_reset (struct sja1105_private*) ;
 int sja1105_spi_send_long_packed_buf (struct sja1105_private*,int ,int ,int *,int) ;
 int sja1105_static_config_get_length (struct sja1105_static_config*) ;
 int sja1105_status_get (struct sja1105_private*,struct sja1105_status*) ;
 int static_config_buf_prepare_for_upload (struct sja1105_private*,int *,int) ;
 int usleep_range (int,int) ;

int sja1105_static_config_upload(struct sja1105_private *priv)
{
 unsigned long port_bitmap = GENMASK_ULL(SJA1105_NUM_PORTS - 1, 0);
 struct sja1105_static_config *config = &priv->static_config;
 const struct sja1105_regs *regs = priv->info->regs;
 struct device *dev = &priv->spidev->dev;
 struct sja1105_status status;
 int rc, retries = RETRIES;
 u8 *config_buf;
 int buf_len;

 buf_len = sja1105_static_config_get_length(config);
 config_buf = kcalloc(buf_len, sizeof(char), GFP_KERNEL);
 if (!config_buf)
  return -ENOMEM;

 rc = static_config_buf_prepare_for_upload(priv, config_buf, buf_len);
 if (rc < 0) {
  dev_err(dev, "Invalid config, cannot upload\n");
  rc = -EINVAL;
  goto out;
 }




 rc = sja1105_inhibit_tx(priv, port_bitmap, 1);
 if (rc < 0) {
  dev_err(dev, "Failed to inhibit Tx on ports\n");
  rc = -ENXIO;
  goto out;
 }




 usleep_range(500, 1000);
 do {

  rc = sja1105_cold_reset(priv);
  if (rc < 0) {
   dev_err(dev, "Failed to reset switch, retrying...\n");
   continue;
  }

  usleep_range(1000, 5000);

  rc = sja1105_spi_send_long_packed_buf(priv, SPI_WRITE,
            regs->config,
            config_buf, buf_len);
  if (rc < 0) {
   dev_err(dev, "Failed to upload config, retrying...\n");
   continue;
  }

  rc = sja1105_status_get(priv, &status);
  if (rc < 0)
   continue;

  if (status.ids == 1) {
   dev_err(dev, "Mismatch between hardware and static config "
    "device id. Wrote 0x%llx, wants 0x%llx\n",
    config->device_id, priv->info->device_id);
   continue;
  }
  if (status.crcchkl == 1) {
   dev_err(dev, "Switch reported invalid local CRC on "
    "the uploaded config, retrying...\n");
   continue;
  }
  if (status.crcchkg == 1) {
   dev_err(dev, "Switch reported invalid global CRC on "
    "the uploaded config, retrying...\n");
   continue;
  }
  if (status.configs == 0) {
   dev_err(dev, "Switch reported that configuration is "
    "invalid, retrying...\n");
   continue;
  }

  break;
 } while (--retries);

 if (!retries) {
  rc = -EIO;
  dev_err(dev, "Failed to upload config to device, giving up\n");
  goto out;
 } else if (retries != RETRIES) {
  dev_info(dev, "Succeeded after %d tried\n", RETRIES - retries);
 }

 rc = sja1105_ptp_reset(priv);
 if (rc < 0)
  dev_err(dev, "Failed to reset PTP clock: %d\n", rc);

 dev_info(dev, "Reset switch and programmed static config\n");

out:
 kfree(config_buf);
 return rc;
}
