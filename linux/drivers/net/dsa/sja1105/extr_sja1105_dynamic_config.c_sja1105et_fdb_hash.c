
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* tables; } ;
struct sja1105_private {TYPE_2__ static_config; } ;
struct sja1105_l2_lookup_params_entry {int poly; scalar_t__ shared_learn; } ;
struct TYPE_3__ {struct sja1105_l2_lookup_params_entry* entries; } ;


 size_t BLK_IDX_L2_LOOKUP_PARAMS ;
 int ether_addr_to_u64 (int const*) ;
 int sja1105_crc8_add (int,int,int) ;

u8 sja1105et_fdb_hash(struct sja1105_private *priv, const u8 *addr, u16 vid)
{
 struct sja1105_l2_lookup_params_entry *l2_lookup_params =
  priv->static_config.tables[BLK_IDX_L2_LOOKUP_PARAMS].entries;
 u64 poly_koopman = l2_lookup_params->poly;

 u8 poly = (u8)(1 + (poly_koopman << 1));
 u64 vlanid = l2_lookup_params->shared_learn ? 0 : vid;
 u64 input = (vlanid << 48) | ether_addr_to_u64(addr);
 u8 crc = 0;
 int i;


 for (i = 56; i >= 0; i -= 8) {
  u8 byte = (input & (0xffull << i)) >> i;

  crc = sja1105_crc8_add(crc, byte, poly);
 }
 return crc;
}
