; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_sync_bt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_sync_bt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32 }

@MCI_STATE_REMOTE_SLEEP = common dso_local global i32 0, align 4
@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_mci_sync_bt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_sync_bt_state(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_mci*, align 8
  %4 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ath9k_hw_mci* %7, %struct.ath9k_hw_mci** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = load i32, i32* @MCI_STATE_REMOTE_SLEEP, align 4
  %10 = call i64 @ar9003_mci_state(%struct.ath_hw* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %12 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %19 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %22 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MCI_BT_SLEEP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = call i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw* %27, i32 1)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = call i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw* %29, i32 1)
  %31 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %32 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = call i32 @ar9003_mci_send_coex_halt_bt_gpm(%struct.ath_hw* %36, i32 0, i32 1)
  br label %38

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38, %20
  ret void
}

declare dso_local i64 @ar9003_mci_state(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_halt_bt_gpm(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
