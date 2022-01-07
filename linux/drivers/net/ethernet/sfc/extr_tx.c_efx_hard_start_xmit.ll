; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.efx_nic = type { i32 }
%struct.efx_tx_queue = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@EFX_TXQ_TYPE_OFFLOAD = common dso_local global i32 0, align 4
@EFX_TXQ_TYPE_HIGHPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_tx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %10)
  store %struct.efx_nic* %11, %struct.efx_nic** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32 @netif_device_present(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @EFX_WARN_ON_PARANOID(i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @efx_xmit_with_hwtstamp(%struct.sk_buff* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @efx_ptp_is_ptp_tx(%struct.efx_nic* %23, %struct.sk_buff* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @efx_ptp_tx(%struct.efx_nic* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %22, %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @EFX_TXQ_TYPE_OFFLOAD, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp uge i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @EFX_TXQ_TYPE_HIGHPRI, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %50, %43
  %60 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.efx_tx_queue* @efx_get_tx_queue(%struct.efx_nic* %60, i32 %61, i32 %62)
  store %struct.efx_tx_queue* %63, %struct.efx_tx_queue** %7, align 8
  %64 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @efx_enqueue_skb(%struct.efx_tx_queue* %64, %struct.sk_buff* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %28
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @efx_xmit_with_hwtstamp(%struct.sk_buff*) #1

declare dso_local i32 @efx_ptp_is_ptp_tx(%struct.efx_nic*, %struct.sk_buff*) #1

declare dso_local i32 @efx_ptp_tx(%struct.efx_nic*, %struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.efx_tx_queue* @efx_get_tx_queue(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @efx_enqueue_skb(%struct.efx_tx_queue*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
