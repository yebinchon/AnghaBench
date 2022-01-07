
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_stream_s {scalar_t__ total_out; scalar_t__ avail_out; scalar_t__ next_out; scalar_t__ avail_in; scalar_t__ next_in; int workspace; } ;
struct cudbg_init {int workspace; } ;
struct cudbg_compress_hdr {scalar_t__ decompress_size; scalar_t__ compress_size; int compress_id; } ;
struct cudbg_buffer {scalar_t__ offset; scalar_t__ size; scalar_t__ data; int member_0; } ;


 int CUDBG_SYSTEM_ERROR ;
 int CUDBG_ZLIB_COMPRESS_ID ;
 int CUDBG_ZLIB_MEM_LVL ;
 int CUDBG_ZLIB_WIN_BITS ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int cudbg_get_compress_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int memset (struct z_stream_s*,int ,int) ;
 int zlib_deflate (struct z_stream_s*,int ) ;
 int zlib_deflateEnd (struct z_stream_s*) ;
 int zlib_deflateInit2 (struct z_stream_s*,int ,int ,int ,int ,int ) ;

int cudbg_compress_buff(struct cudbg_init *pdbg_init,
   struct cudbg_buffer *pin_buff,
   struct cudbg_buffer *pout_buff)
{
 struct cudbg_buffer temp_buff = { 0 };
 struct z_stream_s compress_stream;
 struct cudbg_compress_hdr *c_hdr;
 int rc;


 rc = cudbg_get_compress_hdr(pout_buff, &temp_buff);
 if (rc)
  return rc;

 c_hdr = (struct cudbg_compress_hdr *)temp_buff.data;
 c_hdr->compress_id = CUDBG_ZLIB_COMPRESS_ID;

 memset(&compress_stream, 0, sizeof(struct z_stream_s));
 compress_stream.workspace = pdbg_init->workspace;
 rc = zlib_deflateInit2(&compress_stream, Z_DEFAULT_COMPRESSION,
          Z_DEFLATED, CUDBG_ZLIB_WIN_BITS,
          CUDBG_ZLIB_MEM_LVL, Z_DEFAULT_STRATEGY);
 if (rc != Z_OK)
  return CUDBG_SYSTEM_ERROR;

 compress_stream.next_in = pin_buff->data;
 compress_stream.avail_in = pin_buff->size;
 compress_stream.next_out = pout_buff->data + pout_buff->offset;
 compress_stream.avail_out = pout_buff->size - pout_buff->offset;

 rc = zlib_deflate(&compress_stream, Z_FINISH);
 if (rc != Z_STREAM_END)
  return CUDBG_SYSTEM_ERROR;

 rc = zlib_deflateEnd(&compress_stream);
 if (rc != Z_OK)
  return CUDBG_SYSTEM_ERROR;

 c_hdr->compress_size = compress_stream.total_out;
 c_hdr->decompress_size = pin_buff->size;
 pout_buff->offset += compress_stream.total_out;

 return 0;
}
