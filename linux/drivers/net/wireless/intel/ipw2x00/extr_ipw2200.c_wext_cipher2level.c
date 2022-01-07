
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEC_LEVEL_0 ;
 int SEC_LEVEL_1 ;
 int SEC_LEVEL_2 ;
 int SEC_LEVEL_3 ;

__attribute__((used)) static int wext_cipher2level(int cipher)
{
 switch (cipher) {
 case 131:
  return SEC_LEVEL_0;
 case 128:
 case 129:
  return SEC_LEVEL_1;
 case 130:
  return SEC_LEVEL_2;
 case 132:
  return SEC_LEVEL_3;
 default:
  return -1;
 }
}
