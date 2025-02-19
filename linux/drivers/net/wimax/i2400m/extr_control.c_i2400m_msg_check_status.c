
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2400m_l3l4_hdr {int status; } ;
typedef enum i2400m_ms { ____Placeholder_i2400m_ms } i2400m_ms ;
struct TYPE_3__ {char* msg; int errno; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EBADR ;
 int le16_to_cpu (int ) ;
 TYPE_1__* ms_to_errno ;
 int snprintf (char*,size_t,char*,char const*,int) ;

int i2400m_msg_check_status(const struct i2400m_l3l4_hdr *l3l4_hdr,
       char *strbuf, size_t strbuf_size)
{
 int result;
 enum i2400m_ms status = le16_to_cpu(l3l4_hdr->status);
 const char *str;

 if (status == 0)
  return 0;
 if (status >= ARRAY_SIZE(ms_to_errno)) {
  str = "unknown status code";
  result = -EBADR;
 } else {
  str = ms_to_errno[status].msg;
  result = ms_to_errno[status].errno;
 }
 if (strbuf)
  snprintf(strbuf, strbuf_size, "%s (%d)", str, status);
 return result;
}
