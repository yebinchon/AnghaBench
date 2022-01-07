
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int stopped; } ;
struct ov_regvals {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct ov_regvals const*) ;
 int write_regvals (struct sd*,struct ov_regvals const*,int ) ;

__attribute__((used)) static void ovfx2_configure(struct sd *sd)
{
 static const struct ov_regvals init_fx2[] = {
  { 0x00, 0x60 },
  { 0x02, 0x01 },
  { 0x0f, 0x1d },
  { 0xe9, 0x82 },
  { 0xea, 0xc7 },
  { 0xeb, 0x10 },
  { 0xec, 0xf6 },
 };

 sd->stopped = 1;

 write_regvals(sd, init_fx2, ARRAY_SIZE(init_fx2));
}
