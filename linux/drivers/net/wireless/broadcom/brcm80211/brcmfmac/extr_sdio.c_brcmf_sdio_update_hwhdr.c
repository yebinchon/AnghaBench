
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline void brcmf_sdio_update_hwhdr(u8 *header, u16 frm_length)
{
 *(__le16 *)header = cpu_to_le16(frm_length);
 *(((__le16 *)header) + 1) = cpu_to_le16(~frm_length);
}
