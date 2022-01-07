
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct mtd_info {int dummy; } ;


 int nfc_read (struct mtd_info*,int ) ;
 int nfc_write (struct mtd_info*,int ,int) ;

__attribute__((used)) static inline void nfc_clear(struct mtd_info *mtd, uint reg, u16 bits)
{
 nfc_write(mtd, reg, nfc_read(mtd, reg) & ~bits);
}
