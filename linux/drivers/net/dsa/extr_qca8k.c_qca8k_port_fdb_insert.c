
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qca8k_priv {int dummy; } ;


 int QCA8K_ATU_STATUS_STATIC ;
 int qca8k_fdb_add (struct qca8k_priv*,int const*,int,int,int ) ;

__attribute__((used)) static int
qca8k_port_fdb_insert(struct qca8k_priv *priv, const u8 *addr,
        u16 port_mask, u16 vid)
{

 if (!vid)
  vid = 1;

 return qca8k_fdb_add(priv, addr, port_mask, vid,
        QCA8K_ATU_STATUS_STATIC);
}
