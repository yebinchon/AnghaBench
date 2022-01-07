
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx18 {scalar_t__ reg_mem; } ;


 int cx18_writel_expect (struct cx18*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cx18_write_reg_expect(struct cx18 *cx, u32 val, u32 reg,
      u32 eval, u32 mask)
{
 cx18_writel_expect(cx, val, cx->reg_mem + reg, eval, mask);
}
