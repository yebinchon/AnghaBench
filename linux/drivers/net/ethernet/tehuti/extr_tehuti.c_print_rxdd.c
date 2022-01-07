
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rxd_desc {int va_hi; int va_lo; } ;


 int DBG (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int GET_RXD_BC (int ) ;
 int GET_RXD_CFI (int ) ;
 int GET_RXD_ERR (int ) ;
 int GET_RXD_PKT_ID (int ) ;
 int GET_RXD_PRIO (int ) ;
 int GET_RXD_RXFQ (int ) ;
 int GET_RXD_RXP (int ) ;
 int GET_RXD_TO (int ) ;
 int GET_RXD_TYPE (int ) ;
 int GET_RXD_VLAN_ID (int ) ;
 int GET_RXD_VTAG (int ) ;

__attribute__((used)) static void print_rxdd(struct rxd_desc *rxdd, u32 rxd_val1, u16 len,
         u16 rxd_vlan)
{
 DBG("ERROR: rxdd bc %d rxfq %d to %d type %d err %d rxp %d pkt_id %d vtag %d len %d vlan_id %d cfi %d prio %d va_lo %d va_hi %d\n",
     GET_RXD_BC(rxd_val1), GET_RXD_RXFQ(rxd_val1), GET_RXD_TO(rxd_val1),
     GET_RXD_TYPE(rxd_val1), GET_RXD_ERR(rxd_val1),
     GET_RXD_RXP(rxd_val1), GET_RXD_PKT_ID(rxd_val1),
     GET_RXD_VTAG(rxd_val1), len, GET_RXD_VLAN_ID(rxd_vlan),
     GET_RXD_CFI(rxd_vlan), GET_RXD_PRIO(rxd_vlan), rxdd->va_lo,
     rxdd->va_hi);
}
