
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_mbus_pixelfmt {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mbus_fmt ;
 struct pxa_mbus_pixelfmt const* pxa_mbus_find_fmtdesc (int ,int ,int ) ;

__attribute__((used)) static const struct pxa_mbus_pixelfmt *pxa_mbus_get_fmtdesc(
 u32 code)
{
 return pxa_mbus_find_fmtdesc(code, mbus_fmt, ARRAY_SIZE(mbus_fmt));
}
