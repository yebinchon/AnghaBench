
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int dummy; } ;


 int CIR_WAKE_FIFOCON ;
 int CIR_WAKE_FIFOCON_RXFIFOCLR ;
 int CIR_WAKE_IRCON ;
 int CIR_WAKE_IRCON_MODE0 ;
 int nvt_cir_wake_reg_read (struct nvt_dev*,int ) ;
 int nvt_cir_wake_reg_write (struct nvt_dev*,int,int ) ;

__attribute__((used)) static void nvt_clear_cir_wake_fifo(struct nvt_dev *nvt)
{
 u8 val, config;

 config = nvt_cir_wake_reg_read(nvt, CIR_WAKE_IRCON);


 nvt_cir_wake_reg_write(nvt, config & ~CIR_WAKE_IRCON_MODE0,
          CIR_WAKE_IRCON);

 val = nvt_cir_wake_reg_read(nvt, CIR_WAKE_FIFOCON);
 nvt_cir_wake_reg_write(nvt, val | CIR_WAKE_FIFOCON_RXFIFOCLR,
          CIR_WAKE_FIFOCON);

 nvt_cir_wake_reg_write(nvt, config, CIR_WAKE_IRCON);
}
