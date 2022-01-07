
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_device_id {int dummy; } ;
struct pnp_dev {int dev; } ;
struct fmr2 {int is_fmd2; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct fmr2** fmr2_cards ;
 int fmr2_probe (struct fmr2*,int *,int ) ;
 int kfree (struct fmr2*) ;
 struct fmr2* kzalloc (int,int ) ;
 int num_fmr2_cards ;
 int pnp_port_start (struct pnp_dev*,int ) ;
 int pnp_set_drvdata (struct pnp_dev*,struct fmr2*) ;

__attribute__((used)) static int fmr2_pnp_probe(struct pnp_dev *pdev, const struct pnp_device_id *id)
{
 int ret;
 struct fmr2 *fmr2 = kzalloc(sizeof(*fmr2), GFP_KERNEL);
 if (!fmr2)
  return -ENOMEM;

 fmr2->is_fmd2 = 1;
 ret = fmr2_probe(fmr2, &pdev->dev, pnp_port_start(pdev, 0));
 if (ret) {
  kfree(fmr2);
  return ret;
 }
 pnp_set_drvdata(pdev, fmr2);
 fmr2_cards[num_fmr2_cards++] = fmr2;

 return 0;
}
