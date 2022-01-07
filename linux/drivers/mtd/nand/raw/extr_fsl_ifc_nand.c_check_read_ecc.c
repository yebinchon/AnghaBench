
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtd_info {int dummy; } ;
struct fsl_ifc_ctrl {int dummy; } ;



__attribute__((used)) static int check_read_ecc(struct mtd_info *mtd, struct fsl_ifc_ctrl *ctrl,
     u32 eccstat, unsigned int bufnum)
{
 return (eccstat >> ((3 - bufnum % 4) * 8)) & 15;
}
