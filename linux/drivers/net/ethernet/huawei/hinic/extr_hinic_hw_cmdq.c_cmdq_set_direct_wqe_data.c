
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int data; int buf_len; } ;
struct hinic_cmdq_wqe_scmd {TYPE_1__ buf_desc; } ;
struct hinic_cmdq_direct_wqe {struct hinic_cmdq_wqe_scmd wqe_scmd; } ;


 int memcpy (int ,void*,int ) ;

__attribute__((used)) static void cmdq_set_direct_wqe_data(struct hinic_cmdq_direct_wqe *wqe,
         void *buf_in, u32 in_size)
{
 struct hinic_cmdq_wqe_scmd *wqe_scmd = &wqe->wqe_scmd;

 wqe_scmd->buf_desc.buf_len = in_size;
 memcpy(wqe_scmd->buf_desc.data, buf_in, in_size);
}
