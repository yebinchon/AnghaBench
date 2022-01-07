
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xsdfec_dev {int dev; } ;


 int EINVAL ;
 scalar_t__ XSDFEC_LDPC_CODE_REG3_ADDR_BASE ;
 scalar_t__ XSDFEC_LDPC_CODE_REG3_ADDR_HIGH ;
 int XSDFEC_LDPC_REG_JUMP ;
 int XSDFEC_REG3_LA_OFF_LSB ;
 int XSDFEC_REG3_QC_OFF_LSB ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int xsdfec_regwrite (struct xsdfec_dev*,scalar_t__,int) ;

__attribute__((used)) static int xsdfec_reg3_write(struct xsdfec_dev *xsdfec, u8 sc_off, u8 la_off,
        u16 qc_off, u32 offset)
{
 u32 wdata;

 wdata = ((qc_off << XSDFEC_REG3_QC_OFF_LSB) |
   (la_off << XSDFEC_REG3_LA_OFF_LSB) | sc_off);
 if (XSDFEC_LDPC_CODE_REG3_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
     XSDFEC_LDPC_CODE_REG3_ADDR_HIGH) {
  dev_dbg(xsdfec->dev, "Writing outside of LDPC reg3 space 0x%x",
   XSDFEC_LDPC_CODE_REG3_ADDR_BASE +
    (offset * XSDFEC_LDPC_REG_JUMP));
  return -EINVAL;
 }
 xsdfec_regwrite(xsdfec,
   XSDFEC_LDPC_CODE_REG3_ADDR_BASE +
    (offset * XSDFEC_LDPC_REG_JUMP),
   wdata);
 return 0;
}
