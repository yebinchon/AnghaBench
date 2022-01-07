
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int debugifc_count_nonwhitespace (char const*,unsigned int) ;
 unsigned int debugifc_count_whitespace (char const*,unsigned int) ;

__attribute__((used)) static unsigned int debugifc_isolate_word(const char *buf,unsigned int count,
       const char **wstrPtr,
       unsigned int *wlenPtr)
{
 const char *wptr;
 unsigned int consume_cnt = 0;
 unsigned int wlen;
 unsigned int scnt;

 wptr = ((void*)0);
 wlen = 0;
 scnt = debugifc_count_whitespace(buf,count);
 consume_cnt += scnt; count -= scnt; buf += scnt;
 if (!count) goto done;

 scnt = debugifc_count_nonwhitespace(buf,count);
 if (!scnt) goto done;
 wptr = buf;
 wlen = scnt;
 consume_cnt += scnt; count -= scnt; buf += scnt;

 done:
 *wstrPtr = wptr;
 *wlenPtr = wlen;
 return consume_cnt;
}
