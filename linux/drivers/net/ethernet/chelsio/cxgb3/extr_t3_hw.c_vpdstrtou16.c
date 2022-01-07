
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;


 int kstrtou16 (int ,unsigned int,int *) ;
 int memcpy (char*,char*,size_t) ;
 int strim (char*) ;

__attribute__((used)) static int vpdstrtou16(char *s, u8 len, unsigned int base, u16 *val)
{
 char tok[256];

 memcpy(tok, s, len);
 tok[len] = 0;
 return kstrtou16(strim(tok), base, val);
}
