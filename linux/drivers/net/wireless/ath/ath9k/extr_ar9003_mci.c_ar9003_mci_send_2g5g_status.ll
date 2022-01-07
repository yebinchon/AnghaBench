; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_2g5g_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_2g5g_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i64, i32 }

@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@MCI_2G_FLAGS_CLEAR_MASK = common dso_local global i64 0, align 8
@MCI_2G_FLAGS_SET_MASK = common dso_local global i64 0, align 8
@MCI_5G_FLAGS_CLEAR_MASK = common dso_local global i64 0, align 8
@MCI_5G_FLAGS_SET_MASK = common dso_local global i64 0, align 8
@MCI_GPM_COEX_BT_FLAGS_CLEAR = common dso_local global i32 0, align 4
@MCI_GPM_COEX_BT_FLAGS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_mci_send_2g5g_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_send_2g5g_status(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ath9k_hw_mci* %10, %struct.ath9k_hw_mci** %5, align 8
  %11 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %12 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %17 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MCI_BT_SLEEP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  br label %51

22:                                               ; preds = %15
  %23 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* @MCI_2G_FLAGS_CLEAR_MASK, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* @MCI_2G_FLAGS_SET_MASK, align 8
  store i64 %29, i64* %6, align 8
  br label %33

30:                                               ; preds = %22
  %31 = load i64, i64* @MCI_5G_FLAGS_CLEAR_MASK, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* @MCI_5G_FLAGS_SET_MASK, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MCI_GPM_COEX_BT_FLAGS_CLEAR, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @ar9003_mci_send_coex_bt_flags(%struct.ath_hw* %37, i32 %38, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MCI_GPM_COEX_BT_FLAGS_SET, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @ar9003_mci_send_coex_bt_flags(%struct.ath_hw* %46, i32 %47, i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %21, %45, %42
  ret void
}

declare dso_local i32 @ar9003_mci_send_coex_bt_flags(%struct.ath_hw*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
