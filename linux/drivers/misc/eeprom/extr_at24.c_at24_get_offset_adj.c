
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AT24_FLAG_ADDR16 ;
 int AT24_FLAG_MAC ;
 int AT24_FLAG_SERIAL ;

__attribute__((used)) static unsigned int at24_get_offset_adj(u8 flags, unsigned int byte_len)
{
 if (flags & AT24_FLAG_MAC) {

  return 0xa0 - byte_len;
 } else if (flags & AT24_FLAG_SERIAL && flags & AT24_FLAG_ADDR16) {





  return 0x0800;
 } else if (flags & AT24_FLAG_SERIAL) {




  return 0x0080;
 } else {
  return 0;
 }
}
