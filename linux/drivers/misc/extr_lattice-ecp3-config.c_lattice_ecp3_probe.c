
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct fpga_data {int fw_loaded; } ;


 int ENOMEM ;
 int FIRMWARE_NAME ;
 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 struct fpga_data* devm_kzalloc (int *,int,int ) ;
 int firmware_load ;
 int init_completion (int *) ;
 int request_firmware_nowait (int ,int ,int ,int *,int ,struct spi_device*,int ) ;
 int spi_set_drvdata (struct spi_device*,struct fpga_data*) ;

__attribute__((used)) static int lattice_ecp3_probe(struct spi_device *spi)
{
 struct fpga_data *data;
 int err;

 data = devm_kzalloc(&spi->dev, sizeof(*data), GFP_KERNEL);
 if (!data) {
  dev_err(&spi->dev, "Memory allocation for fpga_data failed\n");
  return -ENOMEM;
 }
 spi_set_drvdata(spi, data);

 init_completion(&data->fw_loaded);
 err = request_firmware_nowait(THIS_MODULE, FW_ACTION_HOTPLUG,
          FIRMWARE_NAME, &spi->dev,
          GFP_KERNEL, spi, firmware_load);
 if (err) {
  dev_err(&spi->dev, "Firmware loading failed with %d!\n", err);
  return err;
 }

 dev_info(&spi->dev, "FPGA bitstream configuration driver registered\n");

 return 0;
}
