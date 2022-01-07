
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_CAIF ;
 int caif_ldisc ;
 int pr_err (char*,int ,int) ;
 int tty_register_ldisc (int ,int *) ;

__attribute__((used)) static int register_ldisc(void)
{
 int result;

 result = tty_register_ldisc(N_CAIF, &caif_ldisc);
 if (result < 0) {
  pr_err("cannot register CAIF ldisc=%d err=%d\n", N_CAIF,
   result);
  return result;
 }
 return result;
}
