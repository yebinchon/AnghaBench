; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_amsdu_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_amsdu_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"no channel configured; ignoring frame(s)!\0A\00", align 1
@ATH10K_CAC_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"htt rx cac running\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*)* @ath10k_htt_rx_amsdu_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_amsdu_allowed(%struct.ath10k* %0, %struct.sk_buff_head* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  %8 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %14 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %15 = call i32 @ath10k_dbg(%struct.ath10k* %13, i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i32, i32* @ATH10K_CAC_RUNNING, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %24 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %25 = call i32 @ath10k_dbg(%struct.ath10k* %23, i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %27

26:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %22, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
