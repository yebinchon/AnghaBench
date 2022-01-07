
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int tgid ;
struct fastrpc_user {int tgid; } ;
struct fastrpc_invoke_args {int length; int fd; scalar_t__ reserved; scalar_t__ ptr; } ;


 int FASTRPC_INIT_HANDLE ;
 int FASTRPC_RMID_INIT_RELEASE ;
 int FASTRPC_SCALARS (int ,int,int ) ;
 int fastrpc_internal_invoke (struct fastrpc_user*,int,int ,int ,struct fastrpc_invoke_args*) ;

__attribute__((used)) static int fastrpc_release_current_dsp_process(struct fastrpc_user *fl)
{
 struct fastrpc_invoke_args args[1];
 int tgid = 0;
 u32 sc;

 tgid = fl->tgid;
 args[0].ptr = (u64)(uintptr_t) &tgid;
 args[0].length = sizeof(tgid);
 args[0].fd = -1;
 args[0].reserved = 0;
 sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_RELEASE, 1, 0);

 return fastrpc_internal_invoke(fl, 1, FASTRPC_INIT_HANDLE,
           sc, &args[0]);
}
