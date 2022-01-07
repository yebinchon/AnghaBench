
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_pf {int pdev; int cpp; } ;
struct nfp_app {TYPE_1__* type; int pdev; int cpp; struct nfp_pf* pf; } ;
typedef enum nfp_app_id { ____Placeholder_nfp_app_id } nfp_app_id ;
struct TYPE_3__ {scalar_t__ ctrl_msg_rx_raw; int ctrl_msg_rx; int vnic_alloc; int name; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int EINVAL ;
 int ENOMEM ;
 struct nfp_app* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 TYPE_1__** apps ;
 struct nfp_app* kzalloc (int,int ) ;
 int nfp_err (int ,char*,int) ;

struct nfp_app *nfp_app_alloc(struct nfp_pf *pf, enum nfp_app_id id)
{
 struct nfp_app *app;

 if (id >= ARRAY_SIZE(apps) || !apps[id]) {
  nfp_err(pf->cpp, "unknown FW app ID 0x%02hhx, driver too old or support for FW not built in\n", id);
  return ERR_PTR(-EINVAL);
 }

 if (WARN_ON(!apps[id]->name || !apps[id]->vnic_alloc))
  return ERR_PTR(-EINVAL);
 if (WARN_ON(!apps[id]->ctrl_msg_rx && apps[id]->ctrl_msg_rx_raw))
  return ERR_PTR(-EINVAL);

 app = kzalloc(sizeof(*app), GFP_KERNEL);
 if (!app)
  return ERR_PTR(-ENOMEM);

 app->pf = pf;
 app->cpp = pf->cpp;
 app->pdev = pf->pdev;
 app->type = apps[id];

 return app;
}
