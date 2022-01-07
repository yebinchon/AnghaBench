
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 scalar_t__ pti_console_channel ;
 scalar_t__ pti_control_channel ;

__attribute__((used)) static int pti_console_setup(struct console *c, char *opts)
{
 pti_console_channel = 0;
 pti_control_channel = 0;
 return 0;
}
