
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int flags; int match_flags; int* loc_mac; void* outer_vid; void* rem_port; void* loc_port; int ip_proto; void** rem_host; void** loc_host; void* ether_type; int dmaq_id; int priority; } ;
struct efx_farch_filter_spec {int flags; int type; int* data; int dmaq_id; int priority; } ;
typedef void* __be32 ;
typedef void* __be16 ;
 int EFX_FILTER_FLAG_TX ;
 int EFX_FILTER_MATCH_ETHER_TYPE ;
 int EFX_FILTER_MATCH_IP_PROTO ;
 int EFX_FILTER_MATCH_LOC_HOST ;
 int EFX_FILTER_MATCH_LOC_MAC ;
 int EFX_FILTER_MATCH_LOC_MAC_IG ;
 int EFX_FILTER_MATCH_LOC_PORT ;
 int EFX_FILTER_MATCH_OUTER_VID ;
 int EFX_FILTER_MATCH_REM_HOST ;
 int EFX_FILTER_MATCH_REM_PORT ;
 int ETH_P_IP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int WARN_ON (int) ;
 void* htonl (int) ;
 void* htons (int) ;
 int memset (struct efx_filter_spec*,int ,int) ;

__attribute__((used)) static void
efx_farch_filter_to_gen_spec(struct efx_filter_spec *gen_spec,
        const struct efx_farch_filter_spec *spec)
{
 bool is_full = 0;





 memset(gen_spec, 0, sizeof(*gen_spec));

 gen_spec->priority = spec->priority;
 gen_spec->flags = spec->flags;
 gen_spec->dmaq_id = spec->dmaq_id;

 switch (spec->type) {
 case 132:
 case 129:
  is_full = 1;

 case 131:
 case 128: {
  __be32 host1, host2;
  __be16 port1, port2;

  gen_spec->match_flags =
   EFX_FILTER_MATCH_ETHER_TYPE |
   EFX_FILTER_MATCH_IP_PROTO |
   EFX_FILTER_MATCH_LOC_HOST | EFX_FILTER_MATCH_LOC_PORT;
  if (is_full)
   gen_spec->match_flags |= (EFX_FILTER_MATCH_REM_HOST |
        EFX_FILTER_MATCH_REM_PORT);
  gen_spec->ether_type = htons(ETH_P_IP);
  gen_spec->ip_proto =
   (spec->type == 132 ||
    spec->type == 131) ?
   IPPROTO_TCP : IPPROTO_UDP;

  host1 = htonl(spec->data[0] >> 16 | spec->data[1] << 16);
  port1 = htons(spec->data[0]);
  host2 = htonl(spec->data[2]);
  port2 = htons(spec->data[1] >> 16);
  if (spec->flags & EFX_FILTER_FLAG_TX) {
   gen_spec->loc_host[0] = host1;
   gen_spec->rem_host[0] = host2;
  } else {
   gen_spec->loc_host[0] = host2;
   gen_spec->rem_host[0] = host1;
  }
  if (!!(gen_spec->flags & EFX_FILTER_FLAG_TX) ^
      (!is_full && gen_spec->ip_proto == IPPROTO_UDP)) {
   gen_spec->loc_port = port1;
   gen_spec->rem_port = port2;
  } else {
   gen_spec->loc_port = port2;
   gen_spec->rem_port = port1;
  }

  break;
 }

 case 135:
  is_full = 1;

 case 134:
  gen_spec->match_flags = EFX_FILTER_MATCH_LOC_MAC;
  if (is_full)
   gen_spec->match_flags |= EFX_FILTER_MATCH_OUTER_VID;
  gen_spec->loc_mac[0] = spec->data[2] >> 8;
  gen_spec->loc_mac[1] = spec->data[2];
  gen_spec->loc_mac[2] = spec->data[1] >> 24;
  gen_spec->loc_mac[3] = spec->data[1] >> 16;
  gen_spec->loc_mac[4] = spec->data[1] >> 8;
  gen_spec->loc_mac[5] = spec->data[1];
  gen_spec->outer_vid = htons(spec->data[0]);
  break;

 case 130:
 case 133:
  gen_spec->match_flags = EFX_FILTER_MATCH_LOC_MAC_IG;
  gen_spec->loc_mac[0] = spec->type == 133;
  break;

 default:
  WARN_ON(1);
  break;
 }
}
