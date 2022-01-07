
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_nand {scalar_t__ fcr; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int (* disable ) (struct platform_device*) ;} ;


 scalar_t__ FCR_MODE ;
 int FCR_MODE_POWER_OFF ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 int stub1 (struct platform_device*) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tmio_hw_stop(struct platform_device *dev, struct tmio_nand *tmio)
{
 const struct mfd_cell *cell = mfd_get_cell(dev);

 tmio_iowrite8(FCR_MODE_POWER_OFF, tmio->fcr + FCR_MODE);
 if (cell->disable)
  cell->disable(dev);
}
