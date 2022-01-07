
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int port_id; } ;
struct TYPE_4__ {TYPE_1__ port_info; } ;
struct metadata_dst {scalar_t__ type; TYPE_2__ u; } ;


 scalar_t__ METADATA_HW_PORT_MUX ;
 struct metadata_dst* skb_metadata_dst (struct sk_buff*) ;

__attribute__((used)) static u16 bnxt_xmit_get_cfa_action(struct sk_buff *skb)
{
 struct metadata_dst *md_dst = skb_metadata_dst(skb);

 if (!md_dst || md_dst->type != METADATA_HW_PORT_MUX)
  return 0;

 return md_dst->u.port_info.port_id;
}
