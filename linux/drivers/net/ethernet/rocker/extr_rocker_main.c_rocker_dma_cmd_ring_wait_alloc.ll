; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_cmd_ring_wait_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_cmd_ring_wait_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.rocker_wait = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_desc_info*)* @rocker_dma_cmd_ring_wait_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_cmd_ring_wait_alloc(%struct.rocker_desc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker_desc_info*, align 8
  %4 = alloca %struct.rocker_wait*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %3, align 8
  %5 = call %struct.rocker_wait* (...) @rocker_wait_create()
  store %struct.rocker_wait* %5, %struct.rocker_wait** %4, align 8
  %6 = load %struct.rocker_wait*, %struct.rocker_wait** %4, align 8
  %7 = icmp ne %struct.rocker_wait* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %3, align 8
  %13 = load %struct.rocker_wait*, %struct.rocker_wait** %4, align 8
  %14 = call i32 @rocker_desc_cookie_ptr_set(%struct.rocker_desc_info* %12, %struct.rocker_wait* %13)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.rocker_wait* @rocker_wait_create(...) #1

declare dso_local i32 @rocker_desc_cookie_ptr_set(%struct.rocker_desc_info*, %struct.rocker_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
