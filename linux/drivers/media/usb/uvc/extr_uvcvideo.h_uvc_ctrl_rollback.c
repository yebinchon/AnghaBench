
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_fh {int dummy; } ;


 int __uvc_ctrl_commit (struct uvc_fh*,int,int *,int ) ;

__attribute__((used)) static inline int uvc_ctrl_rollback(struct uvc_fh *handle)
{
 return __uvc_ctrl_commit(handle, 1, ((void*)0), 0);
}
