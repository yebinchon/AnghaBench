
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mfd_cell {int (* enable ) (struct platform_device*) ;int usage_count; } ;


 int atomic_dec (int ) ;
 int atomic_inc_return (int ) ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 int stub1 (struct platform_device*) ;

int mfd_cell_enable(struct platform_device *pdev)
{
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 int err = 0;


 if (atomic_inc_return(cell->usage_count) == 1)
  err = cell->enable(pdev);


 if (err)
  atomic_dec(cell->usage_count);

 return err;
}
