
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int dummy; } ;
typedef enum devlink_eswitch_mode { ____Placeholder_devlink_eswitch_mode } devlink_eswitch_mode ;


 int DEVLINK_ESWITCH_MODE_SWITCHDEV ;

__attribute__((used)) static enum devlink_eswitch_mode eswitch_mode_get(struct nfp_app *app)
{
 return DEVLINK_ESWITCH_MODE_SWITCHDEV;
}
