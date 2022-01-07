
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {int dummy; } ;
struct isp_device {int dev; } ;


 int CNT ;
 int IN_SIZE ;
 int IN_START ;
 int OUT_SIZE ;
 int PCR ;
 int RSZ_PRINT_REGISTER (struct isp_device*,int ) ;
 int SDR_INADD ;
 int SDR_INOFF ;
 int SDR_OUTADD ;
 int SDR_OUTOFF ;
 int YENH ;
 int dev_dbg (int ,char*) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_print_status(struct isp_res_device *res)
{
 struct isp_device *isp = to_isp_device(res);

 dev_dbg(isp->dev, "-------------Resizer Register dump----------\n");

 RSZ_PRINT_REGISTER(isp, PCR);
 RSZ_PRINT_REGISTER(isp, CNT);
 RSZ_PRINT_REGISTER(isp, OUT_SIZE);
 RSZ_PRINT_REGISTER(isp, IN_START);
 RSZ_PRINT_REGISTER(isp, IN_SIZE);
 RSZ_PRINT_REGISTER(isp, SDR_INADD);
 RSZ_PRINT_REGISTER(isp, SDR_INOFF);
 RSZ_PRINT_REGISTER(isp, SDR_OUTADD);
 RSZ_PRINT_REGISTER(isp, SDR_OUTOFF);
 RSZ_PRINT_REGISTER(isp, YENH);

 dev_dbg(isp->dev, "--------------------------------------------\n");
}
