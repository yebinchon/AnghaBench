
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5523 {int dummy; } ;


 int AR5523_CMD_FLAG_READ ;
 int ar5523_cmd (struct ar5523*,int ,void const*,int,int *,int ,int) ;

__attribute__((used)) static int ar5523_cmd_write(struct ar5523 *ar, u32 code, const void *data,
       int len, int flags)
{
 flags &= ~AR5523_CMD_FLAG_READ;
 return ar5523_cmd(ar, code, data, len, ((void*)0), 0, flags);
}
