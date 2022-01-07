
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl {int dummy; } ;


 int CXL_PSL9_Timebase ;
 int cxl_p1_read (struct cxl*,int ) ;

__attribute__((used)) static u64 timebase_read_psl9(struct cxl *adapter)
{
 return cxl_p1_read(adapter, CXL_PSL9_Timebase);
}
