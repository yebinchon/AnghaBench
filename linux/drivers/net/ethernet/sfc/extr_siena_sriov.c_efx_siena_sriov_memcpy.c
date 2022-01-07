
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct efx_nic {int dummy; } ;
struct efx_memcpy_req {unsigned int to_rid; unsigned int to_addr; unsigned int from_rid; unsigned int from_addr; scalar_t__ length; int * from_buf; } ;


 int ENOBUFS ;
 int MCDI_ARRAY_STRUCT_PTR (int ,int ,unsigned int) ;
 scalar_t__ MCDI_CTL_SDU_LEN_MAX_V1 ;
 int MCDI_DECLARE_BUF (int ,scalar_t__) ;
 int MCDI_DECLARE_STRUCT_PTR (int ) ;
 int MCDI_SET_DWORD (int ,int ,unsigned int) ;
 int MCDI_SET_QWORD (int ,int ,unsigned int) ;
 int MC_CMD_MEMCPY ;
 unsigned int MC_CMD_MEMCPY_IN_LEN (unsigned int) ;
 unsigned int MC_CMD_MEMCPY_IN_RECORD_MAXNUM ;
 unsigned int MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE ;
 int MEMCPY_IN_RECORD ;
 int MEMCPY_RECORD_TYPEDEF_FROM_ADDR ;
 int MEMCPY_RECORD_TYPEDEF_FROM_RID ;
 int MEMCPY_RECORD_TYPEDEF_LENGTH ;
 int MEMCPY_RECORD_TYPEDEF_NUM_RECORDS ;
 int MEMCPY_RECORD_TYPEDEF_TO_ADDR ;
 int MEMCPY_RECORD_TYPEDEF_TO_RID ;
 scalar_t__ WARN_ON (int) ;
 int _MCDI_PTR (int ,unsigned int) ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int ,unsigned int,int *,int ,int *) ;
 int inbuf ;
 int mb () ;
 int memcpy (int ,int *,scalar_t__) ;
 int record ;

__attribute__((used)) static int efx_siena_sriov_memcpy(struct efx_nic *efx,
      struct efx_memcpy_req *req,
      unsigned int count)
{
 MCDI_DECLARE_BUF(inbuf, MCDI_CTL_SDU_LEN_MAX_V1);
 MCDI_DECLARE_STRUCT_PTR(record);
 unsigned int index, used;
 u64 from_addr;
 u32 from_rid;
 int rc;

 mb();

 if (WARN_ON(count > MC_CMD_MEMCPY_IN_RECORD_MAXNUM))
  return -ENOBUFS;
 used = MC_CMD_MEMCPY_IN_LEN(count);

 for (index = 0; index < count; index++) {
  record = MCDI_ARRAY_STRUCT_PTR(inbuf, MEMCPY_IN_RECORD, index);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_NUM_RECORDS,
          count);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_TO_RID,
          req->to_rid);
  MCDI_SET_QWORD(record, MEMCPY_RECORD_TYPEDEF_TO_ADDR,
          req->to_addr);
  if (req->from_buf == ((void*)0)) {
   from_rid = req->from_rid;
   from_addr = req->from_addr;
  } else {
   if (WARN_ON(used + req->length >
        MCDI_CTL_SDU_LEN_MAX_V1)) {
    rc = -ENOBUFS;
    goto out;
   }

   from_rid = MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE;
   from_addr = used;
   memcpy(_MCDI_PTR(inbuf, used), req->from_buf,
          req->length);
   used += req->length;
  }

  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_FROM_RID, from_rid);
  MCDI_SET_QWORD(record, MEMCPY_RECORD_TYPEDEF_FROM_ADDR,
          from_addr);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_LENGTH,
          req->length);

  ++req;
 }

 rc = efx_mcdi_rpc(efx, MC_CMD_MEMCPY, inbuf, used, ((void*)0), 0, ((void*)0));
out:
 mb();

 return rc;
}
