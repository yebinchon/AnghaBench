
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ef4_farch_filter_spec {int flags; int dmaq_id; int* data; int type; } ;
typedef int ef4_oword_t ;


 int BUG () ;
 int EF4_DWORD_0 ;
 int EF4_DWORD_1 ;
 int EF4_DWORD_2 ;
 int EF4_FARCH_FILTER_MAC_WILD ;



 int EF4_FARCH_FILTER_UDP_FULL ;
 int EF4_FARCH_FILTER_UDP_WILD ;
 int EF4_FILTER_FLAG_RX_RSS ;
 int EF4_FILTER_FLAG_RX_SCATTER ;
 int EF4_POPULATE_OWORD_5 (int ,int ,int,int ,int,int ,int,int ,int,int ,int) ;
 int EF4_POPULATE_OWORD_7 (int ,int ,int,int ,int,int ,int,int ,int,int ,int,int ,int,int ,int) ;
 int FRF_BZ_RSS_EN ;
 int FRF_BZ_RXQ_ID ;
 int FRF_BZ_SCATTER_EN ;
 int FRF_BZ_TCP_UDP ;
 int FRF_CZ_RMFT_DEST_MAC_HI ;
 int FRF_CZ_RMFT_DEST_MAC_LO ;
 int FRF_CZ_RMFT_RSS_EN ;
 int FRF_CZ_RMFT_RXQ_ID ;
 int FRF_CZ_RMFT_SCATTER_EN ;
 int FRF_CZ_RMFT_VLAN_ID ;
 int FRF_CZ_RMFT_WILDCARD_MATCH ;
 int FRF_CZ_TMFT_SRC_MAC_HI ;
 int FRF_CZ_TMFT_SRC_MAC_LO ;
 int FRF_CZ_TMFT_TXQ_ID ;
 int FRF_CZ_TMFT_VLAN_ID ;
 int FRF_CZ_TMFT_WILDCARD_MATCH ;
 int ef4_farch_filter_spec_table_id (struct ef4_farch_filter_spec*) ;

__attribute__((used)) static u32 ef4_farch_filter_build(ef4_oword_t *filter,
      struct ef4_farch_filter_spec *spec)
{
 u32 data3;

 switch (ef4_farch_filter_spec_table_id(spec)) {
 case 130: {
  bool is_udp = (spec->type == EF4_FARCH_FILTER_UDP_FULL ||
          spec->type == EF4_FARCH_FILTER_UDP_WILD);
  EF4_POPULATE_OWORD_7(
   *filter,
   FRF_BZ_RSS_EN,
   !!(spec->flags & EF4_FILTER_FLAG_RX_RSS),
   FRF_BZ_SCATTER_EN,
   !!(spec->flags & EF4_FILTER_FLAG_RX_SCATTER),
   FRF_BZ_TCP_UDP, is_udp,
   FRF_BZ_RXQ_ID, spec->dmaq_id,
   EF4_DWORD_2, spec->data[2],
   EF4_DWORD_1, spec->data[1],
   EF4_DWORD_0, spec->data[0]);
  data3 = is_udp;
  break;
 }

 case 129: {
  bool is_wild = spec->type == EF4_FARCH_FILTER_MAC_WILD;
  EF4_POPULATE_OWORD_7(
   *filter,
   FRF_CZ_RMFT_RSS_EN,
   !!(spec->flags & EF4_FILTER_FLAG_RX_RSS),
   FRF_CZ_RMFT_SCATTER_EN,
   !!(spec->flags & EF4_FILTER_FLAG_RX_SCATTER),
   FRF_CZ_RMFT_RXQ_ID, spec->dmaq_id,
   FRF_CZ_RMFT_WILDCARD_MATCH, is_wild,
   FRF_CZ_RMFT_DEST_MAC_HI, spec->data[2],
   FRF_CZ_RMFT_DEST_MAC_LO, spec->data[1],
   FRF_CZ_RMFT_VLAN_ID, spec->data[0]);
  data3 = is_wild;
  break;
 }

 case 128: {
  bool is_wild = spec->type == EF4_FARCH_FILTER_MAC_WILD;
  EF4_POPULATE_OWORD_5(*filter,
         FRF_CZ_TMFT_TXQ_ID, spec->dmaq_id,
         FRF_CZ_TMFT_WILDCARD_MATCH, is_wild,
         FRF_CZ_TMFT_SRC_MAC_HI, spec->data[2],
         FRF_CZ_TMFT_SRC_MAC_LO, spec->data[1],
         FRF_CZ_TMFT_VLAN_ID, spec->data[0]);
  data3 = is_wild | spec->dmaq_id << 1;
  break;
 }

 default:
  BUG();
 }

 return spec->data[0] ^ spec->data[1] ^ spec->data[2] ^ data3;
}
