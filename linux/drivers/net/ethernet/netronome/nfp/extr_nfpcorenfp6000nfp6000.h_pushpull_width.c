
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static inline int pushpull_width(int pp)
{
 pp &= 0xf;

 if (pp == 0)
  return -EINVAL;
 return 2 << pp;
}
