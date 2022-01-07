
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t idx; TYPE_1__* tst; } ;
struct TYPE_3__ {int (* put_handler ) (char*,char*) ;char* put; } ;


 int stub1 (char*,char*) ;
 TYPE_2__ ts ;

__attribute__((used)) static int validate_simple_test(char *put_str)
{
 char *chk_str;

 if (ts.tst[ts.idx].put_handler)
  return ts.tst[ts.idx].put_handler(put_str,
   ts.tst[ts.idx].put);

 chk_str = ts.tst[ts.idx].put;
 if (*put_str == '$')
  put_str++;

 while (*chk_str != '\0' && *put_str != '\0') {



  if (*put_str == '#' || *chk_str == '*')
   return 0;
  if (*put_str != *chk_str)
   return 1;

  chk_str++;
  put_str++;
 }
 if (*chk_str == '\0' && (*put_str == '\0' || *put_str == '#'))
  return 0;

 return 1;
}
