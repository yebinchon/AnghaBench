
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788 {int regmap; } ;


 int regmap_bulk_read (int ,int ,int *,size_t) ;

int lp8788_read_multi_bytes(struct lp8788 *lp, u8 reg, u8 *data, size_t count)
{
 return regmap_bulk_read(lp->regmap, reg, data, count);
}
