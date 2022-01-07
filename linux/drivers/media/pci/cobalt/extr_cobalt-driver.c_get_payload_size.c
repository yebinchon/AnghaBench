
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int get_payload_size(u16 code)
{
 switch (code) {
 case 0: return 128;
 case 1: return 256;
 case 2: return 512;
 case 3: return 1024;
 case 4: return 2048;
 case 5: return 4096;
 default: return 0;
 }
 return 0;
}
