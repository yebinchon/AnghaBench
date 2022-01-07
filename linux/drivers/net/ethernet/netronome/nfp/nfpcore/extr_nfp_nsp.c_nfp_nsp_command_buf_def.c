
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int buf; } ;
struct nfp_nsp_command_buf_arg {int in_size; int out_size; int out_buf; TYPE_1__ arg; int in_buf; } ;
struct nfp_nsp {int res; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;


 int EINVAL ;
 int FIELD_FIT (int ,int) ;
 int FIELD_GET (int ,int) ;
 int FIELD_PREP (int ,int) ;
 int NSP_BUFFER_ADDRESS ;
 int NSP_BUFFER_CPP ;
 scalar_t__ NSP_DFLT_BUFFER ;
 int NSP_DFLT_BUFFER_ADDRESS ;
 int NSP_DFLT_BUFFER_CPP ;
 int __nfp_nsp_command (struct nfp_nsp*,TYPE_1__*) ;
 int nfp_cpp_read (struct nfp_cpp*,int,int,int ,int) ;
 int nfp_cpp_readq (struct nfp_cpp*,int ,scalar_t__,int*) ;
 int nfp_cpp_write (struct nfp_cpp*,int,int,int ,int) ;
 int nfp_err (struct nfp_cpp*,char*,int,int) ;
 scalar_t__ nfp_resource_address (int ) ;
 int nfp_resource_cpp_id (int ) ;

__attribute__((used)) static int
nfp_nsp_command_buf_def(struct nfp_nsp *nsp,
   struct nfp_nsp_command_buf_arg *arg)
{
 struct nfp_cpp *cpp = nsp->cpp;
 u64 reg, cpp_buf;
 int err, ret;
 u32 cpp_id;

 err = nfp_cpp_readq(cpp, nfp_resource_cpp_id(nsp->res),
       nfp_resource_address(nsp->res) +
       NSP_DFLT_BUFFER,
       &reg);
 if (err < 0)
  return err;

 cpp_id = FIELD_GET(NSP_DFLT_BUFFER_CPP, reg) << 8;
 cpp_buf = FIELD_GET(NSP_DFLT_BUFFER_ADDRESS, reg);

 if (arg->in_buf && arg->in_size) {
  err = nfp_cpp_write(cpp, cpp_id, cpp_buf,
        arg->in_buf, arg->in_size);
  if (err < 0)
   return err;
 }

 if (arg->out_buf && arg->out_size && arg->out_size > arg->in_size) {
  err = nfp_cpp_write(cpp, cpp_id, cpp_buf + arg->in_size,
        arg->out_buf, arg->out_size - arg->in_size);
  if (err < 0)
   return err;
 }

 if (!FIELD_FIT(NSP_BUFFER_CPP, cpp_id >> 8) ||
     !FIELD_FIT(NSP_BUFFER_ADDRESS, cpp_buf)) {
  nfp_err(cpp, "Buffer out of reach %08x %016llx\n",
   cpp_id, cpp_buf);
  return -EINVAL;
 }

 arg->arg.buf = FIELD_PREP(NSP_BUFFER_CPP, cpp_id >> 8) |
         FIELD_PREP(NSP_BUFFER_ADDRESS, cpp_buf);
 ret = __nfp_nsp_command(nsp, &arg->arg);
 if (ret < 0)
  return ret;

 if (arg->out_buf && arg->out_size) {
  err = nfp_cpp_read(cpp, cpp_id, cpp_buf,
       arg->out_buf, arg->out_size);
  if (err < 0)
   return err;
 }

 return ret;
}
