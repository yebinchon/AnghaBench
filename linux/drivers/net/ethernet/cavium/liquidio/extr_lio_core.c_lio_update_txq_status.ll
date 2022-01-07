; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_update_txq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_update_txq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_8__*, %struct.octeon_instr_queue** }
%struct.TYPE_8__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.octeon_instr_queue = type { i64, i32 }
%struct.lio = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@tx_restart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32)* @lio_update_txq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_update_txq_status(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_instr_queue*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lio*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 1
  %10 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %10, i64 %12
  %14 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %13, align 8
  store %struct.octeon_instr_queue* %14, %struct.octeon_instr_queue** %5, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %19 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call %struct.lio* @GET_LIO(%struct.net_device* %28)
  store %struct.lio* %29, %struct.lio** %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %32 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @__netif_subqueue_stopped(%struct.net_device* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %27
  %37 = load %struct.lio*, %struct.lio** %7, align 8
  %38 = getelementptr inbounds %struct.lio, %struct.lio* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @octnet_iq_is_full(%struct.octeon_device* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %5, align 8
  %52 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @netif_wake_subqueue(%struct.net_device* %50, i32 %53)
  %55 = load %struct.lio*, %struct.lio** %7, align 8
  %56 = getelementptr inbounds %struct.lio, %struct.lio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @tx_restart, align 4
  %60 = call i32 @INCR_INSTRQUEUE_PKT_COUNT(i32 %57, i32 %58, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %26, %49, %44, %36, %27
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.net_device*, i32) #1

declare dso_local i32 @octnet_iq_is_full(%struct.octeon_device*, i32) #1

declare dso_local i32 @netif_wake_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @INCR_INSTRQUEUE_PKT_COUNT(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
