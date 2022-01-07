
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int flags; int ntp_fltr_bmap; scalar_t__ ntp_fltr_count; int * ntp_fltr_hash_tbl; } ;


 int BITS_TO_LONGS (int ) ;
 int BNXT_FLAG_RFS ;
 int BNXT_NTP_FLTR_HASH_SIZE ;
 int BNXT_NTP_FLTR_MAX_FLTR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int bnxt_alloc_ntp_fltrs(struct bnxt *bp)
{
 return 0;

}
