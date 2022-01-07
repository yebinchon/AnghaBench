
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;


 int fmr2_remove (int ) ;
 int pnp_get_drvdata (struct pnp_dev*) ;
 int pnp_set_drvdata (struct pnp_dev*,int *) ;

__attribute__((used)) static void fmr2_pnp_remove(struct pnp_dev *pdev)
{
 fmr2_remove(pnp_get_drvdata(pdev));
 pnp_set_drvdata(pdev, ((void*)0));
}
