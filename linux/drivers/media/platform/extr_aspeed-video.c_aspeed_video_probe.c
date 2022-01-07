
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct aspeed_video {int frame_rate; int base; int * dev; int buffers; int res_work; int wait; int video_lock; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int aspeed_video_init (struct aspeed_video*) ;
 int aspeed_video_resolution_work ;
 int aspeed_video_setup_video (struct aspeed_video*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int init_waitqueue_head (int *) ;
 struct aspeed_video* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int aspeed_video_probe(struct platform_device *pdev)
{
 int rc;
 struct resource *res;
 struct aspeed_video *video = kzalloc(sizeof(*video), GFP_KERNEL);

 if (!video)
  return -ENOMEM;

 video->frame_rate = 30;
 video->dev = &pdev->dev;
 spin_lock_init(&video->lock);
 mutex_init(&video->video_lock);
 init_waitqueue_head(&video->wait);
 INIT_DELAYED_WORK(&video->res_work, aspeed_video_resolution_work);
 INIT_LIST_HEAD(&video->buffers);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 video->base = devm_ioremap_resource(video->dev, res);

 if (IS_ERR(video->base))
  return PTR_ERR(video->base);

 rc = aspeed_video_init(video);
 if (rc)
  return rc;

 rc = aspeed_video_setup_video(video);
 if (rc)
  return rc;

 return 0;
}
