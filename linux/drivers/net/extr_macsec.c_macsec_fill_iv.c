
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gcm_iv {int pn; int sci; } ;
typedef int sci_t ;


 int htonl (int ) ;

__attribute__((used)) static void macsec_fill_iv(unsigned char *iv, sci_t sci, u32 pn)
{
 struct gcm_iv *gcm_iv = (struct gcm_iv *)iv;

 gcm_iv->sci = sci;
 gcm_iv->pn = htonl(pn);
}
