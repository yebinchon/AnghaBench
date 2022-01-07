
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_afu {TYPE_1__* guest; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int handle; } ;


 int ENOMEM ;
 size_t ERR_BUFF_MAX_COPY_SIZE ;
 int GFP_KERNEL ;
 int cxl_h_get_afu_err (int ,int,int ,size_t) ;
 int free_page (int ) ;
 scalar_t__ get_zeroed_page (int ) ;
 int memcpy (char*,void*,size_t) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static ssize_t guest_afu_read_err_buffer(struct cxl_afu *afu, char *buf,
     loff_t off, size_t count)
{
 void *tbuf = ((void*)0);
 int rc = 0;

 tbuf = (void *) get_zeroed_page(GFP_KERNEL);
 if (!tbuf)
  return -ENOMEM;

 rc = cxl_h_get_afu_err(afu->guest->handle,
          off & 0x7,
          virt_to_phys(tbuf),
          count);
 if (rc)
  goto err;

 if (count > ERR_BUFF_MAX_COPY_SIZE)
  count = ERR_BUFF_MAX_COPY_SIZE - (off & 0x7);
 memcpy(buf, tbuf, count);
err:
 free_page((u64)tbuf);

 return rc;
}
