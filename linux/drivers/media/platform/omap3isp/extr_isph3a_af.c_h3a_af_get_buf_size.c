
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int h_cnt; int v_cnt; } ;
struct omap3isp_h3a_af_config {TYPE_1__ paxel; } ;


 int OMAP3ISP_AF_PAXEL_SIZE ;

__attribute__((used)) static u32 h3a_af_get_buf_size(struct omap3isp_h3a_af_config *conf)
{
 return conf->paxel.h_cnt * conf->paxel.v_cnt * OMAP3ISP_AF_PAXEL_SIZE;
}
