
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct osd_state {scalar_t__ osd_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 osd_read(struct osd_state *sd, u32 offset)
{
 struct osd_state *osd = sd;

 return readl(osd->osd_base + offset);
}
