
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t idx; TYPE_1__* tst; int name; scalar_t__ (* validate_put ) (char*) ;} ;
struct TYPE_3__ {char* get; char* put; int (* get_handler ) (char*) ;} ;


 size_t BUFMAX ;
 int eprintk (char*,int ,size_t,...) ;
 int fill_get_buf (char*) ;
 char* get_buf ;
 size_t get_buf_cnt ;
 char* put_buf ;
 size_t put_buf_cnt ;
 int send_ack ;
 int stub1 (char*) ;
 scalar_t__ stub2 (char*) ;
 TYPE_2__ ts ;
 int v2printk (char*,size_t,char*) ;

__attribute__((used)) static int run_simple_test(int is_get_char, int chr)
{
 int ret = 0;
 if (is_get_char) {



  if (send_ack) {
   send_ack = 0;
   return '+';
  }



  if (get_buf_cnt == 0) {
   if (ts.tst[ts.idx].get_handler)
    ts.tst[ts.idx].get_handler(ts.tst[ts.idx].get);
   else
    fill_get_buf(ts.tst[ts.idx].get);
  }

  if (get_buf[get_buf_cnt] == '\0') {
   eprintk("kgdbts: ERROR GET: EOB on '%s' at %i\n",
      ts.name, ts.idx);
   get_buf_cnt = 0;
   fill_get_buf("D");
  }
  ret = get_buf[get_buf_cnt];
  get_buf_cnt++;
  return ret;
 }




 if (ts.tst[ts.idx].get[0] == '\0' && ts.tst[ts.idx].put[0] == '\0' &&
     !ts.tst[ts.idx].get_handler) {
  eprintk("kgdbts: ERROR: beyond end of test on"
      " '%s' line %i\n", ts.name, ts.idx);
  return 0;
 }

 if (put_buf_cnt >= BUFMAX) {
  eprintk("kgdbts: ERROR: put buffer overflow on"
      " '%s' line %i\n", ts.name, ts.idx);
  put_buf_cnt = 0;
  return 0;
 }

 if (put_buf_cnt == 0 && chr != '$')
  return 0;

 put_buf[put_buf_cnt] = chr;
 put_buf_cnt++;


 if (put_buf_cnt > 3 && put_buf[put_buf_cnt - 3] == '#') {
  if (put_buf_cnt >= BUFMAX) {
   eprintk("kgdbts: ERROR: put buffer overflow on"
    " '%s' line %i\n", ts.name, ts.idx);
   put_buf_cnt = 0;
   return 0;
  }
  put_buf[put_buf_cnt] = '\0';
  v2printk("put%i: %s\n", ts.idx, put_buf);

  if (ts.validate_put && ts.validate_put(put_buf)) {
   eprintk("kgdbts: ERROR PUT: end of test "
      "buffer on '%s' line %i expected %s got %s\n",
      ts.name, ts.idx, ts.tst[ts.idx].put, put_buf);
  }
  ts.idx++;
  put_buf_cnt = 0;
  get_buf_cnt = 0;
  send_ack = 1;
 }
 return 0;
}
