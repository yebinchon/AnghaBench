
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mmc_pwrseq_emmc {int pwrseq; int reset_nb; } ;


 int mmc_pwrseq_unregister (int *) ;
 struct mmc_pwrseq_emmc* platform_get_drvdata (struct platform_device*) ;
 int unregister_restart_handler (int *) ;

__attribute__((used)) static int mmc_pwrseq_emmc_remove(struct platform_device *pdev)
{
 struct mmc_pwrseq_emmc *pwrseq = platform_get_drvdata(pdev);

 unregister_restart_handler(&pwrseq->reset_nb);
 mmc_pwrseq_unregister(&pwrseq->pwrseq);

 return 0;
}
