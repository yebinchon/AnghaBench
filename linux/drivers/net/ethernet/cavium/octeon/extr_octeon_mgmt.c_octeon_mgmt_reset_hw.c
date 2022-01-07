
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; scalar_t__ busy; } ;
union cvmx_mixx_ctl {void* u64; TYPE_1__ s; } ;
union cvmx_mixx_bist {void* u64; } ;
union cvmx_agl_gmx_bist {void* u64; } ;
struct octeon_mgmt {int dev; scalar_t__ mix; } ;


 scalar_t__ CVMX_AGL_GMX_BIST ;
 scalar_t__ MIX_BIST ;
 scalar_t__ MIX_CTL ;
 void* cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,void*) ;
 int dev_warn (int ,char*,unsigned long long) ;
 int octeon_io_clk_delay (int) ;

__attribute__((used)) static void octeon_mgmt_reset_hw(struct octeon_mgmt *p)
{
 union cvmx_mixx_ctl mix_ctl;
 union cvmx_mixx_bist mix_bist;
 union cvmx_agl_gmx_bist agl_gmx_bist;

 mix_ctl.u64 = 0;
 cvmx_write_csr(p->mix + MIX_CTL, mix_ctl.u64);
 do {
  mix_ctl.u64 = cvmx_read_csr(p->mix + MIX_CTL);
 } while (mix_ctl.s.busy);
 mix_ctl.s.reset = 1;
 cvmx_write_csr(p->mix + MIX_CTL, mix_ctl.u64);
 cvmx_read_csr(p->mix + MIX_CTL);
 octeon_io_clk_delay(64);

 mix_bist.u64 = cvmx_read_csr(p->mix + MIX_BIST);
 if (mix_bist.u64)
  dev_warn(p->dev, "MIX failed BIST (0x%016llx)\n",
   (unsigned long long)mix_bist.u64);

 agl_gmx_bist.u64 = cvmx_read_csr(CVMX_AGL_GMX_BIST);
 if (agl_gmx_bist.u64)
  dev_warn(p->dev, "AGL failed BIST (0x%016llx)\n",
    (unsigned long long)agl_gmx_bist.u64);
}
