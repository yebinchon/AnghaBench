
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct mtk_mdp_dev {TYPE_1__* pdev; } ;
struct mtk_mdp_ctx {struct mtk_mdp_dev* mdp_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 char* MTK_MDP_MODULE_NAME ;
 struct mtk_mdp_ctx* fh_to_ctx (void*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int mtk_mdp_m2m_querycap(struct file *file, void *fh,
    struct v4l2_capability *cap)
{
 struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
 struct mtk_mdp_dev *mdp = ctx->mdp_dev;

 strscpy(cap->driver, MTK_MDP_MODULE_NAME, sizeof(cap->driver));
 strscpy(cap->card, mdp->pdev->name, sizeof(cap->card));
 strscpy(cap->bus_info, "platform:mt8173", sizeof(cap->bus_info));

 return 0;
}
