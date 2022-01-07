
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct fintek_dev {int dummy; } ;


 int fintek_enable_wake (struct fintek_dev*) ;
 struct fintek_dev* pnp_get_drvdata (struct pnp_dev*) ;

__attribute__((used)) static void fintek_shutdown(struct pnp_dev *pdev)
{
 struct fintek_dev *fintek = pnp_get_drvdata(pdev);
 fintek_enable_wake(fintek);
}
