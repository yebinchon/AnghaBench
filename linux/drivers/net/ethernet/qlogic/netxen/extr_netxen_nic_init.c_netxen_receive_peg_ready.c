
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netxen_adapter {int dummy; } ;


 int CRB_RCVPEG_STATE ;
 int EIO ;
 scalar_t__ NXRD32 (struct netxen_adapter*,int ) ;
 scalar_t__ PHAN_PEG_RCV_INITIALIZED ;
 int msleep (int) ;
 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static int
netxen_receive_peg_ready(struct netxen_adapter *adapter)
{
 u32 val = 0;
 int retries = 2000;

 do {
  val = NXRD32(adapter, CRB_RCVPEG_STATE);

  if (val == PHAN_PEG_RCV_INITIALIZED)
   return 0;

  msleep(10);

 } while (--retries);

 pr_err("Receive Peg initialization not complete, state: 0x%x.\n", val);
 return -EIO;
}
