
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u64 ;
typedef int u16 ;
struct cxl_afu {int crs_len; TYPE_1__* guest; } ;
struct TYPE_2__ {int handle; } ;


 int ENOENT ;
 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int cxl_h_get_config (int ,int,char,int ,int) ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 char in_le16 (int *) ;
 char in_le32 (unsigned int*) ;
 char in_le64 (char*) ;
 scalar_t__ unlikely (int) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int _guest_afu_cr_readXX(int sz, struct cxl_afu *afu, int cr_idx,
   u64 offset, u64 *val)
{
 unsigned long cr;
 char c;
 int rc = 0;

 if (afu->crs_len < sz)
  return -ENOENT;

 if (unlikely(offset >= afu->crs_len))
  return -ERANGE;

 cr = get_zeroed_page(GFP_KERNEL);
 if (!cr)
  return -ENOMEM;

 rc = cxl_h_get_config(afu->guest->handle, cr_idx, offset,
   virt_to_phys((void *)cr), sz);
 if (rc)
  goto err;

 switch (sz) {
 case 1:
  c = *((char *) cr);
  *val = c;
  break;
 case 2:
  *val = in_le16((u16 *)cr);
  break;
 case 4:
  *val = in_le32((unsigned *)cr);
  break;
 case 8:
  *val = in_le64((u64 *)cr);
  break;
 default:
  WARN_ON(1);
 }
err:
 free_page(cr);
 return rc;
}
