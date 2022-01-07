
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int TIS ;
 int TIS_RESERVED ;
 int TIS_TFUF ;
 int ravb_get_tx_tstamp (struct net_device*) ;
 int ravb_read (struct net_device*,int ) ;
 int ravb_write (struct net_device*,int,int ) ;

__attribute__((used)) static bool ravb_timestamp_interrupt(struct net_device *ndev)
{
 u32 tis = ravb_read(ndev, TIS);

 if (tis & TIS_TFUF) {
  ravb_write(ndev, ~(TIS_TFUF | TIS_RESERVED), TIS);
  ravb_get_tx_tstamp(ndev);
  return 1;
 }
 return 0;
}
