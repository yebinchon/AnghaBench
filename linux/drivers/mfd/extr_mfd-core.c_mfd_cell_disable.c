
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mfd_cell {int (* disable ) (struct platform_device*) ;int usage_count; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_return (int ) ;
 int atomic_inc (int ) ;
 scalar_t__ atomic_read (int ) ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 int stub1 (struct platform_device*) ;

int mfd_cell_disable(struct platform_device *pdev)
{
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 int err = 0;


 if (atomic_dec_return(cell->usage_count) == 0)
  err = cell->disable(pdev);


 if (err)
  atomic_inc(cell->usage_count);


 WARN_ON(atomic_read(cell->usage_count) < 0);

 return err;
}
