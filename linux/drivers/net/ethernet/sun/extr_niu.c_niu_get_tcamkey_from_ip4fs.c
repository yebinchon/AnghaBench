
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct niu_tcam_entry {int* key; int* key_mask; } ;
struct TYPE_15__ {scalar_t__ proto; int l4_4_bytes; } ;
struct TYPE_11__ {int spi; } ;
struct TYPE_9__ {int pdst; int psrc; scalar_t__ tos; int ip4dst; int ip4src; } ;
struct TYPE_16__ {TYPE_7__ usr_ip4_spec; TYPE_3__ ah_ip4_spec; TYPE_1__ tcp_ip4_spec; } ;
struct TYPE_13__ {int l4_4_bytes; } ;
struct TYPE_12__ {int spi; } ;
struct TYPE_10__ {int pdst; int psrc; scalar_t__ tos; int ip4dst; int ip4src; } ;
struct TYPE_14__ {TYPE_5__ usr_ip4_spec; TYPE_4__ ah_ip4_spec; TYPE_2__ tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {int flow_type; TYPE_8__ h_u; TYPE_6__ m_u; } ;






 int TCAM_V4KEY0_CLASS_CODE ;
 int TCAM_V4KEY0_CLASS_CODE_SHIFT ;
 int TCAM_V4KEY1_L2RDCNUM ;
 int TCAM_V4KEY1_L2RDCNUM_SHIFT ;
 int TCAM_V4KEY2_PROTO ;
 int TCAM_V4KEY2_PROTO_SHIFT ;
 int TCAM_V4KEY2_TOS_SHIFT ;
 int TCAM_V4KEY3_SADDR_SHIFT ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int niu_ethflow_to_l3proto (int,scalar_t__*) ;

__attribute__((used)) static void niu_get_tcamkey_from_ip4fs(struct ethtool_rx_flow_spec *fsp,
           struct niu_tcam_entry *tp,
           int l2_rdc_tab, u64 class)
{
 u8 pid = 0;
 u32 sip, dip, sipm, dipm, spi, spim;
 u16 sport, dport, spm, dpm;

 sip = be32_to_cpu(fsp->h_u.tcp_ip4_spec.ip4src);
 sipm = be32_to_cpu(fsp->m_u.tcp_ip4_spec.ip4src);
 dip = be32_to_cpu(fsp->h_u.tcp_ip4_spec.ip4dst);
 dipm = be32_to_cpu(fsp->m_u.tcp_ip4_spec.ip4dst);

 tp->key[0] = class << TCAM_V4KEY0_CLASS_CODE_SHIFT;
 tp->key_mask[0] = TCAM_V4KEY0_CLASS_CODE;
 tp->key[1] = (u64)l2_rdc_tab << TCAM_V4KEY1_L2RDCNUM_SHIFT;
 tp->key_mask[1] = TCAM_V4KEY1_L2RDCNUM;

 tp->key[3] = (u64)sip << TCAM_V4KEY3_SADDR_SHIFT;
 tp->key[3] |= dip;

 tp->key_mask[3] = (u64)sipm << TCAM_V4KEY3_SADDR_SHIFT;
 tp->key_mask[3] |= dipm;

 tp->key[2] |= ((u64)fsp->h_u.tcp_ip4_spec.tos <<
         TCAM_V4KEY2_TOS_SHIFT);
 tp->key_mask[2] |= ((u64)fsp->m_u.tcp_ip4_spec.tos <<
       TCAM_V4KEY2_TOS_SHIFT);
 switch (fsp->flow_type) {
 case 129:
 case 128:
 case 130:
  sport = be16_to_cpu(fsp->h_u.tcp_ip4_spec.psrc);
  spm = be16_to_cpu(fsp->m_u.tcp_ip4_spec.psrc);
  dport = be16_to_cpu(fsp->h_u.tcp_ip4_spec.pdst);
  dpm = be16_to_cpu(fsp->m_u.tcp_ip4_spec.pdst);

  tp->key[2] |= (((u64)sport << 16) | dport);
  tp->key_mask[2] |= (((u64)spm << 16) | dpm);
  niu_ethflow_to_l3proto(fsp->flow_type, &pid);
  break;
 case 133:
 case 132:
  spi = be32_to_cpu(fsp->h_u.ah_ip4_spec.spi);
  spim = be32_to_cpu(fsp->m_u.ah_ip4_spec.spi);

  tp->key[2] |= spi;
  tp->key_mask[2] |= spim;
  niu_ethflow_to_l3proto(fsp->flow_type, &pid);
  break;
 case 131:
  spi = be32_to_cpu(fsp->h_u.usr_ip4_spec.l4_4_bytes);
  spim = be32_to_cpu(fsp->m_u.usr_ip4_spec.l4_4_bytes);

  tp->key[2] |= spi;
  tp->key_mask[2] |= spim;
  pid = fsp->h_u.usr_ip4_spec.proto;
  break;
 default:
  break;
 }

 tp->key[2] |= ((u64)pid << TCAM_V4KEY2_PROTO_SHIFT);
 if (pid) {
  tp->key_mask[2] |= TCAM_V4KEY2_PROTO;
 }
}
