
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bs {int dummy; } ;


 int bs_write (struct bs*,int,scalar_t__) ;
 int bs_write1 (struct bs*,int) ;
 int fls (scalar_t__) ;

__attribute__((used)) static void bs_write_ue(struct bs *s, u32 val)
{
 if (val == 0) {
  bs_write1(s, 1);
 } else {
  val++;
  bs_write(s, 2 * fls(val) - 1, val);
 }
}
