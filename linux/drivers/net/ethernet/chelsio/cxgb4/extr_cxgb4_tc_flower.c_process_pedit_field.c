
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ch_filter_specification {int newdmac; int newsmac; void* nat_mode; } ;


 int ETH_DMAC_31_0 ;
 int ETH_DMAC_47_32 ;
 int ETH_SMAC_15_0 ;
 int ETH_SMAC_47_16 ;





 int IP4_DST ;
 int IP4_SRC ;
 int IP6_DST_127_96 ;
 int IP6_DST_31_0 ;
 int IP6_DST_63_32 ;
 int IP6_DST_95_64 ;
 int IP6_SRC_127_96 ;
 int IP6_SRC_31_0 ;
 int IP6_SRC_63_32 ;
 int IP6_SRC_95_64 ;
 void* NAT_MODE_ALL ;


 int PEDIT_ETH_DMAC_MASK ;
 int PEDIT_TCP_UDP_SPORT_MASK ;

 int TCP_DPORT ;
 int TCP_SPORT ;
 int UDP_DPORT ;
 int UDP_SPORT ;
 int cpu_to_be32 (int) ;
 int offload_pedit (struct ch_filter_specification*,int,int,int ) ;

__attribute__((used)) static void process_pedit_field(struct ch_filter_specification *fs, u32 val,
    u32 mask, u32 offset, u8 htype)
{
 switch (htype) {
 case 147:
  switch (offset) {
  case 142:
   fs->newdmac = 1;
   offload_pedit(fs, val, mask, ETH_DMAC_31_0);
   break;
  case 141:
   if (~mask & PEDIT_ETH_DMAC_MASK)
    offload_pedit(fs, val, mask, ETH_DMAC_47_32);
   else
    offload_pedit(fs, val >> 16, mask >> 16,
           ETH_SMAC_15_0);
   break;
  case 140:
   fs->newsmac = 1;
   offload_pedit(fs, val, mask, ETH_SMAC_47_16);
  }
  break;
 case 146:
  switch (offset) {
  case 138:
   offload_pedit(fs, val, mask, IP4_SRC);
   break;
  case 139:
   offload_pedit(fs, val, mask, IP4_DST);
  }
  fs->nat_mode = NAT_MODE_ALL;
  break;
 case 145:
  switch (offset) {
  case 132:
   offload_pedit(fs, val, mask, IP6_SRC_31_0);
   break;
  case 131:
   offload_pedit(fs, val, mask, IP6_SRC_63_32);
   break;
  case 130:
   offload_pedit(fs, val, mask, IP6_SRC_95_64);
   break;
  case 133:
   offload_pedit(fs, val, mask, IP6_SRC_127_96);
   break;
  case 136:
   offload_pedit(fs, val, mask, IP6_DST_31_0);
   break;
  case 135:
   offload_pedit(fs, val, mask, IP6_DST_63_32);
   break;
  case 134:
   offload_pedit(fs, val, mask, IP6_DST_95_64);
   break;
  case 137:
   offload_pedit(fs, val, mask, IP6_DST_127_96);
  }
  fs->nat_mode = NAT_MODE_ALL;
  break;
 case 144:
  switch (offset) {
  case 129:
   if (~mask & PEDIT_TCP_UDP_SPORT_MASK)
    offload_pedit(fs, cpu_to_be32(val) >> 16,
           cpu_to_be32(mask) >> 16,
           TCP_SPORT);
   else
    offload_pedit(fs, cpu_to_be32(val),
           cpu_to_be32(mask), TCP_DPORT);
  }
  fs->nat_mode = NAT_MODE_ALL;
  break;
 case 143:
  switch (offset) {
  case 128:
   if (~mask & PEDIT_TCP_UDP_SPORT_MASK)
    offload_pedit(fs, cpu_to_be32(val) >> 16,
           cpu_to_be32(mask) >> 16,
           UDP_SPORT);
   else
    offload_pedit(fs, cpu_to_be32(val),
           cpu_to_be32(mask), UDP_DPORT);
  }
  fs->nat_mode = NAT_MODE_ALL;
 }
}
