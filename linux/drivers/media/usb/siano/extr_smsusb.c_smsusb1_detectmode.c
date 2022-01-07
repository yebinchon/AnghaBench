
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smsusb_device_t {TYPE_1__* udev; } ;
struct TYPE_2__ {char* product; } ;


 int DEVICE_MODE_NONE ;
 int pr_debug (char*,int,char*) ;
 int pr_err (char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static void smsusb1_detectmode(void *context, int *mode)
{
 char *product_string =
  ((struct smsusb_device_t *) context)->udev->product;

 *mode = DEVICE_MODE_NONE;

 if (!product_string) {
  product_string = "none";
  pr_err("product string not found\n");
 } else if (strstr(product_string, "DVBH"))
  *mode = 1;
 else if (strstr(product_string, "BDA"))
  *mode = 4;
 else if (strstr(product_string, "DVBT"))
  *mode = 0;
 else if (strstr(product_string, "TDMB"))
  *mode = 2;

 pr_debug("%d \"%s\"\n", *mode, product_string);
}
