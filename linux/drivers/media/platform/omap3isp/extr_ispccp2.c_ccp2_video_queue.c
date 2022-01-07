
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_video {TYPE_1__* isp; } ;
struct isp_ccp2_device {int dummy; } ;
struct isp_buffer {int dma; } ;
struct TYPE_2__ {struct isp_ccp2_device isp_ccp2; } ;


 int ccp2_set_inaddr (struct isp_ccp2_device*,int ) ;

__attribute__((used)) static int ccp2_video_queue(struct isp_video *video, struct isp_buffer *buffer)
{
 struct isp_ccp2_device *ccp2 = &video->isp->isp_ccp2;

 ccp2_set_inaddr(ccp2, buffer->dma);
 return 0;
}
