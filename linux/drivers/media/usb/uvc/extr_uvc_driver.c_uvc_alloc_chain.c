
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_chain {int prio; struct uvc_device* dev; int ctrl_mutex; int entities; } ;
struct uvc_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct uvc_video_chain* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int v4l2_prio_init (int *) ;

__attribute__((used)) static struct uvc_video_chain *uvc_alloc_chain(struct uvc_device *dev)
{
 struct uvc_video_chain *chain;

 chain = kzalloc(sizeof(*chain), GFP_KERNEL);
 if (chain == ((void*)0))
  return ((void*)0);

 INIT_LIST_HEAD(&chain->entities);
 mutex_init(&chain->ctrl_mutex);
 chain->dev = dev;
 v4l2_prio_init(&chain->prio);

 return chain;
}
