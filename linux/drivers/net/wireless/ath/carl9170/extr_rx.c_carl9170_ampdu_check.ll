; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_ampdu_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_ampdu_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@AR9170_RX_STATUS_MPDU = common dso_local global i32 0, align 4
@AR9170_RX_STATUS_MPDU_SINGLE = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_LAST_KNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32*, i32, %struct.ieee80211_rx_status*)* @carl9170_ampdu_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_ampdu_check(%struct.ar9170* %0, i32* %1, i32 %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @AR9170_RX_STATUS_MPDU, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @AR9170_RX_STATUS_MPDU_SINGLE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %61

17:                                               ; preds = %4
  %18 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %19 = load i32, i32* @RX_FLAG_AMPDU_LAST_KNOWN, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to %struct.ieee80211_hdr*
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @ieee80211_is_data_qos(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %17
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @ieee80211_is_data_present(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %61

42:                                               ; preds = %37, %17
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @ieee80211_is_ack(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @ieee80211_is_back(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @ieee80211_is_back_req(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46, %42
  store i32 1, i32* %5, align 4
  br label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @ieee80211_is_action(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %61

60:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59, %54, %41, %16
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @ieee80211_is_data_present(i32) #1

declare dso_local i64 @ieee80211_is_ack(i32) #1

declare dso_local i64 @ieee80211_is_back(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
