
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_ucode {scalar_t__ bcm43xx_bomminor; scalar_t__ bcm43xx_bommajor; scalar_t__ bcm43xx_24_lcn; scalar_t__ bcm43xx_16_mimo; scalar_t__ d11n0initvals16; scalar_t__ d11n0bsinitvals16; scalar_t__ d11n0absinitvals16; scalar_t__ d11lcn2initvals24; scalar_t__ d11lcn2bsinitvals24; scalar_t__ d11lcn1initvals24; scalar_t__ d11lcn1bsinitvals24; scalar_t__ d11lcn0initvals24; scalar_t__ d11lcn0bsinitvals24; } ;


 int brcms_ucode_free_buf (void*) ;

void brcms_ucode_data_free(struct brcms_ucode *ucode)
{
 brcms_ucode_free_buf((void *)ucode->d11lcn0bsinitvals24);
 brcms_ucode_free_buf((void *)ucode->d11lcn0initvals24);
 brcms_ucode_free_buf((void *)ucode->d11lcn1bsinitvals24);
 brcms_ucode_free_buf((void *)ucode->d11lcn1initvals24);
 brcms_ucode_free_buf((void *)ucode->d11lcn2bsinitvals24);
 brcms_ucode_free_buf((void *)ucode->d11lcn2initvals24);
 brcms_ucode_free_buf((void *)ucode->d11n0absinitvals16);
 brcms_ucode_free_buf((void *)ucode->d11n0bsinitvals16);
 brcms_ucode_free_buf((void *)ucode->d11n0initvals16);
 brcms_ucode_free_buf((void *)ucode->bcm43xx_16_mimo);
 brcms_ucode_free_buf((void *)ucode->bcm43xx_24_lcn);
 brcms_ucode_free_buf((void *)ucode->bcm43xx_bommajor);
 brcms_ucode_free_buf((void *)ucode->bcm43xx_bomminor);
}
