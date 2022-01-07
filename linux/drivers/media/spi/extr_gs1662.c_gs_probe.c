
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct spi_device {int irq; int max_speed_hz; int bits_per_word; int mode; int dev; } ;
struct gs {scalar_t__ enabled; int current_timings; struct v4l2_subdev sd; struct spi_device* pdev; } ;
struct TYPE_2__ {int format; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_MODE_0 ;
 struct gs* devm_kzalloc (int *,int,int ) ;
 int gs_ops ;
 int gs_write_register (struct spi_device*,int,int) ;
 TYPE_1__* reg_fmt ;
 int spi_setup (struct spi_device*) ;
 int v4l2_spi_subdev_init (struct v4l2_subdev*,struct spi_device*,int *) ;

__attribute__((used)) static int gs_probe(struct spi_device *spi)
{
 int ret;
 struct gs *gs;
 struct v4l2_subdev *sd;

 gs = devm_kzalloc(&spi->dev, sizeof(struct gs), GFP_KERNEL);
 if (!gs)
  return -ENOMEM;

 gs->pdev = spi;
 sd = &gs->sd;

 spi->mode = SPI_MODE_0;
 spi->irq = -1;
 spi->max_speed_hz = 10000000;
 spi->bits_per_word = 16;
 ret = spi_setup(spi);
 v4l2_spi_subdev_init(sd, spi, &gs_ops);

 gs->current_timings = reg_fmt[0].format;
 gs->enabled = 0;


 gs_write_register(spi, 0x0, 0x300);

 return ret;
}
