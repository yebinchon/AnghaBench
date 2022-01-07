; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.ieee80211_channel*, %struct.ieee80211_channel*, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32 }
%struct.htt_rx_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.htt_rx_desc*, i32)* @ath10k_htt_rx_h_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_h_channel(%struct.ath10k* %0, %struct.ieee80211_rx_status* %1, %struct.htt_rx_desc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca %struct.htt_rx_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store %struct.htt_rx_desc* %2, %struct.htt_rx_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 3
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %10, align 8
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %18 = icmp ne %struct.ieee80211_channel* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 2
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  store %struct.ieee80211_channel* %22, %struct.ieee80211_channel** %10, align 8
  br label %23

23:                                               ; preds = %19, %4
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %25 = icmp ne %struct.ieee80211_channel* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %28 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %8, align 8
  %29 = call %struct.ieee80211_channel* @ath10k_htt_rx_h_peer_channel(%struct.ath10k* %27, %struct.htt_rx_desc* %28)
  store %struct.ieee80211_channel* %29, %struct.ieee80211_channel** %10, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %32 = icmp ne %struct.ieee80211_channel* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.ieee80211_channel* @ath10k_htt_rx_h_vdev_channel(%struct.ath10k* %34, i32 %35)
  store %struct.ieee80211_channel* %36, %struct.ieee80211_channel** %10, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %39 = icmp ne %struct.ieee80211_channel* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %42 = call %struct.ieee80211_channel* @ath10k_htt_rx_h_any_channel(%struct.ath10k* %41)
  store %struct.ieee80211_channel* %42, %struct.ieee80211_channel** %10, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %45 = icmp ne %struct.ieee80211_channel* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 1
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %48, align 8
  store %struct.ieee80211_channel* %49, %struct.ieee80211_channel** %10, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %55 = icmp ne %struct.ieee80211_channel* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %68

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %57, %56
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ieee80211_channel* @ath10k_htt_rx_h_peer_channel(%struct.ath10k*, %struct.htt_rx_desc*) #1

declare dso_local %struct.ieee80211_channel* @ath10k_htt_rx_h_vdev_channel(%struct.ath10k*, i32) #1

declare dso_local %struct.ieee80211_channel* @ath10k_htt_rx_h_any_channel(%struct.ath10k*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
