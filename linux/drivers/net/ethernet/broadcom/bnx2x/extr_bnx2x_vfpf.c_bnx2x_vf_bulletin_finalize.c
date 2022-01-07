
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_vf_bulletin_content {int crc; int length; } ;


 int BULLETIN_CONTENT_LEGACY_SIZE ;
 int BULLETIN_CONTENT_SIZE ;
 int bnx2x_crc_vf_bulletin (struct pf_vf_bulletin_content*) ;

void bnx2x_vf_bulletin_finalize(struct pf_vf_bulletin_content *bulletin,
    bool support_long)
{



 bulletin->length = support_long ? BULLETIN_CONTENT_SIZE :
       BULLETIN_CONTENT_LEGACY_SIZE;
 bulletin->crc = bnx2x_crc_vf_bulletin(bulletin);
}
