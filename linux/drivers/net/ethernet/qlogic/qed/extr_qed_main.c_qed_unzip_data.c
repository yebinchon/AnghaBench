
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qed_hwfn {TYPE_1__* stream; } ;
struct TYPE_4__ {int avail_in; int avail_out; int total_out; int msg; int * next_out; int * next_in; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,...) ;
 int MAX_WBITS ;
 int NETIF_MSG_DRV ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int zlib_inflate (TYPE_1__*,int ) ;
 int zlib_inflateEnd (TYPE_1__*) ;
 int zlib_inflateInit2 (TYPE_1__*,int ) ;

u32 qed_unzip_data(struct qed_hwfn *p_hwfn, u32 input_len,
     u8 *input_buf, u32 max_size, u8 *unzip_buf)
{
 int rc;

 p_hwfn->stream->next_in = input_buf;
 p_hwfn->stream->avail_in = input_len;
 p_hwfn->stream->next_out = unzip_buf;
 p_hwfn->stream->avail_out = max_size;

 rc = zlib_inflateInit2(p_hwfn->stream, MAX_WBITS);

 if (rc != Z_OK) {
  DP_VERBOSE(p_hwfn, NETIF_MSG_DRV, "zlib init failed, rc = %d\n",
      rc);
  return 0;
 }

 rc = zlib_inflate(p_hwfn->stream, Z_FINISH);
 zlib_inflateEnd(p_hwfn->stream);

 if (rc != Z_OK && rc != Z_STREAM_END) {
  DP_VERBOSE(p_hwfn, NETIF_MSG_DRV, "FW unzip error: %s, rc=%d\n",
      p_hwfn->stream->msg, rc);
  return 0;
 }

 return p_hwfn->stream->total_out / 4;
}
