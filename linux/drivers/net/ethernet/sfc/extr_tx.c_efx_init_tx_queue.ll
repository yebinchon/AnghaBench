; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_init_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_init_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"initialising TX queue %d\0A\00", align 1
@EFX_EMPTY_COUNT_VALID = common dso_local global i32 0, align 4
@efx_enqueue_skb_tso = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_init_tx_queue(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %4 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %4, i32 0, i32 17
  %6 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  store %struct.efx_nic* %6, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = load i32, i32* @drv, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %12, i32 0, i32 16
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_dbg(%struct.efx_nic* %7, i32 %8, i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %16, i32 0, i32 15
  store i64 0, i64* %17, align 8
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %19 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i32 0, i32 14
  store i64 0, i64* %19, align 8
  %20 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %20, i32 0, i32 13
  store i64 0, i64* %21, align 8
  %22 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %22, i32 0, i32 12
  store i64 0, i64* %23, align 8
  %24 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %24, i32 0, i32 11
  store i64 0, i64* %25, align 8
  %26 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %27 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %26, i32 0, i32 10
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @EFX_EMPTY_COUNT_VALID, align 4
  %29 = or i32 0, %28
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %31 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %33 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = call i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %39 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = call i64 @efx_ptp_channel(%struct.efx_nic* %41)
  %43 = icmp eq i64 %40, %42
  br label %44

44:                                               ; preds = %37, %1
  %45 = phi i1 [ false, %1 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %48 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %50 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %53 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %55 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %57 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @efx_enqueue_skb_tso, align 4
  %59 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %60 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %62 = call i32 @efx_nic_init_tx(%struct.efx_tx_queue* %61)
  %63 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %64 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %63, i32 0, i32 4
  store i32 1, i32* %64, align 8
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic*) #1

declare dso_local i64 @efx_ptp_channel(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_init_tx(%struct.efx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
