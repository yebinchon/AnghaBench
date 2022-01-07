
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_priv {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int img_ir_probe_hw(struct img_ir_priv *priv)
{
 return -ENODEV;
}
