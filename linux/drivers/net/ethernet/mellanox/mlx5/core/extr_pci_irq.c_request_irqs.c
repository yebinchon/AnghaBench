
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_irq {int nh; int name; } ;
struct mlx5_core_dev {int pdev; } ;


 int ATOMIC_INIT_NOTIFIER_HEAD (int *) ;
 int MLX5_MAX_IRQ_NAME ;
 int free_irq (int,int *) ;
 int irq_set_name (char*,int) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 struct mlx5_irq* mlx5_irq_get (struct mlx5_core_dev*,int) ;
 int mlx5_irq_int_handler ;
 int pci_irq_vector (int ,int) ;
 char* pci_name (int ) ;
 int request_irq (int,int ,int ,int ,int *) ;
 int snprintf (int ,int,char*,char*,char*) ;

__attribute__((used)) static int request_irqs(struct mlx5_core_dev *dev, int nvec)
{
 char name[MLX5_MAX_IRQ_NAME];
 int err;
 int i;

 for (i = 0; i < nvec; i++) {
  struct mlx5_irq *irq = mlx5_irq_get(dev, i);
  int irqn = pci_irq_vector(dev->pdev, i);

  irq_set_name(name, i);
  ATOMIC_INIT_NOTIFIER_HEAD(&irq->nh);
  snprintf(irq->name, MLX5_MAX_IRQ_NAME,
    "%s@pci:%s", name, pci_name(dev->pdev));
  err = request_irq(irqn, mlx5_irq_int_handler, 0, irq->name,
      &irq->nh);
  if (err) {
   mlx5_core_err(dev, "Failed to request irq\n");
   goto err_request_irq;
  }
 }
 return 0;

err_request_irq:
 for (; i >= 0; i--) {
  struct mlx5_irq *irq = mlx5_irq_get(dev, i);
  int irqn = pci_irq_vector(dev->pdev, i);

  free_irq(irqn, &irq->nh);
 }
 return err;
}
