
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_ppe_cb {int dummy; } ;


 int HNS_PPEV2_RSS_KEY_NUM ;
 scalar_t__ PPEV2_RSS_KEY_REG ;
 int dsaf_write_dev (struct hns_ppe_cb*,scalar_t__,int const) ;

void hns_ppe_set_rss_key(struct hns_ppe_cb *ppe_cb,
    const u32 rss_key[HNS_PPEV2_RSS_KEY_NUM])
{
 u32 key_item;

 for (key_item = 0; key_item < HNS_PPEV2_RSS_KEY_NUM; key_item++)
  dsaf_write_dev(ppe_cb, PPEV2_RSS_KEY_REG + key_item * 0x4,
          rss_key[key_item]);
}
