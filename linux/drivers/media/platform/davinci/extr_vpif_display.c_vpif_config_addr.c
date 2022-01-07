
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct common_obj {int set_addr; } ;
struct channel_obj {scalar_t__ channel_id; struct common_obj* common; } ;


 scalar_t__ VPIF_CHANNEL3_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 int ch2_set_videobuf_addr ;
 int ch2_set_videobuf_addr_yc_nmux ;
 int ch3_set_videobuf_addr ;

__attribute__((used)) static void vpif_config_addr(struct channel_obj *ch, int muxmode)
{
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

 if (VPIF_CHANNEL3_VIDEO == ch->channel_id) {
  common->set_addr = ch3_set_videobuf_addr;
 } else {
  if (2 == muxmode)
   common->set_addr = ch2_set_videobuf_addr_yc_nmux;
  else
   common->set_addr = ch2_set_videobuf_addr;
 }
}
