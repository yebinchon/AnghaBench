
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GFP_KERNEL ;
 char* kstrdup (char*,int ) ;

__attribute__((used)) static char *ipaq_micro_str(u8 *wchar, u8 len)
{
 char retstr[256];
 u8 i;

 for (i = 0; i < len / 2; i++)
  retstr[i] = wchar[i * 2];
 return kstrdup(retstr, GFP_KERNEL);
}
