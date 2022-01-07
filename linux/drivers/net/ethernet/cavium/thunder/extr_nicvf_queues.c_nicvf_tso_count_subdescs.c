
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {unsigned int gso_size; int gso_segs; int * frags; } ;
struct sk_buff {unsigned int len; } ;


 long skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 unsigned int tcp_hdrlen (struct sk_buff*) ;

__attribute__((used)) static int nicvf_tso_count_subdescs(struct sk_buff *skb)
{
 struct skb_shared_info *sh = skb_shinfo(skb);
 unsigned int sh_len = skb_transport_offset(skb) + tcp_hdrlen(skb);
 unsigned int data_len = skb->len - sh_len;
 unsigned int p_len = sh->gso_size;
 long f_id = -1;
 long f_size = skb_headlen(skb) - sh_len;
 long f_used = 0;
 long n;
 int num_edescs = 0;
 int segment;

 for (segment = 0; segment < sh->gso_segs; segment++) {
  unsigned int p_used = 0;


  for (num_edescs++; p_used < p_len; num_edescs++) {

   while (f_used >= f_size) {
    f_id++;
    f_size = skb_frag_size(&sh->frags[f_id]);
    f_used = 0;
   }


   n = p_len - p_used;
   if (n > f_size - f_used)
    n = f_size - f_used;
   f_used += n;
   p_used += n;
  }


  data_len -= p_len;
  if (data_len < p_len)
   p_len = data_len;
 }


 return num_edescs + sh->gso_segs;
}
