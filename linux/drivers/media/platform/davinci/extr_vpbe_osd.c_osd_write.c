
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct osd_state {scalar_t__ osd_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32 osd_write(struct osd_state *sd, u32 val, u32 offset)
{
 struct osd_state *osd = sd;

 writel(val, osd->osd_base + offset);

 return val;
}
