
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int mac_id; int dev; } ;


 int EBUSY ;
 int GMAC_FIFO_STATE_REG ;
 int HNS_MAX_WAIT_CNT ;
 int dev_err (int ,char*,int ) ;
 int dsaf_read_dev (struct mac_driver*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hns_gmac_wait_fifo_clean(void *mac_drv)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 int wait_cnt;
 u32 val;

 wait_cnt = 0;
 while (wait_cnt++ < HNS_MAX_WAIT_CNT) {
  val = dsaf_read_dev(drv, GMAC_FIFO_STATE_REG);

  if ((val & 0x3f) == 0)
   break;
  usleep_range(100, 200);
 }

 if (wait_cnt >= HNS_MAX_WAIT_CNT) {
  dev_err(drv->dev,
   "hns ge %d fifo was not idle.\n", drv->mac_id);
  return -EBUSY;
 }

 return 0;
}
