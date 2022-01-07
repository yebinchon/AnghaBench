
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef scalar_t__ u32 ;
struct hnae3_handle {int flags; } ;


 int ARRAY_SIZE (int ) ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 scalar_t__ ETH_SS_TEST ;
 size_t HNAE3_LOOP_APP ;
 size_t HNAE3_LOOP_PARALLEL_SERDES ;
 size_t HNAE3_LOOP_PHY ;
 size_t HNAE3_LOOP_SERIAL_SERDES ;
 int HNAE3_SUPPORT_APP_LOOPBACK ;
 int HNAE3_SUPPORT_PHY_LOOPBACK ;
 int HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK ;
 int HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK ;
 int g_mac_stats_string ;
 char* hclge_comm_get_strings (scalar_t__,int ,int,char*) ;
 char* hclge_tqps_get_strings (struct hnae3_handle*,char*) ;
 int * hns3_nic_test_strs ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static void hclge_get_strings(struct hnae3_handle *handle, u32 stringset,
         u8 *data)
{
 u8 *p = (char *)data;
 int size;

 if (stringset == ETH_SS_STATS) {
  size = ARRAY_SIZE(g_mac_stats_string);
  p = hclge_comm_get_strings(stringset, g_mac_stats_string,
        size, p);
  p = hclge_tqps_get_strings(handle, p);
 } else if (stringset == ETH_SS_TEST) {
  if (handle->flags & HNAE3_SUPPORT_APP_LOOPBACK) {
   memcpy(p, hns3_nic_test_strs[HNAE3_LOOP_APP],
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  if (handle->flags & HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK) {
   memcpy(p, hns3_nic_test_strs[HNAE3_LOOP_SERIAL_SERDES],
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  if (handle->flags & HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK) {
   memcpy(p,
          hns3_nic_test_strs[HNAE3_LOOP_PARALLEL_SERDES],
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  if (handle->flags & HNAE3_SUPPORT_PHY_LOOPBACK) {
   memcpy(p, hns3_nic_test_strs[HNAE3_LOOP_PHY],
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
 }
}
