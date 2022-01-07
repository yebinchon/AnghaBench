
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_en; int rx_en; int en; } ;
union cvmx_agl_gmx_prtx_cfg {int u64; TYPE_1__ s; } ;
struct octeon_mgmt {scalar_t__ agl; } ;


 scalar_t__ AGL_GMX_PRT_CFG ;
 int cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,int ) ;

__attribute__((used)) static void octeon_mgmt_enable_link(struct octeon_mgmt *p)
{
 union cvmx_agl_gmx_prtx_cfg prtx_cfg;


 prtx_cfg.u64 = cvmx_read_csr(p->agl + AGL_GMX_PRT_CFG);
 prtx_cfg.s.tx_en = 1;
 prtx_cfg.s.rx_en = 1;
 prtx_cfg.s.en = 1;
 cvmx_write_csr(p->agl + AGL_GMX_PRT_CFG, prtx_cfg.u64);
}
