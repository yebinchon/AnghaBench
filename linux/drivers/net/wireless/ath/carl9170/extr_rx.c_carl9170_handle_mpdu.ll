; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_handle_mpdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_handle_mpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32*, i32, %struct.ieee80211_rx_status*)* @carl9170_handle_mpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_handle_mpdu(%struct.ar9170* %0, i32* %1, i32 %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  %11 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @carl9170_ps_beacon(%struct.ar9170* %11, i32* %12, i32 %13)
  %15 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @carl9170_ba_check(%struct.ar9170* %15, i32* %16, i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.sk_buff* @carl9170_rx_copy_data(i32* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %37

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %28)
  %30 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %31 = call i32 @memcpy(i32 %29, %struct.ieee80211_rx_status* %30, i32 4)
  %32 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = call i32 @ieee80211_rx(i32 %34, %struct.sk_buff* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @carl9170_ps_beacon(%struct.ar9170*, i32*, i32) #1

declare dso_local i32 @carl9170_ba_check(%struct.ar9170*, i32*, i32) #1

declare dso_local %struct.sk_buff* @carl9170_rx_copy_data(i32*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
