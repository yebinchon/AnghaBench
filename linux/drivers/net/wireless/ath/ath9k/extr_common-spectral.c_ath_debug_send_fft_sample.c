
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fft_sample_tlv {int length; } ;
struct ath_spec_scan_priv {int rfs_chan_spec_scan; } ;


 int __be16_to_cpu (int ) ;
 int relay_write (int ,struct fft_sample_tlv*,int) ;

__attribute__((used)) static void ath_debug_send_fft_sample(struct ath_spec_scan_priv *spec_priv,
          struct fft_sample_tlv *fft_sample_tlv)
{
 int length;
 if (!spec_priv->rfs_chan_spec_scan)
  return;

 length = __be16_to_cpu(fft_sample_tlv->length) +
   sizeof(*fft_sample_tlv);
 relay_write(spec_priv->rfs_chan_spec_scan, fft_sample_tlv, length);
}
