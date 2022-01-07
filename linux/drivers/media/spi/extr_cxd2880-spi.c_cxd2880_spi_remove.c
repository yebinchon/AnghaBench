
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_3__ {int (* remove_frontend ) (TYPE_1__*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ dmx; } ;
struct cxd2880_dvb_spi {scalar_t__ vcc_supply; int adapter; int dvb_fe; TYPE_2__ demux; int dmxdev; int dmx_fe; } ;


 int EINVAL ;
 struct cxd2880_dvb_spi* dev_get_drvdata (int *) ;
 int dvb_dmx_release (TYPE_2__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int *) ;
 int kfree (struct cxd2880_dvb_spi*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int regulator_disable (scalar_t__) ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static int
cxd2880_spi_remove(struct spi_device *spi)
{
 struct cxd2880_dvb_spi *dvb_spi;

 if (!spi) {
  pr_err("invalid arg\n");
  return -EINVAL;
 }

 dvb_spi = dev_get_drvdata(&spi->dev);

 if (!dvb_spi) {
  pr_err("failed\n");
  return -EINVAL;
 }
 dvb_spi->demux.dmx.remove_frontend(&dvb_spi->demux.dmx,
        &dvb_spi->dmx_fe);
 dvb_dmxdev_release(&dvb_spi->dmxdev);
 dvb_dmx_release(&dvb_spi->demux);
 dvb_unregister_frontend(&dvb_spi->dvb_fe);
 dvb_frontend_detach(&dvb_spi->dvb_fe);
 dvb_unregister_adapter(&dvb_spi->adapter);

 if (dvb_spi->vcc_supply)
  regulator_disable(dvb_spi->vcc_supply);

 kfree(dvb_spi);
 pr_info("cxd2880_spi remove ok.\n");

 return 0;
}
