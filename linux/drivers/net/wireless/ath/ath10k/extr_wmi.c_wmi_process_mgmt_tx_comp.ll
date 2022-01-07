; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_wmi_process_mgmt_tx_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_wmi_process_mgmt_tx_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32, %struct.ath10k_wmi }
%struct.ath10k_wmi = type { i32 }
%struct.mgmt_tx_compl_params = type { i32, i64, i64 }
%struct.ath10k_mgmt_tx_pkt_addr = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [53 x i8] c"received mgmt tx completion for invalid msdu_id: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@ATH10K_DEFAULT_NOISE_FLOOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.mgmt_tx_compl_params*)* @wmi_process_mgmt_tx_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmi_process_mgmt_tx_comp(%struct.ath10k* %0, %struct.mgmt_tx_compl_params* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.mgmt_tx_compl_params*, align 8
  %5 = alloca %struct.ath10k_mgmt_tx_pkt_addr*, align 8
  %6 = alloca %struct.ath10k_wmi*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.mgmt_tx_compl_params* %1, %struct.mgmt_tx_compl_params** %4, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 3
  store %struct.ath10k_wmi* %11, %struct.ath10k_wmi** %6, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.ath10k_wmi*, %struct.ath10k_wmi** %6, align 8
  %16 = getelementptr inbounds %struct.ath10k_wmi, %struct.ath10k_wmi* %15, i32 0, i32 0
  %17 = load %struct.mgmt_tx_compl_params*, %struct.mgmt_tx_compl_params** %4, align 8
  %18 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.ath10k_mgmt_tx_pkt_addr* @idr_find(i32* %16, i32 %19)
  store %struct.ath10k_mgmt_tx_pkt_addr* %20, %struct.ath10k_mgmt_tx_pkt_addr** %5, align 8
  %21 = load %struct.ath10k_mgmt_tx_pkt_addr*, %struct.ath10k_mgmt_tx_pkt_addr** %5, align 8
  %22 = icmp ne %struct.ath10k_mgmt_tx_pkt_addr* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = load %struct.mgmt_tx_compl_params*, %struct.mgmt_tx_compl_params** %4, align 8
  %26 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ath10k_warn(%struct.ath10k* %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %82

31:                                               ; preds = %2
  %32 = load %struct.ath10k_mgmt_tx_pkt_addr*, %struct.ath10k_mgmt_tx_pkt_addr** %5, align 8
  %33 = getelementptr inbounds %struct.ath10k_mgmt_tx_pkt_addr, %struct.ath10k_mgmt_tx_pkt_addr* %32, i32 0, i32 1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %8, align 8
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ath10k_mgmt_tx_pkt_addr*, %struct.ath10k_mgmt_tx_pkt_addr** %5, align 8
  %39 = getelementptr inbounds %struct.ath10k_mgmt_tx_pkt_addr, %struct.ath10k_mgmt_tx_pkt_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i32 @dma_unmap_single(i32 %37, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %46)
  store %struct.ieee80211_tx_info* %47, %struct.ieee80211_tx_info** %7, align 8
  %48 = load %struct.mgmt_tx_compl_params*, %struct.mgmt_tx_compl_params** %4, align 8
  %49 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %31
  %53 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %76

59:                                               ; preds = %31
  %60 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i64, i64* @ATH10K_DEFAULT_NOISE_FLOOR, align 8
  %66 = load %struct.mgmt_tx_compl_params*, %struct.mgmt_tx_compl_params** %4, align 8
  %67 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %59, %52
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call i32 @ieee80211_tx_status_irqsafe(i32 %79, %struct.sk_buff* %80)
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %76, %23
  %83 = load %struct.ath10k_wmi*, %struct.ath10k_wmi** %6, align 8
  %84 = getelementptr inbounds %struct.ath10k_wmi, %struct.ath10k_wmi* %83, i32 0, i32 0
  %85 = load %struct.mgmt_tx_compl_params*, %struct.mgmt_tx_compl_params** %4, align 8
  %86 = getelementptr inbounds %struct.mgmt_tx_compl_params, %struct.mgmt_tx_compl_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @idr_remove(i32* %84, i32 %87)
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_mgmt_tx_pkt_addr* @idr_find(i32*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, %struct.sk_buff*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
