
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int wl; } ;



 int B43_FWPANIC_REASON_REG ;

 int B43_SHM_SCRATCH ;
 int b43_controller_restart (struct b43_wldev*,char*) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43dbg (int ,char*) ;
 int b43err (int ,char*,int) ;

__attribute__((used)) static void b43_handle_firmware_panic(struct b43_wldev *dev)
{
 u16 reason;


 reason = b43_shm_read16(dev, B43_SHM_SCRATCH, B43_FWPANIC_REASON_REG);
 b43err(dev->wl, "Whoopsy, firmware panic! Reason: %u\n", reason);

 switch (reason) {
 default:
  b43dbg(dev->wl, "The panic reason is unknown.\n");

 case 129:




  break;
 case 128:
  b43_controller_restart(dev, "Microcode panic");
  break;
 }
}
