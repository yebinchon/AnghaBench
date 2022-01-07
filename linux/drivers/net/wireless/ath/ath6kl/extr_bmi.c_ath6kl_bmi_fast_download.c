
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath6kl {int dummy; } ;


 int ath6kl_bmi_lz_data (struct ath6kl*,int *,int) ;
 int ath6kl_bmi_lz_stream_start (struct ath6kl*,int) ;
 int memcpy (int*,int *,int) ;

int ath6kl_bmi_fast_download(struct ath6kl *ar, u32 addr, u8 *buf, u32 len)
{
 int ret;
 u32 last_word = 0;
 u32 last_word_offset = len & ~0x3;
 u32 unaligned_bytes = len & 0x3;

 ret = ath6kl_bmi_lz_stream_start(ar, addr);
 if (ret)
  return ret;

 if (unaligned_bytes) {

  memcpy(&last_word, &buf[last_word_offset], unaligned_bytes);
 }

 ret = ath6kl_bmi_lz_data(ar, buf, last_word_offset);
 if (ret)
  return ret;

 if (unaligned_bytes)
  ret = ath6kl_bmi_lz_data(ar, (u8 *)&last_word, 4);

 if (!ret) {


  ret = ath6kl_bmi_lz_stream_start(ar, 0x00);
 }
 return ret;
}
