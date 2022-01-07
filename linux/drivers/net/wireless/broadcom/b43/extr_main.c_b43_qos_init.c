
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int wl; int qos_enabled; } ;


 int B43_HF_EDCF ;
 int B43_MMIO_IFSCTL ;
 int B43_MMIO_IFSCTL_USE_EDCF ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;
 int b43_qos_upload_all (struct b43_wldev*) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;
 int b43dbg (int ,char*) ;

__attribute__((used)) static void b43_qos_init(struct b43_wldev *dev)
{
 if (!dev->qos_enabled) {

  b43_hf_write(dev, b43_hf_read(dev) & ~B43_HF_EDCF);
  b43_write16(dev, B43_MMIO_IFSCTL,
       b43_read16(dev, B43_MMIO_IFSCTL)
       & ~B43_MMIO_IFSCTL_USE_EDCF);
  b43dbg(dev->wl, "QoS disabled\n");
  return;
 }


 b43_qos_upload_all(dev);


 b43_hf_write(dev, b43_hf_read(dev) | B43_HF_EDCF);
 b43_write16(dev, B43_MMIO_IFSCTL,
      b43_read16(dev, B43_MMIO_IFSCTL)
      | B43_MMIO_IFSCTL_USE_EDCF);
 b43dbg(dev->wl, "QoS enabled\n");
}
