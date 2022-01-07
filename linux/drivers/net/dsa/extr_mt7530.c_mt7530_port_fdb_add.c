
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mt7530_priv {int reg_mutex; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;


 int BIT (int) ;
 int MT7530_FDB_WRITE ;
 int STATIC_ENT ;
 int mt7530_fdb_cmd (struct mt7530_priv*,int ,int *) ;
 int mt7530_fdb_write (struct mt7530_priv*,int ,int ,unsigned char const*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt7530_port_fdb_add(struct dsa_switch *ds, int port,
      const unsigned char *addr, u16 vid)
{
 struct mt7530_priv *priv = ds->priv;
 int ret;
 u8 port_mask = BIT(port);

 mutex_lock(&priv->reg_mutex);
 mt7530_fdb_write(priv, vid, port_mask, addr, -1, STATIC_ENT);
 ret = mt7530_fdb_cmd(priv, MT7530_FDB_WRITE, ((void*)0));
 mutex_unlock(&priv->reg_mutex);

 return ret;
}
