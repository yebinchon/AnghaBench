
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25840_state {scalar_t__ id; } ;


 scalar_t__ CX25840 ;
 scalar_t__ CX25841 ;
 scalar_t__ CX25842 ;
 scalar_t__ CX25843 ;

__attribute__((used)) static inline bool is_cx2584x(struct cx25840_state *state)
{
 return state->id == CX25840 ||
        state->id == CX25841 ||
        state->id == CX25842 ||
        state->id == CX25843;
}
