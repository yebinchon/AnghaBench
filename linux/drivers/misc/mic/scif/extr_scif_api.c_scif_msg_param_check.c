
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scif_epd_t ;


 int EINVAL ;
 int SCIF_RECV_BLOCK ;

__attribute__((used)) static inline int scif_msg_param_check(scif_epd_t epd, int len, int flags)
{
 int ret = -EINVAL;

 if (len < 0)
  goto err_ret;
 if (flags && (!(flags & SCIF_RECV_BLOCK)))
  goto err_ret;
 ret = 0;
err_ret:
 return ret;
}
