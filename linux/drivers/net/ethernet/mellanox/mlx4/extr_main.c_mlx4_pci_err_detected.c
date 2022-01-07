
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx4_dev_persistent {int interface_state; int dev; int interface_state_mutex; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int MLX4_INTERFACE_STATE_UP ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int mlx4_enter_error_state (struct mlx4_dev_persistent*) ;
 int mlx4_err (int ,char*) ;
 int mlx4_pci_disable_device (int ) ;
 int mlx4_unload_one (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_channel_io_perm_failure ;
 struct mlx4_dev_persistent* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t mlx4_pci_err_detected(struct pci_dev *pdev,
           pci_channel_state_t state)
{
 struct mlx4_dev_persistent *persist = pci_get_drvdata(pdev);

 mlx4_err(persist->dev, "mlx4_pci_err_detected was called\n");
 mlx4_enter_error_state(persist);

 mutex_lock(&persist->interface_state_mutex);
 if (persist->interface_state & MLX4_INTERFACE_STATE_UP)
  mlx4_unload_one(pdev);

 mutex_unlock(&persist->interface_state_mutex);
 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 mlx4_pci_disable_device(persist->dev);
 return PCI_ERS_RESULT_NEED_RESET;
}
