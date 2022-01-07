
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_format_struct {int planar; } ;
typedef int __u32 ;


 struct mcam_format_struct* mcam_find_format (int ) ;

__attribute__((used)) static bool mcam_fmt_is_planar(__u32 pfmt)
{
 struct mcam_format_struct *f;

 f = mcam_find_format(pfmt);
 return f->planar;
}
