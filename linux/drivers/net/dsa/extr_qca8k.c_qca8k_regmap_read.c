
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qca8k_priv {int dummy; } ;


 int qca8k_read (struct qca8k_priv*,int ) ;

__attribute__((used)) static int
qca8k_regmap_read(void *ctx, uint32_t reg, uint32_t *val)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ctx;

 *val = qca8k_read(priv, reg);

 return 0;
}
