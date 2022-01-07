
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IONIC_COMP_COLOR_MASK ;

__attribute__((used)) static inline u8 color_match(u8 color, u8 done_color)
{
 return (!!(color & IONIC_COMP_COLOR_MASK)) == done_color;
}
