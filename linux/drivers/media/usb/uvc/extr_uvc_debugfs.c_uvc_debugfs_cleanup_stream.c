
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {int * debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void uvc_debugfs_cleanup_stream(struct uvc_streaming *stream)
{
 debugfs_remove_recursive(stream->debugfs_dir);
 stream->debugfs_dir = ((void*)0);
}
