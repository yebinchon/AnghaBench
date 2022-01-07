
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vf610_nfc {int dummy; } ;


 int vf610_nfc_read (struct vf610_nfc*,int) ;
 int vf610_nfc_write (struct vf610_nfc*,int,int) ;

__attribute__((used)) static inline void vf610_nfc_set_field(struct vf610_nfc *nfc, u32 reg,
           u32 mask, u32 shift, u32 val)
{
 vf610_nfc_write(nfc, reg,
   (vf610_nfc_read(nfc, reg) & (~mask)) | val << shift);
}
