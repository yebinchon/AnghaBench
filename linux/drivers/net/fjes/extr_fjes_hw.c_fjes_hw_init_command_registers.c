
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fjes_hw {int dummy; } ;
struct fjes_device_command_param {int req_start; int res_start; int share_start; scalar_t__ res_len; scalar_t__ req_len; } ;
typedef int __le32 ;


 int GENMASK_ULL (int,int) ;
 int XSCT_REQBAH ;
 int XSCT_REQBAL ;
 int XSCT_REQBL ;
 int XSCT_RESPBAH ;
 int XSCT_RESPBAL ;
 int XSCT_RESPBL ;
 int XSCT_SHSTSAH ;
 int XSCT_SHSTSAL ;
 int wr32 (int ,int ) ;

void
fjes_hw_init_command_registers(struct fjes_hw *hw,
          struct fjes_device_command_param *param)
{

 wr32(XSCT_REQBL, (__le32)(param->req_len));

 wr32(XSCT_RESPBL, (__le32)(param->res_len));


 wr32(XSCT_REQBAL,
      (__le32)(param->req_start & GENMASK_ULL(31, 0)));
 wr32(XSCT_REQBAH,
      (__le32)((param->req_start & GENMASK_ULL(63, 32)) >> 32));


 wr32(XSCT_RESPBAL,
      (__le32)(param->res_start & GENMASK_ULL(31, 0)));
 wr32(XSCT_RESPBAH,
      (__le32)((param->res_start & GENMASK_ULL(63, 32)) >> 32));


 wr32(XSCT_SHSTSAL,
      (__le32)(param->share_start & GENMASK_ULL(31, 0)));
 wr32(XSCT_SHSTSAH,
      (__le32)((param->share_start & GENMASK_ULL(63, 32)) >> 32));
}
