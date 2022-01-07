
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43legacy_firmware {TYPE_2__* initvals_band; TYPE_1__* initvals; } ;
struct b43legacy_wldev {struct b43legacy_firmware fw; } ;
struct b43legacy_iv {int dummy; } ;
struct b43legacy_fw_header {int size; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ data; } ;


 int b43legacy_write_initvals (struct b43legacy_wldev*,struct b43legacy_iv const*,size_t,scalar_t__) ;
 size_t be32_to_cpu (int ) ;

__attribute__((used)) static int b43legacy_upload_initvals(struct b43legacy_wldev *dev)
{
 const size_t hdr_len = sizeof(struct b43legacy_fw_header);
 const struct b43legacy_fw_header *hdr;
 struct b43legacy_firmware *fw = &dev->fw;
 const struct b43legacy_iv *ivals;
 size_t count;
 int err;

 hdr = (const struct b43legacy_fw_header *)(fw->initvals->data);
 ivals = (const struct b43legacy_iv *)(fw->initvals->data + hdr_len);
 count = be32_to_cpu(hdr->size);
 err = b43legacy_write_initvals(dev, ivals, count,
     fw->initvals->size - hdr_len);
 if (err)
  goto out;
 if (fw->initvals_band) {
  hdr = (const struct b43legacy_fw_header *)
        (fw->initvals_band->data);
  ivals = (const struct b43legacy_iv *)(fw->initvals_band->data
   + hdr_len);
  count = be32_to_cpu(hdr->size);
  err = b43legacy_write_initvals(dev, ivals, count,
      fw->initvals_band->size - hdr_len);
  if (err)
   goto out;
 }
out:

 return err;
}
