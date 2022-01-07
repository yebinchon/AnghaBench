
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int SDPCM_DOFFSET_MASK ;
 int SDPCM_DOFFSET_SHIFT ;

__attribute__((used)) static inline u8 brcmf_sdio_getdatoffset(u8 *swheader)
{
 u32 hdrvalue;
 hdrvalue = *(u32 *)swheader;
 return (u8)((hdrvalue & SDPCM_DOFFSET_MASK) >> SDPCM_DOFFSET_SHIFT);
}
