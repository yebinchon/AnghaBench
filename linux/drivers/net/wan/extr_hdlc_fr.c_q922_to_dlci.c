
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 q922_to_dlci(u8 *hdr)
{
 return ((hdr[0] & 0xFC) << 2) | ((hdr[1] & 0xF0) >> 4);
}
