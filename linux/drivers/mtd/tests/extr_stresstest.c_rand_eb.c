
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* bbt ;
 int ebcnt ;
 unsigned int prandom_u32 () ;

__attribute__((used)) static int rand_eb(void)
{
 unsigned int eb;

again:
 eb = prandom_u32();

 eb %= (ebcnt - 1);
 if (bbt[eb])
  goto again;
 return eb;
}
