; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_poll_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_poll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_cp_ring_info = type { i32, i32, %struct.bnxt_napi* }
%struct.bnxt_napi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32)* @bnxt_poll_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_poll_work(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_napi*, align 8
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %10 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %9, i32 0, i32 2
  %11 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  store %struct.bnxt_napi* %11, %struct.bnxt_napi** %7, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %13 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @__bnxt_poll_work(%struct.bnxt* %12, %struct.bnxt_cp_ring_info* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %17 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %17, i32 0, i32 1
  %19 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bnxt_db_cq(%struct.bnxt* %16, i32* %18, i32 %21)
  %23 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %24 = load %struct.bnxt_napi*, %struct.bnxt_napi** %7, align 8
  %25 = call i32 @__bnxt_poll_work_done(%struct.bnxt* %23, %struct.bnxt_napi* %24)
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @__bnxt_poll_work(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32) #1

declare dso_local i32 @bnxt_db_cq(%struct.bnxt*, i32*, i32) #1

declare dso_local i32 @__bnxt_poll_work_done(%struct.bnxt*, %struct.bnxt_napi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
