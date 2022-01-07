; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_poll_work_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_poll_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_napi = type { i32, %struct.bnxt_rx_ring_info*, i64, i32 (%struct.bnxt.0*, %struct.bnxt_napi*, i64)* }
%struct.bnxt_rx_ring_info = type { i32, i32, i32, i32 }
%struct.bnxt.0 = type opaque

@BNXT_RX_EVENT = common dso_local global i32 0, align 4
@BNXT_AGG_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_napi*)* @__bnxt_poll_work_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnxt_poll_work_done(%struct.bnxt* %0, %struct.bnxt_napi* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_napi*, align 8
  %5 = alloca %struct.bnxt_rx_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_napi* %1, %struct.bnxt_napi** %4, align 8
  %6 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %7 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %11, i32 0, i32 3
  %13 = load i32 (%struct.bnxt.0*, %struct.bnxt_napi*, i64)*, i32 (%struct.bnxt.0*, %struct.bnxt_napi*, i64)** %12, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = bitcast %struct.bnxt* %14 to %struct.bnxt.0*
  %16 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %17 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 %13(%struct.bnxt.0* %15, %struct.bnxt_napi* %16, i64 %19)
  %21 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %10, %2
  %24 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BNXT_RX_EVENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %32 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %31, i32 0, i32 1
  %33 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %32, align 8
  store %struct.bnxt_rx_ring_info* %33, %struct.bnxt_rx_ring_info** %5, align 8
  %34 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %35 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BNXT_AGG_EVENT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %43 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %42, i32 0, i32 3
  %44 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %45 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bnxt_db_write(%struct.bnxt* %41, i32* %43, i32 %46)
  br label %48

48:                                               ; preds = %40, %30
  %49 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %50 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %51 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %50, i32 0, i32 1
  %52 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %53 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bnxt_db_write(%struct.bnxt* %49, i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %48, %23
  %57 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %58 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  ret void
}

declare dso_local i32 @bnxt_db_write(%struct.bnxt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
