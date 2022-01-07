
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_ring_chain_node {struct hnae3_ring_chain_node* next; } ;


 int kzfree (struct hnae3_ring_chain_node*) ;

__attribute__((used)) static void hclge_free_vector_ring_chain(struct hnae3_ring_chain_node *head)
{
 struct hnae3_ring_chain_node *chain_tmp, *chain;

 chain = head->next;

 while (chain) {
  chain_tmp = chain->next;
  kzfree(chain);
  chain = chain_tmp;
 }
}
