
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int kstrtouint (int ,unsigned int,unsigned int*) ;
 int memcpy (char*,char*,size_t) ;
 int strim (char*) ;

__attribute__((used)) static int vpdstrtouint(char *s, u8 len, unsigned int base, unsigned int *val)
{
 char tok[256];

 memcpy(tok, s, len);
 tok[len] = 0;
 return kstrtouint(strim(tok), base, val);
}
