
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_rateset {int dummy; } ;


 int memcpy (struct brcms_c_rateset*,struct brcms_c_rateset const*,int) ;

void brcms_c_rateset_copy(const struct brcms_c_rateset *src,
     struct brcms_c_rateset *dst)
{
 memcpy(dst, src, sizeof(struct brcms_c_rateset));
}
