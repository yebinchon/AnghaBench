
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca8k_priv {int dummy; } ;
struct qca8k_fdb {int aging; int mac; int port_mask; int vid; } ;


 int QCA8K_FDB_NEXT ;
 int qca8k_fdb_access (struct qca8k_priv*,int ,int) ;
 int qca8k_fdb_read (struct qca8k_priv*,struct qca8k_fdb*) ;
 int qca8k_fdb_write (struct qca8k_priv*,int ,int ,int ,int ) ;

__attribute__((used)) static int
qca8k_fdb_next(struct qca8k_priv *priv, struct qca8k_fdb *fdb, int port)
{
 int ret;

 qca8k_fdb_write(priv, fdb->vid, fdb->port_mask, fdb->mac, fdb->aging);
 ret = qca8k_fdb_access(priv, QCA8K_FDB_NEXT, port);
 if (ret >= 0)
  qca8k_fdb_read(priv, fdb);

 return ret;
}
