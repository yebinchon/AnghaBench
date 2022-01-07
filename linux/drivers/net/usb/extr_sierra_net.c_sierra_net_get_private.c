
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct sierra_net_data {int dummy; } ;



__attribute__((used)) static inline struct sierra_net_data *sierra_net_get_private(struct usbnet *dev)
{
 return (struct sierra_net_data *)dev->data[0];
}
