
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {unsigned long* data; } ;
struct sierra_net_data {int dummy; } ;



__attribute__((used)) static inline void sierra_net_set_private(struct usbnet *dev,
   struct sierra_net_data *priv)
{
 dev->data[0] = (unsigned long)priv;
}
