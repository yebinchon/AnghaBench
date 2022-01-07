
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hso_serial {int dummy; } ;
struct TYPE_2__ {struct hso_serial* dev_serial; } ;
struct hso_device {TYPE_1__ port_data; } ;



__attribute__((used)) static inline struct hso_serial *dev2ser(struct hso_device *hso_dev)
{
 return hso_dev->port_data.dev_serial;
}
