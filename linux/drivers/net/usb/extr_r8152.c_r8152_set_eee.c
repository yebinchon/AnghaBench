
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int eee_en; int eee_adv; } ;
struct ethtool_eee {int eee_enabled; int advertised; } ;


 int ethtool_adv_to_mmd_eee_adv_t (int ) ;
 int rtl_eee_enable (struct r8152*,int ) ;

__attribute__((used)) static int r8152_set_eee(struct r8152 *tp, struct ethtool_eee *eee)
{
 u16 val = ethtool_adv_to_mmd_eee_adv_t(eee->advertised);

 tp->eee_en = eee->eee_enabled;
 tp->eee_adv = val;

 rtl_eee_enable(tp, tp->eee_en);

 return 0;
}
