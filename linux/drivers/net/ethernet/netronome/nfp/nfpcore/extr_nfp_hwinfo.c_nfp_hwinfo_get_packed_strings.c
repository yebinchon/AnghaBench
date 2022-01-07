
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_hwinfo {char* data; } ;



char *nfp_hwinfo_get_packed_strings(struct nfp_hwinfo *hwinfo)
{
 return hwinfo->data;
}
