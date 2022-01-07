
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sk_buff {int dummy; } ;
struct lb_priv {int fp; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_RUN (struct bpf_prog*,struct sk_buff*) ;
 struct bpf_prog* rcu_dereference_bh (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int lb_get_skb_hash(struct lb_priv *lb_priv,
        struct sk_buff *skb)
{
 struct bpf_prog *fp;
 uint32_t lhash;
 unsigned char *c;

 fp = rcu_dereference_bh(lb_priv->fp);
 if (unlikely(!fp))
  return 0;
 lhash = BPF_PROG_RUN(fp, skb);
 c = (char *) &lhash;
 return c[0] ^ c[1] ^ c[2] ^ c[3];
}
