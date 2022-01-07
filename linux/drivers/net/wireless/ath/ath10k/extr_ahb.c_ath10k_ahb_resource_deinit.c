
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ath10k_ahb {int * tcsr_mem; int * gcc_mem; int * mem; TYPE_1__* pdev; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ath10k_ahb_clock_deinit (struct ath10k*) ;
 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int ath10k_ahb_rst_ctrl_deinit (struct ath10k*) ;
 int devm_iounmap (struct device*,int *) ;
 int iounmap (int *) ;

__attribute__((used)) static void ath10k_ahb_resource_deinit(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);
 struct device *dev;

 dev = &ar_ahb->pdev->dev;

 if (ar_ahb->mem)
  devm_iounmap(dev, ar_ahb->mem);

 if (ar_ahb->gcc_mem)
  iounmap(ar_ahb->gcc_mem);

 if (ar_ahb->tcsr_mem)
  iounmap(ar_ahb->tcsr_mem);

 ar_ahb->mem = ((void*)0);
 ar_ahb->gcc_mem = ((void*)0);
 ar_ahb->tcsr_mem = ((void*)0);

 ath10k_ahb_clock_deinit(ar);
 ath10k_ahb_rst_ctrl_deinit(ar);
}
