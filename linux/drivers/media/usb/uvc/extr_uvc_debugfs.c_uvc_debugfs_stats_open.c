
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {int dummy; } ;
struct uvc_debugfs_buffer {int data; int count; } ;
struct inode {struct uvc_streaming* i_private; } ;
struct file {struct uvc_debugfs_buffer* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct uvc_debugfs_buffer* kmalloc (int,int ) ;
 int uvc_video_stats_dump (struct uvc_streaming*,int ,int) ;

__attribute__((used)) static int uvc_debugfs_stats_open(struct inode *inode, struct file *file)
{
 struct uvc_streaming *stream = inode->i_private;
 struct uvc_debugfs_buffer *buf;

 buf = kmalloc(sizeof(*buf), GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 buf->count = uvc_video_stats_dump(stream, buf->data, sizeof(buf->data));

 file->private_data = buf;
 return 0;
}
