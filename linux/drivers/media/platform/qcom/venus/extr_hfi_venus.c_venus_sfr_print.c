
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct hfi_sfr* kva; } ;
struct venus_hfi_device {TYPE_2__ sfr; TYPE_1__* core; } ;
struct hfi_sfr {char* data; int buf_size; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;


 int dev_err_ratelimited (struct device*,char*,char*) ;
 void* memchr (char*,char,int) ;

__attribute__((used)) static void venus_sfr_print(struct venus_hfi_device *hdev)
{
 struct device *dev = hdev->core->dev;
 struct hfi_sfr *sfr = hdev->sfr.kva;
 void *p;

 if (!sfr)
  return;

 p = memchr(sfr->data, '\0', sfr->buf_size);




 if (!p)
  sfr->data[sfr->buf_size - 1] = '\0';

 dev_err_ratelimited(dev, "SFR message from FW: %s\n", sfr->data);
}
