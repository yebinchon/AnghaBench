
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genevehdr {int opt_len; } ;



__attribute__((used)) static int geneve_hlen(struct genevehdr *gh)
{
 return sizeof(*gh) + gh->opt_len * 4;
}
