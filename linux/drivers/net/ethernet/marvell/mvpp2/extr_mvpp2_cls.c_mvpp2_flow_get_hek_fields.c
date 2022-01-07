
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mvpp2_cls_flow_entry {int dummy; } ;
 int MVPP22_CLS_HEK_OPT_IP4DA ;
 int MVPP22_CLS_HEK_OPT_IP4SA ;
 int MVPP22_CLS_HEK_OPT_IP6DA ;
 int MVPP22_CLS_HEK_OPT_IP6SA ;
 int MVPP22_CLS_HEK_OPT_L3_PROTO ;
 int MVPP22_CLS_HEK_OPT_L4DIP ;
 int MVPP22_CLS_HEK_OPT_L4SIP ;
 int MVPP22_CLS_HEK_OPT_MAC_DA ;
 int MVPP22_CLS_HEK_OPT_VLAN ;
 int MVPP22_CLS_HEK_OPT_VLAN_PRI ;
 int mvpp2_cls_flow_hek_get (struct mvpp2_cls_flow_entry*,int) ;
 int mvpp2_cls_flow_hek_num_get (struct mvpp2_cls_flow_entry*) ;

u16 mvpp2_flow_get_hek_fields(struct mvpp2_cls_flow_entry *fe)
{
 u16 hash_opts = 0;
 int n_fields, i, field;

 n_fields = mvpp2_cls_flow_hek_num_get(fe);

 for (i = 0; i < n_fields; i++) {
  field = mvpp2_cls_flow_hek_get(fe, i);

  switch (field) {
  case 130:
   hash_opts |= MVPP22_CLS_HEK_OPT_MAC_DA;
   break;
  case 129:
   hash_opts |= MVPP22_CLS_HEK_OPT_VLAN;
   break;
  case 128:
   hash_opts |= MVPP22_CLS_HEK_OPT_VLAN_PRI;
   break;
  case 133:
   hash_opts |= MVPP22_CLS_HEK_OPT_L3_PROTO;
   break;
  case 136:
   hash_opts |= MVPP22_CLS_HEK_OPT_IP4SA;
   break;
  case 137:
   hash_opts |= MVPP22_CLS_HEK_OPT_IP4DA;
   break;
  case 134:
   hash_opts |= MVPP22_CLS_HEK_OPT_IP6SA;
   break;
  case 135:
   hash_opts |= MVPP22_CLS_HEK_OPT_IP6DA;
   break;
  case 131:
   hash_opts |= MVPP22_CLS_HEK_OPT_L4SIP;
   break;
  case 132:
   hash_opts |= MVPP22_CLS_HEK_OPT_L4DIP;
   break;
  default:
   break;
  }
 }
 return hash_opts;
}
