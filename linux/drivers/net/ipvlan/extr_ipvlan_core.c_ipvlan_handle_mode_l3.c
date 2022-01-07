
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipvl_port {int dummy; } ;
struct ipvl_addr {int dummy; } ;
typedef int rx_handler_result_t ;


 int RX_HANDLER_PASS ;
 struct ipvl_addr* ipvlan_addr_lookup (struct ipvl_port*,void*,int,int) ;
 void* ipvlan_get_L3_hdr (struct ipvl_port*,struct sk_buff*,int*) ;
 int ipvlan_rcv_frame (struct ipvl_addr*,struct sk_buff**,int) ;

__attribute__((used)) static rx_handler_result_t ipvlan_handle_mode_l3(struct sk_buff **pskb,
       struct ipvl_port *port)
{
 void *lyr3h;
 int addr_type;
 struct ipvl_addr *addr;
 struct sk_buff *skb = *pskb;
 rx_handler_result_t ret = RX_HANDLER_PASS;

 lyr3h = ipvlan_get_L3_hdr(port, skb, &addr_type);
 if (!lyr3h)
  goto out;

 addr = ipvlan_addr_lookup(port, lyr3h, addr_type, 1);
 if (addr)
  ret = ipvlan_rcv_frame(addr, pskb, 0);

out:
 return ret;
}
