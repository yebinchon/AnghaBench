
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hfi_version { ____Placeholder_hfi_version } hfi_version ;


 int hfi_ver ;

void pkt_set_version(enum hfi_version version)
{
 hfi_ver = version;
}
