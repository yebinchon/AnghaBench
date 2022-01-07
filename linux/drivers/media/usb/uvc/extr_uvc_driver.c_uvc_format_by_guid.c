
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvc_format_desc {int guid; } ;


 unsigned int ARRAY_SIZE (struct uvc_format_desc*) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 struct uvc_format_desc* uvc_fmts ;

__attribute__((used)) static struct uvc_format_desc *uvc_format_by_guid(const u8 guid[16])
{
 unsigned int len = ARRAY_SIZE(uvc_fmts);
 unsigned int i;

 for (i = 0; i < len; ++i) {
  if (memcmp(guid, uvc_fmts[i].guid, 16) == 0)
   return &uvc_fmts[i];
 }

 return ((void*)0);
}
