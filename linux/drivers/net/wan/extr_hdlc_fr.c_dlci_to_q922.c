
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline void dlci_to_q922(u8 *hdr, u16 dlci)
{
 hdr[0] = (dlci >> 2) & 0xFC;
 hdr[1] = ((dlci << 4) & 0xF0) | 0x01;
}
