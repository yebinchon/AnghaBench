
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t DOC_LAYOUT_OOB_PAGEINFO_SZ ;
 size_t DOC_LAYOUT_OOB_UNUSED_OFS ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static void doc_fill_autooob(u8 *dst, u8 *oobsrc)
{
 memcpy(dst, oobsrc, DOC_LAYOUT_OOB_PAGEINFO_SZ);
 dst[DOC_LAYOUT_OOB_UNUSED_OFS] = oobsrc[DOC_LAYOUT_OOB_PAGEINFO_SZ];
}
