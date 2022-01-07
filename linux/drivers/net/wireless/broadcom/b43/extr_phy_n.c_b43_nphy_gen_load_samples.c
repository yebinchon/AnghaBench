
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cordic_iq {int q; int i; } ;
struct b43_wldev {int wl; } ;


 int B43_NPHY_BBCFG ;
 int B43_NPHY_BBCFG_RSTRX ;
 int CORDIC_FIXED (int) ;
 void* CORDIC_FLOAT (int) ;
 int GFP_KERNEL ;
 scalar_t__ b43_is_40mhz (struct b43_wldev*) ;
 int b43_nphy_load_samples (struct b43_wldev*,struct cordic_iq*,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43err (int ,char*) ;
 struct cordic_iq cordic_calc_iq (int ) ;
 struct cordic_iq* kcalloc (int,int,int ) ;
 int kfree (struct cordic_iq*) ;

__attribute__((used)) static u16 b43_nphy_gen_load_samples(struct b43_wldev *dev, u32 freq, u16 max,
     bool test)
{
 int i;
 u16 bw, len, rot, angle;
 struct cordic_iq *samples;

 bw = b43_is_40mhz(dev) ? 40 : 20;
 len = bw << 3;

 if (test) {
  if (b43_phy_read(dev, B43_NPHY_BBCFG) & B43_NPHY_BBCFG_RSTRX)
   bw = 82;
  else
   bw = 80;

  if (b43_is_40mhz(dev))
   bw <<= 1;

  len = bw << 1;
 }

 samples = kcalloc(len, sizeof(struct cordic_iq), GFP_KERNEL);
 if (!samples) {
  b43err(dev->wl, "allocation for samples generation failed\n");
  return 0;
 }
 rot = (((freq * 36) / bw) << 16) / 100;
 angle = 0;

 for (i = 0; i < len; i++) {
  samples[i] = cordic_calc_iq(CORDIC_FIXED(angle));
  angle += rot;
  samples[i].q = CORDIC_FLOAT(samples[i].q * max);
  samples[i].i = CORDIC_FLOAT(samples[i].i * max);
 }

 i = b43_nphy_load_samples(dev, samples, len);
 kfree(samples);
 return (i < 0) ? 0 : len;
}
