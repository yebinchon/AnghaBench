
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* data; } ;
struct b43_firmware {TYPE_1__ initvals; } ;
struct b43_wldev {struct b43_firmware fw; } ;
struct b43_iv {int dummy; } ;
struct b43_fw_header {int size; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ data; } ;


 int b43_write_initvals (struct b43_wldev*,struct b43_iv const*,size_t,scalar_t__) ;
 size_t be32_to_cpu (int ) ;

__attribute__((used)) static int b43_upload_initvals(struct b43_wldev *dev)
{
 const size_t hdr_len = sizeof(struct b43_fw_header);
 const struct b43_fw_header *hdr;
 struct b43_firmware *fw = &dev->fw;
 const struct b43_iv *ivals;
 size_t count;

 hdr = (const struct b43_fw_header *)(fw->initvals.data->data);
 ivals = (const struct b43_iv *)(fw->initvals.data->data + hdr_len);
 count = be32_to_cpu(hdr->size);
 return b43_write_initvals(dev, ivals, count,
     fw->initvals.data->size - hdr_len);
}
