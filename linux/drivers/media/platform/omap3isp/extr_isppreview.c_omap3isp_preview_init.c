
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_prev_device {int wait; } ;
struct isp_device {struct isp_prev_device isp_prev; } ;


 int init_waitqueue_head (int *) ;
 int preview_init_entities (struct isp_prev_device*) ;
 int preview_init_params (struct isp_prev_device*) ;

int omap3isp_preview_init(struct isp_device *isp)
{
 struct isp_prev_device *prev = &isp->isp_prev;

 init_waitqueue_head(&prev->wait);

 preview_init_params(prev);

 return preview_init_entities(prev);
}
