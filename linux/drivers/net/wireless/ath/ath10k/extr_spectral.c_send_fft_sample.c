
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fft_sample_tlv {int length; } ;
struct TYPE_2__ {int rfs_chan_spec_scan; } ;
struct ath10k {TYPE_1__ spectral; } ;


 int __be16_to_cpu (int ) ;
 int relay_write (int ,struct fft_sample_tlv const*,int) ;

__attribute__((used)) static void send_fft_sample(struct ath10k *ar,
       const struct fft_sample_tlv *fft_sample_tlv)
{
 int length;

 if (!ar->spectral.rfs_chan_spec_scan)
  return;

 length = __be16_to_cpu(fft_sample_tlv->length) +
   sizeof(*fft_sample_tlv);
 relay_write(ar->spectral.rfs_chan_spec_scan, fft_sample_tlv, length);
}
