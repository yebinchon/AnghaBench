; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_cmd_ring_wait_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_cmd_ring_wait_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.rocker_wait = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker_desc_info*)* @rocker_dma_cmd_ring_wait_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_dma_cmd_ring_wait_free(%struct.rocker_desc_info* %0) #0 {
  %2 = alloca %struct.rocker_desc_info*, align 8
  %3 = alloca %struct.rocker_wait*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %2, align 8
  %4 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %2, align 8
  %5 = call %struct.rocker_wait* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info* %4)
  store %struct.rocker_wait* %5, %struct.rocker_wait** %3, align 8
  %6 = load %struct.rocker_wait*, %struct.rocker_wait** %3, align 8
  %7 = call i32 @rocker_wait_destroy(%struct.rocker_wait* %6)
  ret void
}

declare dso_local %struct.rocker_wait* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_wait_destroy(%struct.rocker_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
