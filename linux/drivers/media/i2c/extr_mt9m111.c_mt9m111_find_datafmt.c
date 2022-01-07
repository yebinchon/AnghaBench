
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mt9m111_datafmt {scalar_t__ code; } ;
struct mt9m111 {struct mt9m111_datafmt const* fmt; } ;


 int ARRAY_SIZE (struct mt9m111_datafmt const*) ;
 struct mt9m111_datafmt const* mt9m111_colour_fmts ;

__attribute__((used)) static const struct mt9m111_datafmt *mt9m111_find_datafmt(struct mt9m111 *mt9m111,
      u32 code)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(mt9m111_colour_fmts); i++)
  if (mt9m111_colour_fmts[i].code == code)
   return mt9m111_colour_fmts + i;

 return mt9m111->fmt;
}
