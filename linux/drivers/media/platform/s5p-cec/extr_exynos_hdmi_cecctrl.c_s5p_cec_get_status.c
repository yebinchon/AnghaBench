
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_cec_dev {int dev; scalar_t__ reg; } ;


 scalar_t__ S5P_CEC_STATUS_0 ;
 scalar_t__ S5P_CEC_STATUS_1 ;
 scalar_t__ S5P_CEC_STATUS_2 ;
 scalar_t__ S5P_CEC_STATUS_3 ;
 scalar_t__ S5P_CEC_TX_STAT1 ;
 int dev_dbg (int ,char*,int) ;
 int readb (scalar_t__) ;

u32 s5p_cec_get_status(struct s5p_cec_dev *cec)
{
 u32 status = 0;

 status = readb(cec->reg + S5P_CEC_STATUS_0) & 0xf;
 status |= (readb(cec->reg + S5P_CEC_TX_STAT1) & 0xf) << 4;
 status |= readb(cec->reg + S5P_CEC_STATUS_1) << 8;
 status |= readb(cec->reg + S5P_CEC_STATUS_2) << 16;
 status |= readb(cec->reg + S5P_CEC_STATUS_3) << 24;

 dev_dbg(cec->dev, "status = 0x%x!\n", status);

 return status;
}
