
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25840_state {scalar_t__ id; } ;


 scalar_t__ CX23885_AV ;

__attribute__((used)) static inline bool is_cx23885(struct cx25840_state *state)
{
 return state->id == CX23885_AV;
}
