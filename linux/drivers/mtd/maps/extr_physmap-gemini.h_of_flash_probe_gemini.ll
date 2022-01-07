; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-gemini.h_of_flash_probe_gemini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-gemini.h_of_flash_probe_gemini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.map_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*, %struct.map_info*)* @of_flash_probe_gemini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_flash_probe_gemini(%struct.platform_device* %0, %struct.device_node* %1, %struct.map_info* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.map_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.map_info* %2, %struct.map_info** %6, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
