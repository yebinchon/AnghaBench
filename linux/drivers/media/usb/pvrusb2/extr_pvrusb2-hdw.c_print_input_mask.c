
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int *) ;
 int * control_values_input ;
 unsigned int scnprintf (char*,unsigned int,char*,char*,int ) ;

__attribute__((used)) static unsigned int print_input_mask(unsigned int msk,
         char *buf,unsigned int acnt)
{
 unsigned int idx,ccnt;
 unsigned int tcnt = 0;
 for (idx = 0; idx < ARRAY_SIZE(control_values_input); idx++) {
  if (!((1UL << idx) & msk)) continue;
  ccnt = scnprintf(buf+tcnt,
     acnt-tcnt,
     "%s%s",
     (tcnt ? ", " : ""),
     control_values_input[idx]);
  tcnt += ccnt;
 }
 return tcnt;
}
