
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5523 {int dummy; } ;


 int AR5523_CMD_FLAG_READ ;
 int ar5523_cmd (struct ar5523*,int ,void const*,int,void*,int,int) ;

__attribute__((used)) static int ar5523_cmd_read(struct ar5523 *ar, u32 code, const void *idata,
      int ilen, void *odata, int olen, int flags)
{
 flags |= AR5523_CMD_FLAG_READ;
 return ar5523_cmd(ar, code, idata, ilen, odata, olen, flags);
}
