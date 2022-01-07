
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct adapter {int dummy; } ;


 int CUDBG_SYSTEM_ERROR ;
 int cudbg_cim_obq_size (struct adapter*,int) ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int ,struct cudbg_buffer*) ;
 int cudbg_put_buff (struct cudbg_init*,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_read_cim_obq (struct adapter*,int,int *,int ) ;

__attribute__((used)) static int cudbg_read_cim_obq(struct cudbg_init *pdbg_init,
         struct cudbg_buffer *dbg_buff,
         struct cudbg_error *cudbg_err, int qid)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 int no_of_read_words, rc = 0;
 u32 qsize;


 qsize = cudbg_cim_obq_size(padap, qid);
 rc = cudbg_get_buff(pdbg_init, dbg_buff, qsize, &temp_buff);
 if (rc)
  return rc;


 no_of_read_words = t4_read_cim_obq(padap, qid,
        (u32 *)temp_buff.data, qsize);

 if (no_of_read_words <= 0) {
  if (!no_of_read_words)
   rc = CUDBG_SYSTEM_ERROR;
  else
   rc = no_of_read_words;
  cudbg_err->sys_err = rc;
  cudbg_put_buff(pdbg_init, &temp_buff);
  return rc;
 }
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
