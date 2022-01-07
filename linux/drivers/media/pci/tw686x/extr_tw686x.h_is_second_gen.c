
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {int type; } ;


 int TYPE_SECOND_GEN ;

__attribute__((used)) static inline unsigned is_second_gen(struct tw686x_dev *dev)
{

 return dev->type & TYPE_SECOND_GEN;
}
