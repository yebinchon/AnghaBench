
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ipw2100_ordinals {scalar_t__ table1_addr; } ;
struct ipw2100_priv {int net_dev; struct ipw2100_ordinals ordinals; } ;


 int EINVAL ;
 int IPW_DEBUG_INFO (char*) ;
 scalar_t__ IPW_ORD_TAB_1_ENTRY_SIZE ;
 scalar_t__ IS_ORDINAL_TABLE_ONE (struct ipw2100_ordinals*,scalar_t__) ;
 scalar_t__ IS_ORDINAL_TABLE_TWO (struct ipw2100_ordinals*,scalar_t__) ;
 int read_nic_dword (int ,scalar_t__,scalar_t__*) ;
 int write_nic_dword (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ipw2100_set_ordinal(struct ipw2100_priv *priv, u32 ord, u32 * val,
          u32 * len)
{
 struct ipw2100_ordinals *ordinals = &priv->ordinals;
 u32 addr;

 if (IS_ORDINAL_TABLE_ONE(ordinals, ord)) {
  if (*len != IPW_ORD_TAB_1_ENTRY_SIZE) {
   *len = IPW_ORD_TAB_1_ENTRY_SIZE;
   IPW_DEBUG_INFO("wrong size\n");
   return -EINVAL;
  }

  read_nic_dword(priv->net_dev,
          ordinals->table1_addr + (ord << 2), &addr);

  write_nic_dword(priv->net_dev, addr, *val);

  *len = IPW_ORD_TAB_1_ENTRY_SIZE;

  return 0;
 }

 IPW_DEBUG_INFO("wrong table\n");
 if (IS_ORDINAL_TABLE_TWO(ordinals, ord))
  return -EINVAL;

 return -EINVAL;
}
