
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct typhoon_section_header {int len; } ;
struct typhoon_file_header {int numSections; int tag; } ;
struct typhoon {int dev; TYPE_1__* pdev; } ;
struct TYPE_6__ {int size; int * data; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int FIRMWARE_NAME ;
 int le32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int netdev_err (int ,char*,...) ;
 int release_firmware (TYPE_2__*) ;
 int request_firmware (TYPE_2__**,int ,int *) ;
 TYPE_2__* typhoon_fw ;

__attribute__((used)) static int
typhoon_request_firmware(struct typhoon *tp)
{
 const struct typhoon_file_header *fHdr;
 const struct typhoon_section_header *sHdr;
 const u8 *image_data;
 u32 numSections;
 u32 section_len;
 u32 remaining;
 int err;

 if (typhoon_fw)
  return 0;

 err = request_firmware(&typhoon_fw, FIRMWARE_NAME, &tp->pdev->dev);
 if (err) {
  netdev_err(tp->dev, "Failed to load firmware \"%s\"\n",
      FIRMWARE_NAME);
  return err;
 }

 image_data = typhoon_fw->data;
 remaining = typhoon_fw->size;
 if (remaining < sizeof(struct typhoon_file_header))
  goto invalid_fw;

 fHdr = (struct typhoon_file_header *) image_data;
 if (memcmp(fHdr->tag, "TYPHOON", 8))
  goto invalid_fw;

 numSections = le32_to_cpu(fHdr->numSections);
 image_data += sizeof(struct typhoon_file_header);
 remaining -= sizeof(struct typhoon_file_header);

 while (numSections--) {
  if (remaining < sizeof(struct typhoon_section_header))
   goto invalid_fw;

  sHdr = (struct typhoon_section_header *) image_data;
  image_data += sizeof(struct typhoon_section_header);
  section_len = le32_to_cpu(sHdr->len);

  if (remaining < section_len)
   goto invalid_fw;

  image_data += section_len;
  remaining -= section_len;
 }

 return 0;

invalid_fw:
 netdev_err(tp->dev, "Invalid firmware image\n");
 release_firmware(typhoon_fw);
 typhoon_fw = ((void*)0);
 return -EINVAL;
}
