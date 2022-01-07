
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct mcs7830_data {int config; } ;


 int HIF_REG_CONFIG ;
 struct mcs7830_data* mcs7830_get_data (struct usbnet*) ;
 int mcs7830_set_reg_async (struct usbnet*,int ,int,int *) ;

__attribute__((used)) static void mcs7830_hif_update_config(struct usbnet *dev)
{


 struct mcs7830_data *data = mcs7830_get_data(dev);
 mcs7830_set_reg_async(dev, HIF_REG_CONFIG, 1, &data->config);
}
