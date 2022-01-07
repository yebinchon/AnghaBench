
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crashtype {int name; } ;


 int ARRAY_SIZE (struct crashtype const*) ;
 struct crashtype const* crashtypes ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static const struct crashtype *find_crashtype(const char *name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(crashtypes); i++) {
  if (!strcmp(name, crashtypes[i].name))
   return &crashtypes[i];
 }

 return ((void*)0);
}
