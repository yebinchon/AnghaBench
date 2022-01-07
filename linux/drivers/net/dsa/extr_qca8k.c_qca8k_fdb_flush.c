
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca8k_priv {int reg_mutex; } ;


 int QCA8K_FDB_FLUSH ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qca8k_fdb_access (struct qca8k_priv*,int ,int) ;

__attribute__((used)) static void
qca8k_fdb_flush(struct qca8k_priv *priv)
{
 mutex_lock(&priv->reg_mutex);
 qca8k_fdb_access(priv, QCA8K_FDB_FLUSH, -1);
 mutex_unlock(&priv->reg_mutex);
}
