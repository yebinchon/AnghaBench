
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;


 int lan743x_priv_flags_strings ;
 int lan743x_set0_hw_cnt_strings ;
 int lan743x_set1_sw_cnt_strings ;
 int lan743x_set2_hw_cnt_strings ;

__attribute__((used)) static int lan743x_ethtool_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
 {
  int ret;

  ret = ARRAY_SIZE(lan743x_set0_hw_cnt_strings);
  ret += ARRAY_SIZE(lan743x_set1_sw_cnt_strings);
  ret += ARRAY_SIZE(lan743x_set2_hw_cnt_strings);
  return ret;
 }
 case 129:
  return ARRAY_SIZE(lan743x_priv_flags_strings);
 default:
  return -EOPNOTSUPP;
 }
}
