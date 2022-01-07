
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct cgx_link_user_info {size_t link_up; size_t full_duplex; size_t lmac_type_id; int lmac_type; int speed; } ;
struct cgx {int dummy; } ;


 size_t FIELD_GET (int ,int ) ;
 scalar_t__ LMACTYPE_STR_LEN ;
 int RESP_LINKSTAT_FDUPLEX ;
 int RESP_LINKSTAT_SPEED ;
 int RESP_LINKSTAT_UP ;
 size_t cgx_get_lmac_type (struct cgx*,int ) ;
 char** cgx_lmactype_string ;
 int * cgx_speed_mbps ;
 int strncpy (int ,char*,scalar_t__) ;

__attribute__((used)) static inline void link_status_user_format(u64 lstat,
        struct cgx_link_user_info *linfo,
        struct cgx *cgx, u8 lmac_id)
{
 char *lmac_string;

 linfo->link_up = FIELD_GET(RESP_LINKSTAT_UP, lstat);
 linfo->full_duplex = FIELD_GET(RESP_LINKSTAT_FDUPLEX, lstat);
 linfo->speed = cgx_speed_mbps[FIELD_GET(RESP_LINKSTAT_SPEED, lstat)];
 linfo->lmac_type_id = cgx_get_lmac_type(cgx, lmac_id);
 lmac_string = cgx_lmactype_string[linfo->lmac_type_id];
 strncpy(linfo->lmac_type, lmac_string, LMACTYPE_STR_LEN - 1);
}
