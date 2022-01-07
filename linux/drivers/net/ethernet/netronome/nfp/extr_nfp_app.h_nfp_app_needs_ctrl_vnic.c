
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ ctrl_msg_rx; } ;



__attribute__((used)) static inline bool nfp_app_needs_ctrl_vnic(struct nfp_app *app)
{
 return app && app->type->ctrl_msg_rx;
}
