
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {scalar_t__ db; } ;


 int EIO ;
 int SLIPORT_READY_TIMEOUT ;
 int SLIPORT_STATUS_ERR_MASK ;
 scalar_t__ SLIPORT_STATUS_OFFSET ;
 int SLIPORT_STATUS_RDY_MASK ;
 int SLIPORT_STATUS_RN_MASK ;
 int ioread32 (scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int lancer_wait_ready(struct be_adapter *adapter)
{

 u32 sliport_status;
 int i;

 for (i = 0; i < 30; i++) {
  sliport_status = ioread32(adapter->db + SLIPORT_STATUS_OFFSET);
  if (sliport_status & SLIPORT_STATUS_RDY_MASK)
   return 0;

  if (sliport_status & SLIPORT_STATUS_ERR_MASK &&
      !(sliport_status & SLIPORT_STATUS_RN_MASK))
   return -EIO;

  msleep(1000);
 }

 return sliport_status ? : -1;
}
