; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_skb_get_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_skb_get_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_vendor_radiotap = type { i64, i64 }

@RX_FLAG_RADIOTAP_HE = common dso_local global i32 0, align 4
@RX_FLAG_RADIOTAP_HE_MU = common dso_local global i32 0, align 4
@RX_FLAG_RADIOTAP_LSIG = common dso_local global i32 0, align 4
@RX_FLAG_RADIOTAP_VENDOR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sk_buff*)* @iwl_mvm_skb_get_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iwl_mvm_skb_get_hdr(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ieee80211_rx_status*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_vendor_radiotap*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %6)
  store %struct.ieee80211_rx_status* %7, %struct.ieee80211_rx_status** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = call i32 @BUILD_BUG_ON(i32 0)
  %12 = call i32 @BUILD_BUG_ON(i32 0)
  %13 = call i32 @BUILD_BUG_ON(i32 0)
  %14 = call i32 @BUILD_BUG_ON(i32 0)
  %15 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RX_FLAG_RADIOTAP_HE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr i8, i8* %22, i64 4
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RX_FLAG_RADIOTAP_HE_MU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr i8, i8* %32, i64 4
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RX_FLAG_RADIOTAP_LSIG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr i8, i8* %42, i64 4
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RX_FLAG_RADIOTAP_VENDOR_DATA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = bitcast i8* %52 to %struct.ieee80211_vendor_radiotap*
  store %struct.ieee80211_vendor_radiotap* %53, %struct.ieee80211_vendor_radiotap** %5, align 8
  %54 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 16, %56
  %58 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %57, %60
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr i8, i8* %62, i64 %61
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %51, %44
  %65 = load i8*, i8** %4, align 8
  ret i8* %65
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
