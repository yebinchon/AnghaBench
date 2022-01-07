
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {scalar_t__ rx_frag_size; } ;


 int kfree (void*) ;
 int skb_free_frag (void*) ;

__attribute__((used)) static void bnx2x_frag_free(const struct bnx2x_fastpath *fp, void *data)
{
 if (fp->rx_frag_size)
  skb_free_frag(data);
 else
  kfree(data);
}
