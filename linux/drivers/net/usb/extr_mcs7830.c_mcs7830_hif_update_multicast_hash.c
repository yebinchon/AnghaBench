
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct mcs7830_data {int multi_filter; } ;


 int HIF_REG_MULTICAST_HASH ;
 struct mcs7830_data* mcs7830_get_data (struct usbnet*) ;
 int mcs7830_set_reg_async (struct usbnet*,int ,int,int ) ;

__attribute__((used)) static void mcs7830_hif_update_multicast_hash(struct usbnet *dev)
{
 struct mcs7830_data *data = mcs7830_get_data(dev);
 mcs7830_set_reg_async(dev, HIF_REG_MULTICAST_HASH,
    sizeof data->multi_filter,
    data->multi_filter);
}
