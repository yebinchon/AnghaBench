
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 unsigned int macsec_sectag_len (int) ;

__attribute__((used)) static unsigned int macsec_extra_len(bool sci_present)
{
 return macsec_sectag_len(sci_present) + sizeof(__be16);
}
