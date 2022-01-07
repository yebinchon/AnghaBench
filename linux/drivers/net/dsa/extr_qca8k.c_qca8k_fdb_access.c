
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int dummy; } ;
typedef enum qca8k_fdb_cmd { ____Placeholder_qca8k_fdb_cmd } qca8k_fdb_cmd ;


 int QCA8K_ATU_FUNC_BUSY ;
 int QCA8K_ATU_FUNC_FULL ;
 int QCA8K_ATU_FUNC_PORT_EN ;
 int QCA8K_ATU_FUNC_PORT_M ;
 int QCA8K_ATU_FUNC_PORT_S ;
 int QCA8K_FDB_LOAD ;
 int QCA8K_REG_ATU_FUNC ;
 scalar_t__ qca8k_busy_wait (struct qca8k_priv*,int ,int) ;
 int qca8k_read (struct qca8k_priv*,int ) ;
 int qca8k_write (struct qca8k_priv*,int ,int) ;

__attribute__((used)) static int
qca8k_fdb_access(struct qca8k_priv *priv, enum qca8k_fdb_cmd cmd, int port)
{
 u32 reg;


 reg = QCA8K_ATU_FUNC_BUSY;
 reg |= cmd;
 if (port >= 0) {
  reg |= QCA8K_ATU_FUNC_PORT_EN;
  reg |= (port & QCA8K_ATU_FUNC_PORT_M) << QCA8K_ATU_FUNC_PORT_S;
 }


 qca8k_write(priv, QCA8K_REG_ATU_FUNC, reg);


 if (qca8k_busy_wait(priv, QCA8K_REG_ATU_FUNC, QCA8K_ATU_FUNC_BUSY))
  return -1;


 if (cmd == QCA8K_FDB_LOAD) {
  reg = qca8k_read(priv, QCA8K_REG_ATU_FUNC);
  if (reg & QCA8K_ATU_FUNC_FULL)
   return -1;
 }

 return 0;
}
