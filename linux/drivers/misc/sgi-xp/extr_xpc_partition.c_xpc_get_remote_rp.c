
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_rsvd_page {scalar_t__ ts_jiffies; scalar_t__ SAL_partid; scalar_t__ max_npartitions; int version; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 scalar_t__ XPC_RP_HEADER_SIZE ;
 unsigned long* XPC_RP_PART_NASIDS (struct xpc_rsvd_page*) ;
 int XPC_RP_VERSION ;
 scalar_t__ XPC_VERSION_MAJOR (int ) ;
 int xpBadVersion ;
 int xpInvalidPartid ;
 int xpLocalPartid ;
 int xpNoRsvdPageAddr ;
 int xpRsvdPageNotSet ;
 int xpSuccess ;
 scalar_t__ xp_max_npartitions ;
 int xp_pa (struct xpc_rsvd_page*) ;
 scalar_t__ xp_partition_id ;
 int xp_remote_memcpy (int ,unsigned long,scalar_t__) ;
 unsigned long xpc_get_rsvd_page_pa (int) ;
 scalar_t__ xpc_nasid_mask_nbytes ;
 int xpc_nasid_mask_nlongs ;

enum xp_retval
xpc_get_remote_rp(int nasid, unsigned long *discovered_nasids,
    struct xpc_rsvd_page *remote_rp, unsigned long *remote_rp_pa)
{
 int l;
 enum xp_retval ret;



 *remote_rp_pa = xpc_get_rsvd_page_pa(nasid);
 if (*remote_rp_pa == 0)
  return xpNoRsvdPageAddr;


 ret = xp_remote_memcpy(xp_pa(remote_rp), *remote_rp_pa,
          XPC_RP_HEADER_SIZE + xpc_nasid_mask_nbytes);
 if (ret != xpSuccess)
  return ret;

 if (discovered_nasids != ((void*)0)) {
  unsigned long *remote_part_nasids =
      XPC_RP_PART_NASIDS(remote_rp);

  for (l = 0; l < xpc_nasid_mask_nlongs; l++)
   discovered_nasids[l] |= remote_part_nasids[l];
 }


 if (remote_rp->ts_jiffies == 0)
  return xpRsvdPageNotSet;

 if (XPC_VERSION_MAJOR(remote_rp->version) !=
     XPC_VERSION_MAJOR(XPC_RP_VERSION)) {
  return xpBadVersion;
 }


 if (remote_rp->SAL_partid < 0 ||
     remote_rp->SAL_partid >= xp_max_npartitions ||
     remote_rp->max_npartitions <= xp_partition_id) {
  return xpInvalidPartid;
 }

 if (remote_rp->SAL_partid == xp_partition_id)
  return xpLocalPartid;

 return xpSuccess;
}
