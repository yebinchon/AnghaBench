
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int dummy; } ;


 int qca8k_rmw (struct qca8k_priv*,int ,int ,int ) ;

__attribute__((used)) static void
qca8k_reg_clear(struct qca8k_priv *priv, u32 reg, u32 val)
{
 qca8k_rmw(priv, reg, val, 0);
}
