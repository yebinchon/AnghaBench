
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vmballoon_page_size_type { ____Placeholder_vmballoon_page_size_type } vmballoon_page_size_type ;


 int vmballoon_page_order (int) ;

__attribute__((used)) static inline unsigned int
vmballoon_page_in_frames(enum vmballoon_page_size_type page_size)
{
 return 1 << vmballoon_page_order(page_size);
}
