
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sja1105_private {TYPE_1__* info; } ;
struct dsa_switch {int * ports; struct sja1105_private* priv; } ;
struct TYPE_2__ {int (* fdb_del_cmd ) (struct dsa_switch*,int,unsigned char const*,int ) ;} ;


 int dsa_port_is_vlan_filtering (int *) ;
 int stub1 (struct dsa_switch*,int,unsigned char const*,int ) ;

__attribute__((used)) static int sja1105_fdb_del(struct dsa_switch *ds, int port,
      const unsigned char *addr, u16 vid)
{
 struct sja1105_private *priv = ds->priv;

 if (!dsa_port_is_vlan_filtering(&ds->ports[port]))
  vid = 0;

 return priv->info->fdb_del_cmd(ds, port, addr, vid);
}
