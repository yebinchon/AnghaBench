
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct jpu {int dummy; } ;


 int jpu_write (struct jpu*,unsigned int const,scalar_t__) ;

__attribute__((used)) static void jpu_set_tbl(struct jpu *jpu, u32 reg, const unsigned int *tbl,
   unsigned int len) {
 unsigned int i;

 for (i = 0; i < len; i++)
  jpu_write(jpu, tbl[i], reg + (i << 2));
}
