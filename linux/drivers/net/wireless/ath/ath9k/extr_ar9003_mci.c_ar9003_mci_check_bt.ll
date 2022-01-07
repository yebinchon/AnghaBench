; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_check_bt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_check_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32, i32, i32 }

@MCI_BT_AWAKE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_check_bt(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.ath9k_hw_mci* %6, %struct.ath9k_hw_mci** %3, align 8
  %7 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %8 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call i32 @ar9003_mci_sync_bt_state(%struct.ath_hw* %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call i32 @ar9003_mci_2g5g_switch(%struct.ath_hw* %15, i32 1)
  %17 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %18 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MCI_BT_AWAKE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %24 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %29 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %28, i32 0, i32 2
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %11, %27, %22, %12
  ret void
}

declare dso_local i32 @ar9003_mci_sync_bt_state(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_2g5g_switch(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
