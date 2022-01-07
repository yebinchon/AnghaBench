
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vf610_nfc {int dummy; } ;


 int CMD_DONE_CLEAR_BIT ;
 int IDLE_CLEAR_BIT ;
 int NFC_IRQ_STATUS ;
 int vf610_nfc_read (struct vf610_nfc*,int ) ;
 int vf610_nfc_write (struct vf610_nfc*,int ,int) ;

__attribute__((used)) static inline void vf610_nfc_clear_status(struct vf610_nfc *nfc)
{
 u32 tmp = vf610_nfc_read(nfc, NFC_IRQ_STATUS);

 tmp |= CMD_DONE_CLEAR_BIT | IDLE_CLEAR_BIT;
 vf610_nfc_write(nfc, NFC_IRQ_STATUS, tmp);
}
