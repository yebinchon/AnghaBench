
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u32 ;



__attribute__((used)) static inline u32 sunxi_nfc_buf_to_user_data(const u8 *buf)
{
 return buf[0] | (buf[1] << 8) | (buf[2] << 16) | (buf[3] << 24);
}
