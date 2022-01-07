
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {int pci_fn; int pdev; } ;


 scalar_t__ APE_LOCK_REQ_DRIVER ;
 scalar_t__ ASIC_REV_5761 ;
 int EBUSY ;
 int EINVAL ;
 int ENABLE_APE ;

 scalar_t__ TG3_APE_LOCK_GRANT ;






 scalar_t__ TG3_APE_LOCK_REQ ;
 scalar_t__ TG3_APE_PER_LOCK_GRANT ;
 scalar_t__ TG3_APE_PER_LOCK_REQ ;
 scalar_t__ pci_channel_offline (int ) ;
 scalar_t__ tg3_ape_read32 (struct tg3*,scalar_t__) ;
 int tg3_ape_write32 (struct tg3*,scalar_t__,scalar_t__) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 int tg3_flag (struct tg3*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_ape_lock(struct tg3 *tp, int locknum)
{
 int i, off;
 int ret = 0;
 u32 status, req, gnt, bit;

 if (!tg3_flag(tp, ENABLE_APE))
  return 0;

 switch (locknum) {
 case 134:
  if (tg3_asic_rev(tp) == ASIC_REV_5761)
   return 0;

 case 133:
 case 132:
  if (!tp->pci_fn)
   bit = APE_LOCK_REQ_DRIVER;
  else
   bit = 1 << tp->pci_fn;
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  bit = APE_LOCK_REQ_DRIVER;
  break;
 default:
  return -EINVAL;
 }

 if (tg3_asic_rev(tp) == ASIC_REV_5761) {
  req = TG3_APE_LOCK_REQ;
  gnt = TG3_APE_LOCK_GRANT;
 } else {
  req = TG3_APE_PER_LOCK_REQ;
  gnt = TG3_APE_PER_LOCK_GRANT;
 }

 off = 4 * locknum;

 tg3_ape_write32(tp, req + off, bit);


 for (i = 0; i < 100; i++) {
  status = tg3_ape_read32(tp, gnt + off);
  if (status == bit)
   break;
  if (pci_channel_offline(tp->pdev))
   break;

  udelay(10);
 }

 if (status != bit) {

  tg3_ape_write32(tp, gnt + off, bit);
  ret = -EBUSY;
 }

 return ret;
}
