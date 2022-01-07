
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 char tolower (char) ;

__attribute__((used)) static inline unsigned int hex2val(char c)
{
 return isdigit(c) ? c - '0' : tolower(c) - 'a' + 10;
}
