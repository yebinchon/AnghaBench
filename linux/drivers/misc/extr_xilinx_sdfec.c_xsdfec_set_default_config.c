
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct xsdfec_dev {TYPE_1__ config; } ;


 int XSDFEC_FEC_CODE_ADDR ;
 int update_config_from_hw (struct xsdfec_dev*) ;
 int xsdfec_cfg_axi_streams (struct xsdfec_dev*) ;
 int xsdfec_regwrite (struct xsdfec_dev*,int ,int ) ;

__attribute__((used)) static int xsdfec_set_default_config(struct xsdfec_dev *xsdfec)
{

 xsdfec_regwrite(xsdfec, XSDFEC_FEC_CODE_ADDR, xsdfec->config.code);
 xsdfec_cfg_axi_streams(xsdfec);
 update_config_from_hw(xsdfec);

 return 0;
}
