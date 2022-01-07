
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_fh {int legacy_mode; int fh; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hdpvr_fh* kzalloc (int,int ) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,int ) ;
 int video_devdata (struct file*) ;

__attribute__((used)) static int hdpvr_open(struct file *file)
{
 struct hdpvr_fh *fh = kzalloc(sizeof(*fh), GFP_KERNEL);

 if (fh == ((void*)0))
  return -ENOMEM;
 fh->legacy_mode = 1;
 v4l2_fh_init(&fh->fh, video_devdata(file));
 v4l2_fh_add(&fh->fh);
 file->private_data = fh;
 return 0;
}
