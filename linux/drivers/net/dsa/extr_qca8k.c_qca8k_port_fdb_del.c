
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qca8k_priv {int dummy; } ;
struct dsa_switch {scalar_t__ priv; } ;


 int BIT (int) ;
 int qca8k_fdb_del (struct qca8k_priv*,unsigned char const*,int,int) ;

__attribute__((used)) static int
qca8k_port_fdb_del(struct dsa_switch *ds, int port,
     const unsigned char *addr, u16 vid)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
 u16 port_mask = BIT(port);

 if (!vid)
  vid = 1;

 return qca8k_fdb_del(priv, addr, port_mask, vid);
}
