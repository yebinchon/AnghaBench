
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {scalar_t__ media_type; int media_timer; int dev; scalar_t__ media_lock; } ;


 int BUG_ON (int) ;
 scalar_t__ DE_MEDIA_AUI ;
 scalar_t__ DE_MEDIA_BNC ;
 scalar_t__ DE_MEDIA_TP_AUTO ;
 scalar_t__ DE_TIMER_LINK ;
 scalar_t__ DE_TIMER_NO_LINK ;
 int LinkFail ;
 int LinkPass ;
 int de_link_down (struct de_private*) ;
 int de_link_up (struct de_private*) ;
 int de_ok_to_advertise (struct de_private*,scalar_t__) ;
 int de_set_media (struct de_private*) ;
 int de_start_rxtx (struct de_private*) ;
 int de_stop_rxtx (struct de_private*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ netif_carrier_ok (int ) ;

__attribute__((used)) static void de_media_interrupt (struct de_private *de, u32 status)
{
 if (status & LinkPass) {

  if ((de->media_type == DE_MEDIA_AUI ||
       de->media_type == DE_MEDIA_BNC) &&
      (de->media_lock ||
       !de_ok_to_advertise(de, DE_MEDIA_TP_AUTO)))
   return;

  if ((de->media_type == DE_MEDIA_AUI ||
       de->media_type == DE_MEDIA_BNC)) {
   de->media_type = DE_MEDIA_TP_AUTO;
   de_stop_rxtx(de);
   de_set_media(de);
   de_start_rxtx(de);
  }
  de_link_up(de);
  mod_timer(&de->media_timer, jiffies + DE_TIMER_LINK);
  return;
 }

 BUG_ON(!(status & LinkFail));

 if (netif_carrier_ok(de->dev) && de->media_type != DE_MEDIA_AUI &&
     de->media_type != DE_MEDIA_BNC) {
  de_link_down(de);
  mod_timer(&de->media_timer, jiffies + DE_TIMER_NO_LINK);
 }
}
