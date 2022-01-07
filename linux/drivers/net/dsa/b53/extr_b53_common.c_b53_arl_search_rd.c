
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct b53_device {int dummy; } ;
struct b53_arl_entry {int dummy; } ;


 int B53_ARLIO_PAGE ;
 int B53_ARL_SRCH_RSTL (int ) ;
 int B53_ARL_SRCH_RSTL_MACVID (int ) ;
 int b53_arl_to_entry (struct b53_arl_entry*,int ,int ) ;
 int b53_read32 (struct b53_device*,int ,int ,int *) ;
 int b53_read64 (struct b53_device*,int ,int ,int *) ;

__attribute__((used)) static void b53_arl_search_rd(struct b53_device *dev, u8 idx,
         struct b53_arl_entry *ent)
{
 u64 mac_vid;
 u32 fwd_entry;

 b53_read64(dev, B53_ARLIO_PAGE,
     B53_ARL_SRCH_RSTL_MACVID(idx), &mac_vid);
 b53_read32(dev, B53_ARLIO_PAGE,
     B53_ARL_SRCH_RSTL(idx), &fwd_entry);
 b53_arl_to_entry(ent, mac_vid, fwd_entry);
}
