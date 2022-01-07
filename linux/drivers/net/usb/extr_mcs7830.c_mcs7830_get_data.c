
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int data; } ;
struct mcs7830_data {int dummy; } ;



__attribute__((used)) static inline struct mcs7830_data *mcs7830_get_data(struct usbnet *dev)
{
 return (struct mcs7830_data *)&dev->data;
}
