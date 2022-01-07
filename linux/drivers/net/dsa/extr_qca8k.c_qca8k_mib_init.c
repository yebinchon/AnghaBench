
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca8k_priv {int reg_mutex; } ;


 int QCA8K_MIB_BUSY ;
 int QCA8K_MIB_CPU_KEEP ;
 int QCA8K_MIB_FLUSH ;
 int QCA8K_MODULE_EN_MIB ;
 int QCA8K_REG_MIB ;
 int QCA8K_REG_MODULE_EN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qca8k_busy_wait (struct qca8k_priv*,int ,int) ;
 int qca8k_reg_set (struct qca8k_priv*,int ,int) ;
 int qca8k_write (struct qca8k_priv*,int ,int ) ;

__attribute__((used)) static void
qca8k_mib_init(struct qca8k_priv *priv)
{
 mutex_lock(&priv->reg_mutex);
 qca8k_reg_set(priv, QCA8K_REG_MIB, QCA8K_MIB_FLUSH | QCA8K_MIB_BUSY);
 qca8k_busy_wait(priv, QCA8K_REG_MIB, QCA8K_MIB_BUSY);
 qca8k_reg_set(priv, QCA8K_REG_MIB, QCA8K_MIB_CPU_KEEP);
 qca8k_write(priv, QCA8K_REG_MODULE_EN, QCA8K_MODULE_EN_MIB);
 mutex_unlock(&priv->reg_mutex);
}
