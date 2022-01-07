
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oslec_state {int adaption_mode; } ;



void oslec_adaption_mode(struct oslec_state *ec, int adaption_mode)
{
 ec->adaption_mode = adaption_mode;
}
