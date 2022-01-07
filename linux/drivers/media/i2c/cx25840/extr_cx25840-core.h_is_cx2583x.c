
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25840_state {scalar_t__ id; } ;


 scalar_t__ CX25836 ;
 scalar_t__ CX25837 ;

__attribute__((used)) static inline bool is_cx2583x(struct cx25840_state *state)
{
 return state->id == CX25836 ||
        state->id == CX25837;
}
