
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dm9000_type { ____Placeholder_dm9000_type } dm9000_type ;






__attribute__((used)) static unsigned char dm9000_type_to_char(enum dm9000_type type)
{
 switch (type) {
 case 128: return 'e';
 case 130: return 'a';
 case 129: return 'b';
 }

 return '?';
}
