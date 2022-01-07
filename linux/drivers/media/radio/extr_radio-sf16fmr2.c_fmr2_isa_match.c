
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmr2 {int dummy; } ;
struct device {int dummy; } ;


 int FMR2_PORT ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct fmr2*) ;
 struct fmr2** fmr2_cards ;
 scalar_t__ fmr2_probe (struct fmr2*,struct device*,int ) ;
 int kfree (struct fmr2*) ;
 struct fmr2* kzalloc (int,int ) ;
 int num_fmr2_cards ;

__attribute__((used)) static int fmr2_isa_match(struct device *pdev, unsigned int ndev)
{
 struct fmr2 *fmr2 = kzalloc(sizeof(*fmr2), GFP_KERNEL);
 if (!fmr2)
  return 0;

 if (fmr2_probe(fmr2, pdev, FMR2_PORT)) {
  kfree(fmr2);
  return 0;
 }
 dev_set_drvdata(pdev, fmr2);
 fmr2_cards[num_fmr2_cards++] = fmr2;

 return 1;
}
