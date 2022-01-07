
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap3isp_hist_config {int num_regions; int hist_bins; } ;


 int OMAP3ISP_HIST_MEM_SIZE_BINS (int ) ;

__attribute__((used)) static u32 hist_get_buf_size(struct omap3isp_hist_config *conf)
{
 return OMAP3ISP_HIST_MEM_SIZE_BINS(conf->hist_bins) * conf->num_regions;
}
