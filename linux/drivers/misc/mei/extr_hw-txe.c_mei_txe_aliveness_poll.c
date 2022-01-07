
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mei_txe_hw {scalar_t__ aliveness; } ;
struct mei_device {int dev; void* pg_event; } ;
typedef int ktime_t ;


 int ETIME ;
 void* MEI_PG_EVENT_IDLE ;
 int SEC_ALIVENESS_WAIT_TIMEOUT ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*) ;
 int ktime_add (int ,int ) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 scalar_t__ mei_txe_aliveness_get (struct mei_device*) ;
 int ms_to_ktime (int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mei_txe_aliveness_poll(struct mei_device *dev, u32 expected)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);
 ktime_t stop, start;

 start = ktime_get();
 stop = ktime_add(start, ms_to_ktime(SEC_ALIVENESS_WAIT_TIMEOUT));
 do {
  hw->aliveness = mei_txe_aliveness_get(dev);
  if (hw->aliveness == expected) {
   dev->pg_event = MEI_PG_EVENT_IDLE;
   dev_dbg(dev->dev, "aliveness settled after %lld usecs\n",
    ktime_to_us(ktime_sub(ktime_get(), start)));
   return 0;
  }
  usleep_range(20, 50);
 } while (ktime_before(ktime_get(), stop));

 dev->pg_event = MEI_PG_EVENT_IDLE;
 dev_err(dev->dev, "aliveness timed out\n");
 return -ETIME;
}
