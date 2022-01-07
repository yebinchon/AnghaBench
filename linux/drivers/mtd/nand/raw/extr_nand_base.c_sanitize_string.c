
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef size_t ssize_t ;


 int strim (char*) ;

void sanitize_string(uint8_t *s, size_t len)
{
 ssize_t i;


 s[len - 1] = 0;


 for (i = 0; i < len - 1; i++) {
  if (s[i] < ' ' || s[i] > 127)
   s[i] = '?';
 }


 strim(s);
}
