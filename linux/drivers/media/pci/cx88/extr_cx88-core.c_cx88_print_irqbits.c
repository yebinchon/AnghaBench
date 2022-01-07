
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int dprintk0 (char*,char const*,int) ;
 int pr_cont (char*,...) ;

void cx88_print_irqbits(const char *tag, const char *strings[],
   int len, u32 bits, u32 mask)
{
 unsigned int i;

 dprintk0("%s [0x%x]", tag, bits);
 for (i = 0; i < len; i++) {
  if (!(bits & (1 << i)))
   continue;
  if (strings[i])
   pr_cont(" %s", strings[i]);
  else
   pr_cont(" %d", i);
  if (!(mask & (1 << i)))
   continue;
  pr_cont("*");
 }
 pr_cont("\n");
}
