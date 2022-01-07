
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int hwrevision; } ;


 int RDR_CFG2 ;
 int cx_read (int ) ;
 int pr_info (char*,int) ;

__attribute__((used)) static void cx25821_dev_checkrevision(struct cx25821_dev *dev)
{
 dev->hwrevision = cx_read(RDR_CFG2) & 0xff;

 pr_info("Hardware revision = 0x%02x\n", dev->hwrevision);
}
