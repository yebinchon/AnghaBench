
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_ppe_cb {int dummy; } ;


 int PPEV2_CFG_TSO_EN_REG ;
 int dsaf_set_dev_bit (struct hns_ppe_cb*,int ,int ,int) ;

void hns_ppe_set_tso_enable(struct hns_ppe_cb *ppe_cb, u32 value)
{
 dsaf_set_dev_bit(ppe_cb, PPEV2_CFG_TSO_EN_REG, 0, !!value);
}
