
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ath10k_ahb {int dummy; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_AHB ;
 int EINVAL ;
 int ath10k_ahb_clock_disable (struct ath10k*) ;
 int ath10k_ahb_halt_chip (struct ath10k*) ;
 int ath10k_ahb_irq_disable (struct ath10k*) ;
 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int ath10k_ahb_release_irq_legacy (struct ath10k*) ;
 int ath10k_ahb_resource_deinit (struct ath10k*) ;
 int ath10k_core_destroy (struct ath10k*) ;
 int ath10k_core_unregister (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_release_resource (struct ath10k*) ;
 struct ath10k* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int ath10k_ahb_remove(struct platform_device *pdev)
{
 struct ath10k *ar = platform_get_drvdata(pdev);
 struct ath10k_ahb *ar_ahb;

 if (!ar)
  return -EINVAL;

 ar_ahb = ath10k_ahb_priv(ar);

 if (!ar_ahb)
  return -EINVAL;

 ath10k_dbg(ar, ATH10K_DBG_AHB, "ahb remove\n");

 ath10k_core_unregister(ar);
 ath10k_ahb_irq_disable(ar);
 ath10k_ahb_release_irq_legacy(ar);
 ath10k_pci_release_resource(ar);
 ath10k_ahb_halt_chip(ar);
 ath10k_ahb_clock_disable(ar);
 ath10k_ahb_resource_deinit(ar);
 ath10k_core_destroy(ar);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
