; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_xmit_skb_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_xmit_skb_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.efx_tx_queue* }
%struct.efx_tx_queue = type { i64 }
%struct.sk_buff = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@EFX_TXQ_TYPE_OFFLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"PTP channel has no timestamped tx queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.sk_buff*)* @efx_ptp_xmit_skb_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ptp_xmit_skb_queue(%struct.efx_nic* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  %6 = alloca %struct.efx_tx_queue*, align 8
  %7 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %9, align 8
  store %struct.efx_ptp_data* %10, %struct.efx_ptp_data** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @EFX_TXQ_TYPE_OFFLOAD, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i64 [ %17, %16 ], [ 0, %18 ]
  store i64 %20, i64* %7, align 8
  %21 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %22 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %25, i64 %26
  store %struct.efx_tx_queue* %27, %struct.efx_tx_queue** %6, align 8
  %28 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %6, align 8
  %29 = icmp ne %struct.efx_tx_queue* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %6, align 8
  %32 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @efx_enqueue_skb(%struct.efx_tx_queue* %36, %struct.sk_buff* %37)
  br label %43

39:                                               ; preds = %30, %19
  %40 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32 @efx_enqueue_skb(%struct.efx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
