
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver_data; } ;
struct eisa_device {TYPE_1__ id; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * de4x5_signatures ;
 int strcpy (char*,int ) ;
 struct eisa_device* to_eisa_device (struct device*) ;

__attribute__((used)) static int
EISA_signature(char *name, struct device *device)
{
    int i, status = 0, siglen = ARRAY_SIZE(de4x5_signatures);
    struct eisa_device *edev;

    *name = '\0';
    edev = to_eisa_device (device);
    i = edev->id.driver_data;

    if (i >= 0 && i < siglen) {
     strcpy (name, de4x5_signatures[i]);
     status = 1;
    }

    return status;
}
