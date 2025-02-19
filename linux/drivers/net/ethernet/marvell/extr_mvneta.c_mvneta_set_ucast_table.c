
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_port {int dummy; } ;


 scalar_t__ MVNETA_DA_FILT_UCAST_BASE ;
 int mvreg_write (struct mvneta_port*,scalar_t__,int) ;

__attribute__((used)) static void mvneta_set_ucast_table(struct mvneta_port *pp, int queue)
{
 int offset;
 u32 val;

 if (queue == -1) {
  val = 0;
 } else {
  val = 0x1 | (queue << 1);
  val |= (val << 24) | (val << 16) | (val << 8);
 }

 for (offset = 0; offset <= 0xc; offset += 4)
  mvreg_write(pp, MVNETA_DA_FILT_UCAST_BASE + offset, val);
}
