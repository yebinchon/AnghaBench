
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void
ath_cmn_copy_fft_frame(u8 *in, u8 *out, int sample_len, int sample_bytes)
{
 switch (sample_bytes - sample_len) {
 case -1:

  memcpy(&out[1], in,
         sample_len - 1);
  break;
 case 0:

  memcpy(out, in, sample_len);
  break;
 case 1:



  memcpy(&out[1], in, 30);
  out[31] = in[31];
  memcpy(&out[32], &in[33],
         sample_len - 32);
  break;
 case 2:



  memcpy(out, in, 30);
  out[30] = in[31];
  memcpy(&out[31], &in[33],
         sample_len - 31);
  break;
 default:
  break;
 }
}
