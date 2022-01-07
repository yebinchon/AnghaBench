
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACSEC_SCI_LEN ;
 unsigned int MACSEC_TAG_LEN ;

__attribute__((used)) static unsigned int macsec_sectag_len(bool sci_present)
{
 return MACSEC_TAG_LEN + (sci_present ? MACSEC_SCI_LEN : 0);
}
