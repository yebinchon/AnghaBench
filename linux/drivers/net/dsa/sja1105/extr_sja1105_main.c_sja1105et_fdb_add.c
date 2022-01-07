
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sja1105_private {int dummy; } ;
struct sja1105_l2_lookup_entry {int destports; int index; int vlanid; int macaddr; int member_0; } ;
struct dsa_switch {struct device* dev; struct sja1105_private* priv; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int BLK_IDX_L2_LOOKUP ;
 int SJA1105ET_FDB_BIN_SIZE ;
 int dev_warn (struct device*,char*,int,unsigned char const*,int) ;
 int ether_addr_to_u64 (unsigned char const*) ;
 int get_random_bytes (int*,int) ;
 int sja1105_dynamic_config_write (struct sja1105_private*,int ,int,struct sja1105_l2_lookup_entry*,int) ;
 int sja1105_static_fdb_change (struct sja1105_private*,int,struct sja1105_l2_lookup_entry*,int) ;
 int sja1105et_fdb_hash (struct sja1105_private*,unsigned char const*,int ) ;
 void* sja1105et_fdb_index (int,int) ;
 int sja1105et_is_fdb_entry_in_bin (struct sja1105_private*,int,unsigned char const*,int ,struct sja1105_l2_lookup_entry*,int*) ;

int sja1105et_fdb_add(struct dsa_switch *ds, int port,
        const unsigned char *addr, u16 vid)
{
 struct sja1105_l2_lookup_entry l2_lookup = {0};
 struct sja1105_private *priv = ds->priv;
 struct device *dev = ds->dev;
 int last_unused = -1;
 int bin, way, rc;

 bin = sja1105et_fdb_hash(priv, addr, vid);

 way = sja1105et_is_fdb_entry_in_bin(priv, bin, addr, vid,
         &l2_lookup, &last_unused);
 if (way >= 0) {




  if (l2_lookup.destports & BIT(port))
   return 0;
  l2_lookup.destports |= BIT(port);
 } else {
  int index = sja1105et_fdb_index(bin, way);




  l2_lookup.macaddr = ether_addr_to_u64(addr);
  l2_lookup.destports = BIT(port);
  l2_lookup.vlanid = vid;

  if (last_unused >= 0) {
   way = last_unused;
  } else {






   get_random_bytes(&way, sizeof(u8));
   way %= SJA1105ET_FDB_BIN_SIZE;
   dev_warn(dev, "Warning, FDB bin %d full while adding entry for %pM. Evicting entry %u.\n",
     bin, addr, way);

   sja1105_dynamic_config_write(priv, BLK_IDX_L2_LOOKUP,
           index, ((void*)0), 0);
  }
 }
 l2_lookup.index = sja1105et_fdb_index(bin, way);

 rc = sja1105_dynamic_config_write(priv, BLK_IDX_L2_LOOKUP,
       l2_lookup.index, &l2_lookup,
       1);
 if (rc < 0)
  return rc;

 return sja1105_static_fdb_change(priv, port, &l2_lookup, 1);
}
