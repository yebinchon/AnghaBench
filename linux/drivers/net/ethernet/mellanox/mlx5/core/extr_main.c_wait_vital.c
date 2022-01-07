
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mlx5_core_health {int health_counter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ETIMEDOUT ;
 int ioread32be (int ) ;
 int mlx5_core_info (struct mlx5_core_dev*,char*,int,int) ;
 int msleep (int) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int wait_vital(struct pci_dev *pdev)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);
 struct mlx5_core_health *health = &dev->priv.health;
 const int niter = 100;
 u32 last_count = 0;
 u32 count;
 int i;

 for (i = 0; i < niter; i++) {
  count = ioread32be(health->health_counter);
  if (count && count != 0xffffffff) {
   if (last_count && last_count != count) {
    mlx5_core_info(dev,
            "wait vital counter value 0x%x after %d iterations\n",
            count, i);
    return 0;
   }
   last_count = count;
  }
  msleep(50);
 }

 return -ETIMEDOUT;
}
