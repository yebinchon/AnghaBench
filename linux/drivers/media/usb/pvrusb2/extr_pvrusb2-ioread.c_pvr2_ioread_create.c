
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {int dummy; } ;


 int GFP_KERNEL ;
 int PVR2_TRACE_STRUCT ;
 int kfree (struct pvr2_ioread*) ;
 struct pvr2_ioread* kzalloc (int,int ) ;
 scalar_t__ pvr2_ioread_init (struct pvr2_ioread*) ;
 int pvr2_trace (int ,char*,struct pvr2_ioread*) ;

struct pvr2_ioread *pvr2_ioread_create(void)
{
 struct pvr2_ioread *cp;
 cp = kzalloc(sizeof(*cp),GFP_KERNEL);
 if (!cp) return ((void*)0);
 pvr2_trace(PVR2_TRACE_STRUCT,"pvr2_ioread_create id=%p",cp);
 if (pvr2_ioread_init(cp) < 0) {
  kfree(cp);
  return ((void*)0);
 }
 return cp;
}
