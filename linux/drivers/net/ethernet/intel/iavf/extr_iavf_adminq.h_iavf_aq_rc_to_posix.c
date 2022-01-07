
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int aq_to_posix ;


 int E2BIG ;
 int EACCES ;
 int EAGAIN ;
 int EBUSY ;
 int EEXIST ;
 int EFAULT ;
 int EFBIG ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int ENOSYS ;
 int ENOTTY ;
 int ENXIO ;
 int EPERM ;
 int EPIPE ;
 int ERANGE ;
 int EROFS ;
 int ESPIPE ;
 int ESRCH ;
 int IAVF_ERR_ADMIN_QUEUE_TIMEOUT ;

__attribute__((used)) static inline int iavf_aq_rc_to_posix(int aq_ret, int aq_rc)
{
 int aq_to_posix[] = {
  0,
  -EPERM,
  -ENOENT,
  -ESRCH,
  -EINTR,
  -EIO,
  -ENXIO,
  -E2BIG,
  -EAGAIN,
  -ENOMEM,
  -EACCES,
  -EFAULT,
  -EBUSY,
  -EEXIST,
  -EINVAL,
  -ENOTTY,
  -ENOSPC,
  -ENOSYS,
  -ERANGE,
  -EPIPE,
  -ESPIPE,
  -EROFS,
  -EFBIG,
 };


 if (aq_ret == IAVF_ERR_ADMIN_QUEUE_TIMEOUT)
  return -EAGAIN;

 if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
  return -ERANGE;

 return aq_to_posix[aq_rc];
}
