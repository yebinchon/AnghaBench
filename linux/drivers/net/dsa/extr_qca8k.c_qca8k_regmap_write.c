
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qca8k_priv {int dummy; } ;


 int qca8k_write (struct qca8k_priv*,int ,int ) ;

__attribute__((used)) static int
qca8k_regmap_write(void *ctx, uint32_t reg, uint32_t val)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ctx;

 qca8k_write(priv, reg, val);

 return 0;
}
