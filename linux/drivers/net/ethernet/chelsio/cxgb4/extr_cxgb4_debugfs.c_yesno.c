
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *yesno(int x)
{
 static const char *yes = "yes";
 static const char *no = "no";

 return x ? yes : no;
}
