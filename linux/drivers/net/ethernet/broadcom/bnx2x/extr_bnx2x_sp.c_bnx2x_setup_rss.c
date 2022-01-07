
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eth_rss_update_ramrod_data {int indirection_table; int rss_engine_id; int rss_result_mask; int capabilities; scalar_t__ rss_key; int rss_mode; int echo; } ;
struct bnx2x_raw_obj {int cid; int state; int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x_rss_config_obj {int ind_table; int engine_id; struct bnx2x_raw_obj raw; } ;
struct bnx2x_config_rss_params {int ind_table; int rss_result_mask; scalar_t__ rss_key; int rss_flags; struct bnx2x_rss_config_obj* rss_obj; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int BNX2X_RSS_IPV4 ;
 int BNX2X_RSS_IPV4_TCP ;
 int BNX2X_RSS_IPV4_UDP ;
 int BNX2X_RSS_IPV4_VXLAN ;
 int BNX2X_RSS_IPV6 ;
 int BNX2X_RSS_IPV6_TCP ;
 int BNX2X_RSS_IPV6_UDP ;
 int BNX2X_RSS_IPV6_VXLAN ;
 int BNX2X_RSS_MODE_DISABLED ;
 int BNX2X_RSS_MODE_REGULAR ;
 int BNX2X_RSS_SET_SRCH ;
 int BNX2X_RSS_TUNN_INNER_HDRS ;
 int BNX2X_SWCID_MASK ;
 int BNX2X_SWCID_SHIFT ;
 int DP (int ,char*,...) ;
 int ETH_CONNECTION_TYPE ;
 int ETH_RSS_MODE_DISABLED ;
 int ETH_RSS_MODE_REGULAR ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY ;
 int RAMROD_CMD_ID_ETH_RSS_UPDATE ;
 int T_ETH_INDIRECTION_TABLE_SIZE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_debug_print_ind_table (struct bnx2x*,struct bnx2x_config_rss_params*) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int,int ,int ,int ) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct eth_rss_update_ramrod_data*,int ,int) ;
 scalar_t__ netif_msg_ifup (struct bnx2x*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_setup_rss(struct bnx2x *bp,
      struct bnx2x_config_rss_params *p)
{
 struct bnx2x_rss_config_obj *o = p->rss_obj;
 struct bnx2x_raw_obj *r = &o->raw;
 struct eth_rss_update_ramrod_data *data =
  (struct eth_rss_update_ramrod_data *)(r->rdata);
 u16 caps = 0;
 u8 rss_mode = 0;
 int rc;

 memset(data, 0, sizeof(*data));

 DP(BNX2X_MSG_SP, "Configuring RSS\n");


 data->echo = cpu_to_le32((r->cid & BNX2X_SWCID_MASK) |
     (r->state << BNX2X_SWCID_SHIFT));


 if (test_bit(BNX2X_RSS_MODE_DISABLED, &p->rss_flags))
  rss_mode = ETH_RSS_MODE_DISABLED;
 else if (test_bit(BNX2X_RSS_MODE_REGULAR, &p->rss_flags))
  rss_mode = ETH_RSS_MODE_REGULAR;

 data->rss_mode = rss_mode;

 DP(BNX2X_MSG_SP, "rss_mode=%d\n", rss_mode);


 if (test_bit(BNX2X_RSS_IPV4, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY;

 if (test_bit(BNX2X_RSS_IPV4_TCP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY;

 if (test_bit(BNX2X_RSS_IPV4_UDP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY;

 if (test_bit(BNX2X_RSS_IPV6, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY;

 if (test_bit(BNX2X_RSS_IPV6_TCP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY;

 if (test_bit(BNX2X_RSS_IPV6_UDP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY;

 if (test_bit(BNX2X_RSS_IPV4_VXLAN, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY;

 if (test_bit(BNX2X_RSS_IPV6_VXLAN, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY;

 if (test_bit(BNX2X_RSS_TUNN_INNER_HDRS, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY;


 if (test_bit(BNX2X_RSS_SET_SRCH, &p->rss_flags)) {
  u8 *dst = (u8 *)(data->rss_key) + sizeof(data->rss_key);
  const u8 *src = (const u8 *)p->rss_key;
  int i;




  for (i = 0; i < sizeof(data->rss_key); i++)
   *--dst = *src++;

  caps |= ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY;
 }

 data->capabilities = cpu_to_le16(caps);


 data->rss_result_mask = p->rss_result_mask;


 data->rss_engine_id = o->engine_id;

 DP(BNX2X_MSG_SP, "rss_engine_id=%d\n", data->rss_engine_id);


 memcpy(data->indirection_table, p->ind_table,
    T_ETH_INDIRECTION_TABLE_SIZE);


 memcpy(o->ind_table, p->ind_table, T_ETH_INDIRECTION_TABLE_SIZE);


 if (netif_msg_ifup(bp))
  bnx2x_debug_print_ind_table(bp, p);
 rc = bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_RSS_UPDATE, r->cid,
      U64_HI(r->rdata_mapping),
      U64_LO(r->rdata_mapping),
      ETH_CONNECTION_TYPE);

 if (rc < 0)
  return rc;

 return 1;
}
