
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_video_chain {int dummy; } ;
struct TYPE_2__ {scalar_t__ prev; scalar_t__ next; } ;
struct uvc_entity {int id; TYPE_1__ chain; } ;


 int EINVAL ;
 int UVC_TRACE_DESCR ;
 int UVC_TRACE_PROBE ;
 scalar_t__ uvc_scan_chain_backward (struct uvc_video_chain*,struct uvc_entity**) ;
 scalar_t__ uvc_scan_chain_entity (struct uvc_video_chain*,struct uvc_entity*) ;
 scalar_t__ uvc_scan_chain_forward (struct uvc_video_chain*,struct uvc_entity*,struct uvc_entity*) ;
 int uvc_trace (int ,char*,...) ;

__attribute__((used)) static int uvc_scan_chain(struct uvc_video_chain *chain,
     struct uvc_entity *term)
{
 struct uvc_entity *entity, *prev;

 uvc_trace(UVC_TRACE_PROBE, "Scanning UVC chain:");

 entity = term;
 prev = ((void*)0);

 while (entity != ((void*)0)) {

  if (entity->chain.next || entity->chain.prev) {
   uvc_trace(UVC_TRACE_DESCR, "Found reference to "
    "entity %d already in chain.\n", entity->id);
   return -EINVAL;
  }


  if (uvc_scan_chain_entity(chain, entity) < 0)
   return -EINVAL;


  if (uvc_scan_chain_forward(chain, entity, prev) < 0)
   return -EINVAL;


  prev = entity;
  if (uvc_scan_chain_backward(chain, &entity) < 0)
   return -EINVAL;
 }

 return 0;
}
