
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceu_fmt {unsigned int fourcc; } ;


 unsigned int ARRAY_SIZE (struct ceu_fmt*) ;
 struct ceu_fmt* ceu_fmt_list ;

__attribute__((used)) static const struct ceu_fmt *get_ceu_fmt_from_fourcc(unsigned int fourcc)
{
 const struct ceu_fmt *fmt = &ceu_fmt_list[0];
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(ceu_fmt_list); i++, fmt++)
  if (fmt->fourcc == fourcc)
   return fmt;

 return ((void*)0);
}
