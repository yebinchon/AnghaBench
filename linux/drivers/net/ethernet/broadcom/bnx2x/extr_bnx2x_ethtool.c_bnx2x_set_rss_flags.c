
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethtool_rxnfc {int flow_type; int data; } ;
struct TYPE_2__ {int udp_rss_v4; int udp_rss_v6; } ;
struct bnx2x {TYPE_1__ rss_conf_obj; int state; } ;






 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_STATE_OPEN ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 int EINVAL ;






 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int bnx2x_rss (struct bnx2x*,TYPE_1__*,int,int) ;

__attribute__((used)) static int bnx2x_set_rss_flags(struct bnx2x *bp, struct ethtool_rxnfc *info)
{
 int udp_rss_requested;

 DP(BNX2X_MSG_ETHTOOL,
    "Set rss flags command parameters: flow type = %d, data = %llu\n",
    info->flow_type, info->data);

 switch (info->flow_type) {
 case 131:
 case 130:

  if (info->data ^ (RXH_IP_SRC | RXH_IP_DST |
      RXH_L4_B_0_1 | RXH_L4_B_2_3)) {
   DP(BNX2X_MSG_ETHTOOL,
      "Command parameters not supported\n");
   return -EINVAL;
  }
  return 0;

 case 129:
 case 128:

  if (info->data == (RXH_IP_SRC | RXH_IP_DST |
       RXH_L4_B_0_1 | RXH_L4_B_2_3))
   udp_rss_requested = 1;
  else if (info->data == (RXH_IP_SRC | RXH_IP_DST))
   udp_rss_requested = 0;
  else
   return -EINVAL;

  if (CHIP_IS_E1x(bp) && udp_rss_requested) {
   DP(BNX2X_MSG_ETHTOOL,
      "57710, 57711 boards don't support RSS according to UDP 4-tuple\n");
   return -EINVAL;
  }

  if ((info->flow_type == 129) &&
      (bp->rss_conf_obj.udp_rss_v4 != udp_rss_requested)) {
   bp->rss_conf_obj.udp_rss_v4 = udp_rss_requested;
   DP(BNX2X_MSG_ETHTOOL,
      "rss re-configured, UDP 4-tupple %s\n",
      udp_rss_requested ? "enabled" : "disabled");
   if (bp->state == BNX2X_STATE_OPEN)
    return bnx2x_rss(bp, &bp->rss_conf_obj, 0,
       1);
  } else if ((info->flow_type == 128) &&
      (bp->rss_conf_obj.udp_rss_v6 != udp_rss_requested)) {
   bp->rss_conf_obj.udp_rss_v6 = udp_rss_requested;
   DP(BNX2X_MSG_ETHTOOL,
      "rss re-configured, UDP 4-tupple %s\n",
      udp_rss_requested ? "enabled" : "disabled");
   if (bp->state == BNX2X_STATE_OPEN)
    return bnx2x_rss(bp, &bp->rss_conf_obj, 0,
       1);
  }
  return 0;

 case 136:
 case 135:

  if (info->data ^ (RXH_IP_SRC | RXH_IP_DST)) {
   DP(BNX2X_MSG_ETHTOOL,
      "Command parameters not supported\n");
   return -EINVAL;
  }
  return 0;

 case 133:
 case 143:
 case 141:
 case 139:
 case 132:
 case 142:
 case 140:
 case 138:
 case 134:
 case 137:

  if (info->data) {
   DP(BNX2X_MSG_ETHTOOL,
      "Command parameters not supported\n");
   return -EINVAL;
  }
  return 0;

 default:
  return -EINVAL;
 }
}
