
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map_table {unsigned int scancode; scalar_t__ keycode; } ;
struct input_keymap_entry {int flags; unsigned int index; } ;


 int INPUT_KEYMAP_BY_INDEX ;
 scalar_t__ KEY_RESERVED ;
 scalar_t__ KEY_UNKNOWN ;
 scalar_t__ input_scancode_to_scalar (struct input_keymap_entry const*,unsigned int*) ;

__attribute__((used)) static unsigned int
legacy_dvb_usb_get_keymap_index(const struct input_keymap_entry *ke,
    struct rc_map_table *keymap,
    unsigned int keymap_size)
{
 unsigned int index;
 unsigned int scancode;

 if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
  index = ke->index;
 } else {
  if (input_scancode_to_scalar(ke, &scancode))
   return keymap_size;


  for (index = 0; index < keymap_size; index++)
   if (keymap[index].scancode == scancode)
    break;


  if (index >= keymap_size) {
   for (index = 0; index < keymap_size; index++) {
    if (keymap[index].keycode == KEY_RESERVED ||
        keymap[index].keycode == KEY_UNKNOWN) {
     break;
    }
   }
  }
 }

 return index;
}
