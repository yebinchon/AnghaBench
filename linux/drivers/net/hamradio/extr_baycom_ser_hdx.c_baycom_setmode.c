
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct baycom_state {int opt_dcd; } ;


 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int baycom_setmode(struct baycom_state *bc, const char *modestr)
{
 if (strchr(modestr, '*'))
  bc->opt_dcd = 0;
 else if (strchr(modestr, '+'))
  bc->opt_dcd = -1;
 else if (strchr(modestr, '@'))
  bc->opt_dcd = -2;
 else
  bc->opt_dcd = 1;
 return 0;
}
