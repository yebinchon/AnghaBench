
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufsize ;
 unsigned int prandom_u32 () ;

__attribute__((used)) static int rand_len(int offs)
{
 unsigned int len;

 len = prandom_u32();
 len %= (bufsize - offs);
 return len;
}
