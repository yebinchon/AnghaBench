
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_priv_s {int dev; } ;
struct mac_device {int (* set_exception ) (int ,int ,int) ;int fman_mac; struct mac_priv_s* priv; } ;
struct fman_mac_params {int dummy; } ;


 int EINVAL ;
 int FM_MAC_EX_1G_RX_MIB_CNT_OVFL ;
 int dev_info (int ,char*,int ) ;
 int dtsec_cfg_max_frame_len (int ,int ) ;
 int dtsec_cfg_pad_and_crc (int ,int) ;
 int dtsec_config (struct fman_mac_params*) ;
 int dtsec_free (int ) ;
 int dtsec_get_version (int ,int *) ;
 int dtsec_init (int ) ;
 int fman_get_max_frm () ;
 int set_fman_mac_params (struct mac_device*,struct fman_mac_params*) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static int dtsec_initialization(struct mac_device *mac_dev)
{
 int err;
 struct mac_priv_s *priv;
 struct fman_mac_params params;
 u32 version;

 priv = mac_dev->priv;

 set_fman_mac_params(mac_dev, &params);

 mac_dev->fman_mac = dtsec_config(&params);
 if (!mac_dev->fman_mac) {
  err = -EINVAL;
  goto _return;
 }

 err = dtsec_cfg_max_frame_len(mac_dev->fman_mac, fman_get_max_frm());
 if (err < 0)
  goto _return_fm_mac_free;

 err = dtsec_cfg_pad_and_crc(mac_dev->fman_mac, 1);
 if (err < 0)
  goto _return_fm_mac_free;

 err = dtsec_init(mac_dev->fman_mac);
 if (err < 0)
  goto _return_fm_mac_free;


 err = mac_dev->set_exception(mac_dev->fman_mac,
         FM_MAC_EX_1G_RX_MIB_CNT_OVFL, 0);
 if (err < 0)
  goto _return_fm_mac_free;

 err = dtsec_get_version(mac_dev->fman_mac, &version);
 if (err < 0)
  goto _return_fm_mac_free;

 dev_info(priv->dev, "FMan dTSEC version: 0x%08x\n", version);

 goto _return;

_return_fm_mac_free:
 dtsec_free(mac_dev->fman_mac);

_return:
 return err;
}
