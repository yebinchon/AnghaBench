
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r820t_sect_type {scalar_t__ value; } ;


 int swap (struct r820t_sect_type,struct r820t_sect_type) ;

__attribute__((used)) static void r820t_compre_cor(struct r820t_sect_type iq[3])
{
 int i;

 for (i = 3; i > 0; i--) {
  if (iq[0].value > iq[i - 1].value)
   swap(iq[0], iq[i - 1]);
 }
}
