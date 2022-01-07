
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qca8k_priv {int reg_mutex; } ;


 int QCA8K_FDB_LOAD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qca8k_fdb_access (struct qca8k_priv*,int ,int) ;
 int qca8k_fdb_write (struct qca8k_priv*,int ,int ,int const*,int ) ;

__attribute__((used)) static int
qca8k_fdb_add(struct qca8k_priv *priv, const u8 *mac, u16 port_mask,
       u16 vid, u8 aging)
{
 int ret;

 mutex_lock(&priv->reg_mutex);
 qca8k_fdb_write(priv, vid, port_mask, mac, aging);
 ret = qca8k_fdb_access(priv, QCA8K_FDB_LOAD, -1);
 mutex_unlock(&priv->reg_mutex);

 return ret;
}
