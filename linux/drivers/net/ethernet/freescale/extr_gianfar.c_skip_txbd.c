
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txbd8 {int dummy; } ;



__attribute__((used)) static inline struct txbd8 *skip_txbd(struct txbd8 *bdp, int stride,
          struct txbd8 *base, int ring_size)
{
 struct txbd8 *new_bd = bdp + stride;

 return (new_bd >= (base + ring_size)) ? (new_bd - ring_size) : new_bd;
}
