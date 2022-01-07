
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct media_request* private_data; } ;


 int media_request_put (struct media_request*) ;

__attribute__((used)) static int media_request_close(struct inode *inode, struct file *filp)
{
 struct media_request *req = filp->private_data;

 media_request_put(req);
 return 0;
}
