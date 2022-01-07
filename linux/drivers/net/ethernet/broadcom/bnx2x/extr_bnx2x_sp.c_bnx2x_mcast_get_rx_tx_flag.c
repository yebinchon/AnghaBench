
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x_raw_obj {scalar_t__ obj_type; } ;
struct bnx2x_mcast_obj {struct bnx2x_raw_obj raw; } ;


 scalar_t__ BNX2X_OBJ_TYPE_RX ;
 scalar_t__ BNX2X_OBJ_TYPE_RX_TX ;
 scalar_t__ BNX2X_OBJ_TYPE_TX ;
 int ETH_MULTICAST_RULES_CMD_RX_CMD ;
 int ETH_MULTICAST_RULES_CMD_TX_CMD ;

__attribute__((used)) static inline u8 bnx2x_mcast_get_rx_tx_flag(struct bnx2x_mcast_obj *o)
{
 struct bnx2x_raw_obj *raw = &o->raw;
 u8 rx_tx_flag = 0;

 if ((raw->obj_type == BNX2X_OBJ_TYPE_TX) ||
     (raw->obj_type == BNX2X_OBJ_TYPE_RX_TX))
  rx_tx_flag |= ETH_MULTICAST_RULES_CMD_TX_CMD;

 if ((raw->obj_type == BNX2X_OBJ_TYPE_RX) ||
     (raw->obj_type == BNX2X_OBJ_TYPE_RX_TX))
  rx_tx_flag |= ETH_MULTICAST_RULES_CMD_RX_CMD;

 return rx_tx_flag;
}
