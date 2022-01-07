
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_nfc {int dummy; } ;


 int NFC_SECTOR_SIZE ;
 int vf610_nfc_write (struct vf610_nfc*,int ,int) ;

__attribute__((used)) static inline void vf610_nfc_transfer_size(struct vf610_nfc *nfc, int size)
{
 vf610_nfc_write(nfc, NFC_SECTOR_SIZE, size);
}
