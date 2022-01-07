
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int break_helper (char*,char*,int ) ;

__attribute__((used)) static void hw_access_break(char *arg)
{
 break_helper("Z4", arg, 0);
}
