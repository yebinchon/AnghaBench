
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct fjes_hw {int max_epid; int my_epid; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
struct TYPE_3__ {int stat_string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;

 TYPE_1__* fjes_gstrings_stats ;
 int memcpy (int *,int ,int ) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;
 int sprintf (int *,char*,int) ;

__attribute__((used)) static void fjes_get_strings(struct net_device *netdev,
        u32 stringset, u8 *data)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 struct fjes_hw *hw = &adapter->hw;
 u8 *p = data;
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(fjes_gstrings_stats); i++) {
   memcpy(p, fjes_gstrings_stats[i].stat_string,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  for (i = 0; i < hw->max_epid; i++) {
   if (i == hw->my_epid)
    continue;
   sprintf(p, "ep%u_com_regist_buf_exec", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_com_unregist_buf_exec", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_send_intr_rx", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_send_intr_unshare", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_send_intr_zoneupdate", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_recv_intr_rx", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_recv_intr_unshare", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_recv_intr_stop", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_recv_intr_zoneupdate", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_tx_buffer_full", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_tx_dropped_not_shared", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_tx_dropped_ver_mismatch", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_tx_dropped_buf_size_mismatch", i);
   p += ETH_GSTRING_LEN;
   sprintf(p, "ep%u_tx_dropped_vlanid_mismatch", i);
   p += ETH_GSTRING_LEN;
  }
  break;
 }
}
