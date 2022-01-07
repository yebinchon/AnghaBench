
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int state; } ;
typedef enum carl9170_device_state { ____Placeholder_carl9170_device_state } carl9170_device_state ;



__attribute__((used)) static inline void __carl9170_set_state(struct ar9170 *ar,
 enum carl9170_device_state newstate)
{
 ar->state = newstate;
}
