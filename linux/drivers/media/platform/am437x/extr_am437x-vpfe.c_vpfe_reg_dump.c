
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int dummy; } ;
struct vpfe_ccdc {int dummy; } ;


 int VPFE_ALAW ;
 int VPFE_BLKCMP ;
 int VPFE_CLAMP ;
 int VPFE_COLPTN ;
 int VPFE_DCSUB ;
 int VPFE_HORZ_INFO ;
 int VPFE_HSIZE_OFF ;
 int VPFE_SDOFST ;
 int VPFE_SYNMODE ;
 int VPFE_VERT_LINES ;
 int VPFE_VERT_START ;
 struct vpfe_device* to_vpfe (struct vpfe_ccdc*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*,int ) ;
 int vpfe_reg_read (struct vpfe_ccdc*,int ) ;

__attribute__((used)) static void vpfe_reg_dump(struct vpfe_ccdc *ccdc)
{
 struct vpfe_device *vpfe = to_vpfe(ccdc);

 vpfe_dbg(3, vpfe, "ALAW: 0x%x\n", vpfe_reg_read(ccdc, VPFE_ALAW));
 vpfe_dbg(3, vpfe, "CLAMP: 0x%x\n", vpfe_reg_read(ccdc, VPFE_CLAMP));
 vpfe_dbg(3, vpfe, "DCSUB: 0x%x\n", vpfe_reg_read(ccdc, VPFE_DCSUB));
 vpfe_dbg(3, vpfe, "BLKCMP: 0x%x\n", vpfe_reg_read(ccdc, VPFE_BLKCMP));
 vpfe_dbg(3, vpfe, "COLPTN: 0x%x\n", vpfe_reg_read(ccdc, VPFE_COLPTN));
 vpfe_dbg(3, vpfe, "SDOFST: 0x%x\n", vpfe_reg_read(ccdc, VPFE_SDOFST));
 vpfe_dbg(3, vpfe, "SYN_MODE: 0x%x\n",
   vpfe_reg_read(ccdc, VPFE_SYNMODE));
 vpfe_dbg(3, vpfe, "HSIZE_OFF: 0x%x\n",
   vpfe_reg_read(ccdc, VPFE_HSIZE_OFF));
 vpfe_dbg(3, vpfe, "HORZ_INFO: 0x%x\n",
   vpfe_reg_read(ccdc, VPFE_HORZ_INFO));
 vpfe_dbg(3, vpfe, "VERT_START: 0x%x\n",
   vpfe_reg_read(ccdc, VPFE_VERT_START));
 vpfe_dbg(3, vpfe, "VERT_LINES: 0x%x\n",
   vpfe_reg_read(ccdc, VPFE_VERT_LINES));
}
