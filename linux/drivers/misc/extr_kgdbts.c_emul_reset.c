
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;


 scalar_t__ restart_from_top_after_write ;
 scalar_t__ strncmp (char*,char*,int) ;
 TYPE_1__ ts ;

__attribute__((used)) static int emul_reset(char *put_str, char *arg)
{
 if (strncmp(put_str, "$OK", 3))
  return 1;
 if (restart_from_top_after_write) {
  restart_from_top_after_write = 0;
  ts.idx = -1;
 }
 return 0;
}
