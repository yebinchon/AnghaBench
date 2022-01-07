; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sk_buff* (%struct.ath10k*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_mgmt_tx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %6, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.sk_buff* (%struct.ath10k*, %struct.sk_buff*)*, %struct.sk_buff* (%struct.ath10k*, %struct.sk_buff*)** %15, align 8
  %17 = icmp ne %struct.sk_buff* (%struct.ath10k*, %struct.sk_buff*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.sk_buff* (%struct.ath10k*, %struct.sk_buff*)*, %struct.sk_buff* (%struct.ath10k*, %struct.sk_buff*)** %26, align 8
  %28 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.sk_buff* %27(%struct.ath10k* %28, %struct.sk_buff* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call i64 @IS_ERR(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.sk_buff* %35)
  store i32 %36, i32* %3, align 4
  br label %62

37:                                               ; preds = %21
  %38 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %38, %struct.sk_buff* %39, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %37
  %52 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @ieee80211_tx_status_irqsafe(i32 %59, %struct.sk_buff* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %51, %49, %34, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_cmd_send(%struct.ath10k*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
