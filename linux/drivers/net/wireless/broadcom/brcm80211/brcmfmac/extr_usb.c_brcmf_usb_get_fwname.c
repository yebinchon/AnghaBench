
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct brcmf_fw_request {int dummy; } ;
struct brcmf_fw_name {char const* member_0; int * member_1; } ;
struct brcmf_bus {int chiprev; int chip; } ;


 int ARRAY_SIZE (struct brcmf_fw_name*) ;
 int ENOMEM ;
 struct brcmf_fw_request* brcmf_fw_alloc_request (int ,int ,struct brcmf_fw_name*,int ,struct brcmf_fw_name*,int ) ;
 struct brcmf_fw_name* brcmf_usb_fwnames ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int kfree (struct brcmf_fw_request*) ;

__attribute__((used)) static
int brcmf_usb_get_fwname(struct device *dev, const char *ext, u8 *fw_name)
{
 struct brcmf_bus *bus = dev_get_drvdata(dev);
 struct brcmf_fw_request *fwreq;
 struct brcmf_fw_name fwnames[] = {
  { ext, fw_name },
 };

 fwreq = brcmf_fw_alloc_request(bus->chip, bus->chiprev,
           brcmf_usb_fwnames,
           ARRAY_SIZE(brcmf_usb_fwnames),
           fwnames, ARRAY_SIZE(fwnames));
 if (!fwreq)
  return -ENOMEM;

 kfree(fwreq);
 return 0;
}
