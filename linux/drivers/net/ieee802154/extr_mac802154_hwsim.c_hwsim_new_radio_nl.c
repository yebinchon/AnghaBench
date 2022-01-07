
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int hwsim_add_one (struct genl_info*,int *,int) ;
 TYPE_1__* mac802154hwsim_dev ;

__attribute__((used)) static int hwsim_new_radio_nl(struct sk_buff *msg, struct genl_info *info)
{
 return hwsim_add_one(info, &mac802154hwsim_dev->dev, 0);
}
