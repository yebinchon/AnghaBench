
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ reg_base; } ;


 int RX_DATA_RESET ;
 int RX_PKT_RESET ;
 int TX_DATA_RESET ;
 int TX_PKT_RESET ;
 scalar_t__ XCV_BATCH_CRD_RET ;
 scalar_t__ XCV_CTL ;
 scalar_t__ XCV_RESET ;
 int pr_err (char*) ;
 int readq_relaxed (scalar_t__) ;
 int writeq_relaxed (int,scalar_t__) ;
 TYPE_1__* xcv ;

void xcv_setup_link(bool link_up, int link_speed)
{
 u64 cfg;
 int speed = 2;

 if (!xcv) {
  pr_err("XCV init not done, probe may have failed\n");
  return;
 }

 if (link_speed == 100)
  speed = 1;
 else if (link_speed == 10)
  speed = 0;

 if (link_up) {

  cfg = readq_relaxed(xcv->reg_base + XCV_CTL);
  cfg &= ~0x03;
  cfg |= speed;
  writeq_relaxed(cfg, xcv->reg_base + XCV_CTL);


  cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
  cfg |= TX_DATA_RESET | RX_DATA_RESET;
  writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);


  cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
  cfg |= TX_PKT_RESET | RX_PKT_RESET;
  writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);


  writeq_relaxed(0x01, xcv->reg_base + XCV_BATCH_CRD_RET);
 } else {

  cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
  cfg &= ~(TX_PKT_RESET | RX_PKT_RESET);
  writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);
  readq_relaxed(xcv->reg_base + XCV_RESET);
 }
}
