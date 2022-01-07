
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {int state; int arpq; } ;







 int skb_queue_empty (int *) ;

__attribute__((used)) static char l2e_state(const struct l2t_entry *e)
{
 switch (e->state) {
 case 128: return 'V';
 case 131: return 'S';
 case 129: return 'W';
 case 132:
  return skb_queue_empty(&e->arpq) ? 'R' : 'A';
 case 130: return 'X';
 default:
  return 'U';
 }
}
