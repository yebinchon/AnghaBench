
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct wiphy {int hw_version; int fw_version; } ;
struct TYPE_13__ {int rev; int patch; TYPE_3__* pcm; TYPE_2__* ucode; } ;
struct b43legacy_wldev {TYPE_6__* dev; TYPE_4__ fw; TYPE_7__* wl; } ;
struct b43legacy_fw_header {int dummy; } ;
typedef int __be32 ;
struct TYPE_16__ {TYPE_1__* hw; } ;
struct TYPE_14__ {int coreid; } ;
struct TYPE_15__ {TYPE_5__ id; } ;
struct TYPE_12__ {size_t const size; scalar_t__ data; } ;
struct TYPE_11__ {size_t const size; scalar_t__ data; } ;
struct TYPE_10__ {struct wiphy* wiphy; } ;


 unsigned int B43legacy_IRQWAIT_MAX_RETRIES ;
 int B43legacy_IRQ_ALL ;
 int B43legacy_IRQ_MAC_SUSPENDED ;
 int B43legacy_MACCTL_PSM_JMP0 ;
 int B43legacy_MACCTL_PSM_RUN ;
 int B43legacy_MMIO_GEN_IRQ_REASON ;
 int B43legacy_MMIO_MACCTL ;
 int B43legacy_MMIO_SHM_DATA ;
 int B43legacy_SHM_AUTOINC_W ;
 int B43legacy_SHM_HW ;
 int B43legacy_SHM_SHARED ;
 int B43legacy_SHM_SH_UCODEDATE ;
 int B43legacy_SHM_SH_UCODEPATCH ;
 int B43legacy_SHM_SH_UCODEREV ;
 int B43legacy_SHM_SH_UCODETIME ;
 int B43legacy_SHM_UCODE ;
 int B43legacy_SHM_WIRELESS ;
 int B43legacy_WARN_ON (int) ;
 int EINTR ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int b43legacy_print_fw_helptext (TYPE_7__*) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_shm_control_word (struct b43legacy_wldev*,int,int) ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,unsigned int,int ) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int b43legacyerr (TYPE_7__*,char*) ;
 int b43legacyinfo (TYPE_7__*,char*,int,int,int,int,int,int,int,int) ;
 int be32_to_cpu (int const) ;
 int current ;
 int msleep_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;
 int snprintf (int ,int,char*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int b43legacy_upload_microcode(struct b43legacy_wldev *dev)
{
 struct wiphy *wiphy = dev->wl->hw->wiphy;
 const size_t hdr_len = sizeof(struct b43legacy_fw_header);
 const __be32 *data;
 unsigned int i;
 unsigned int len;
 u16 fwrev;
 u16 fwpatch;
 u16 fwdate;
 u16 fwtime;
 u32 tmp, macctl;
 int err = 0;


 macctl = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 B43legacy_WARN_ON(macctl & B43legacy_MACCTL_PSM_RUN);
 macctl |= B43legacy_MACCTL_PSM_JMP0;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, macctl);

 for (i = 0; i < 64; i++)
  b43legacy_shm_write16(dev, B43legacy_SHM_WIRELESS, i, 0);
 for (i = 0; i < 4096; i += 2)
  b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, i, 0);


 data = (__be32 *) (dev->fw.ucode->data + hdr_len);
 len = (dev->fw.ucode->size - hdr_len) / sizeof(__be32);
 b43legacy_shm_control_word(dev,
       B43legacy_SHM_UCODE |
       B43legacy_SHM_AUTOINC_W,
       0x0000);
 for (i = 0; i < len; i++) {
  b43legacy_write32(dev, B43legacy_MMIO_SHM_DATA,
        be32_to_cpu(data[i]));
  udelay(10);
 }

 if (dev->fw.pcm) {

  data = (__be32 *) (dev->fw.pcm->data + hdr_len);
  len = (dev->fw.pcm->size - hdr_len) / sizeof(__be32);
  b43legacy_shm_control_word(dev, B43legacy_SHM_HW, 0x01EA);
  b43legacy_write32(dev, B43legacy_MMIO_SHM_DATA, 0x00004000);

  b43legacy_shm_control_word(dev, B43legacy_SHM_HW, 0x01EB);
  for (i = 0; i < len; i++) {
   b43legacy_write32(dev, B43legacy_MMIO_SHM_DATA,
       be32_to_cpu(data[i]));
   udelay(10);
  }
 }

 b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_REASON,
     B43legacy_IRQ_ALL);


 macctl = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 macctl &= ~B43legacy_MACCTL_PSM_JMP0;
 macctl |= B43legacy_MACCTL_PSM_RUN;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, macctl);


 i = 0;
 while (1) {
  tmp = b43legacy_read32(dev, B43legacy_MMIO_GEN_IRQ_REASON);
  if (tmp == B43legacy_IRQ_MAC_SUSPENDED)
   break;
  i++;
  if (i >= B43legacy_IRQWAIT_MAX_RETRIES) {
   b43legacyerr(dev->wl, "Microcode not responding\n");
   b43legacy_print_fw_helptext(dev->wl);
   err = -ENODEV;
   goto error;
  }
  msleep_interruptible(50);
  if (signal_pending(current)) {
   err = -EINTR;
   goto error;
  }
 }

 b43legacy_read32(dev, B43legacy_MMIO_GEN_IRQ_REASON);


 fwrev = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_UCODEREV);
 fwpatch = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
           B43legacy_SHM_SH_UCODEPATCH);
 fwdate = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
          B43legacy_SHM_SH_UCODEDATE);
 fwtime = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
          B43legacy_SHM_SH_UCODETIME);

 if (fwrev > 0x128) {
  b43legacyerr(dev->wl, "YOU ARE TRYING TO LOAD V4 FIRMWARE."
        " Only firmware from binary drivers version 3.x"
        " is supported. You must change your firmware"
        " files.\n");
  b43legacy_print_fw_helptext(dev->wl);
  err = -EOPNOTSUPP;
  goto error;
 }
 b43legacyinfo(dev->wl, "Loading firmware version 0x%X, patch level %u "
        "(20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\n", fwrev, fwpatch,
        (fwdate >> 12) & 0xF, (fwdate >> 8) & 0xF, fwdate & 0xFF,
        (fwtime >> 11) & 0x1F, (fwtime >> 5) & 0x3F,
        fwtime & 0x1F);

 dev->fw.rev = fwrev;
 dev->fw.patch = fwpatch;

 snprintf(wiphy->fw_version, sizeof(wiphy->fw_version), "%u.%u",
   dev->fw.rev, dev->fw.patch);
 wiphy->hw_version = dev->dev->id.coreid;

 return 0;

error:
 macctl = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 macctl &= ~B43legacy_MACCTL_PSM_RUN;
 macctl |= B43legacy_MACCTL_PSM_JMP0;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, macctl);

 return err;
}
