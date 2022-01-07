
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_core_dev {int pdev; } ;


 int EBUSY ;
 int VSC_COUNTER_OFFSET ;
 int VSC_MAX_RETRIES ;
 int VSC_SEMAPHORE_OFFSET ;
 int pci_cfg_access_lock (int ) ;
 int pci_cfg_access_unlock (int ) ;
 int usleep_range (int,int) ;
 int vsc_read (struct mlx5_core_dev*,int ,scalar_t__*) ;
 int vsc_write (struct mlx5_core_dev*,int ,scalar_t__) ;

int mlx5_vsc_gw_lock(struct mlx5_core_dev *dev)
{
 u32 counter = 0;
 int retries = 0;
 u32 lock_val;
 int ret;

 pci_cfg_access_lock(dev->pdev);
 do {
  if (retries > VSC_MAX_RETRIES) {
   ret = -EBUSY;
   goto pci_unlock;
  }


  ret = vsc_read(dev, VSC_SEMAPHORE_OFFSET, &lock_val);
  if (ret)
   goto pci_unlock;

  if (lock_val) {
   retries++;
   usleep_range(1000, 2000);
   continue;
  }




  ret = vsc_read(dev, VSC_COUNTER_OFFSET, &counter);
  if (ret)
   goto pci_unlock;

  ret = vsc_write(dev, VSC_SEMAPHORE_OFFSET, counter);
  if (ret)
   goto pci_unlock;

  ret = vsc_read(dev, VSC_SEMAPHORE_OFFSET, &lock_val);
  if (ret)
   goto pci_unlock;

  retries++;
 } while (counter != lock_val);

 return 0;

pci_unlock:
 pci_cfg_access_unlock(dev->pdev);
 return ret;
}
