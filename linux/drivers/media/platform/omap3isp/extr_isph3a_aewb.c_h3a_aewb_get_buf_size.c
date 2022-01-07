
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap3isp_h3a_aewb_config {int ver_win_count; int hor_win_count; } ;


 int AEWB_PACKET_SIZE ;

__attribute__((used)) static u32 h3a_aewb_get_buf_size(struct omap3isp_h3a_aewb_config *conf)
{

 u32 win_count = (conf->ver_win_count + 1) * conf->hor_win_count;






 win_count += (win_count + 7) / 8;

 return win_count * AEWB_PACKET_SIZE;
}
