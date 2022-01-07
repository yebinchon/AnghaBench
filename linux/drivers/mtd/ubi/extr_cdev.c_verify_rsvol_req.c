
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_rsvol_req {scalar_t__ bytes; scalar_t__ vol_id; } ;
struct ubi_device {scalar_t__ vtbl_slots; } ;


 int EINVAL ;

__attribute__((used)) static int verify_rsvol_req(const struct ubi_device *ubi,
       const struct ubi_rsvol_req *req)
{
 if (req->bytes <= 0)
  return -EINVAL;

 if (req->vol_id < 0 || req->vol_id >= ubi->vtbl_slots)
  return -EINVAL;

 return 0;
}
