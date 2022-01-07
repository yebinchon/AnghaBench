
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {int * prs_double_vlans; } ;


 int EINVAL ;
 int MVPP2_PRS_DBL_VLANS_MAX ;

__attribute__((used)) static int mvpp2_prs_double_vlan_ai_free_get(struct mvpp2 *priv)
{
 int i;

 for (i = 1; i < MVPP2_PRS_DBL_VLANS_MAX; i++) {
  if (!priv->prs_double_vlans[i])
   return i;
 }

 return -EINVAL;
}
