
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {scalar_t__ idProduct; } ;


 scalar_t__ USB_BLACKBIRD_V2_PRODUCT_ID ;
 scalar_t__ USB_HYBRID_PRO_CANLIN_PRODUCT_ID ;

__attribute__((used)) static inline bool kvaser_is_hydra(const struct usb_device_id *id)
{
 return id->idProduct >= USB_BLACKBIRD_V2_PRODUCT_ID &&
        id->idProduct <= USB_HYBRID_PRO_CANLIN_PRODUCT_ID;
}
