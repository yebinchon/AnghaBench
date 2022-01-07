; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_stat_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_stat_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32 }

@ATH_MCI_CONFIG_MCI_STAT_DBG = common dso_local global i32 0, align 4
@AR_MCI_DBG_CNT_CTRL = common dso_local global i32 0, align 4
@AR_MCI_DBG_CNT_CTRL_ENABLE = common dso_local global i32 0, align 4
@AR_MCI_DBG_CNT_CTRL_BT_LINKID = common dso_local global i32 0, align 4
@MCI_STAT_ALL_BT_LINKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_mci_stat_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_stat_setup(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.ath9k_hw_mci* %6, %struct.ath9k_hw_mci** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call i32 @AR_SREV_9565(%struct.ath_hw* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %13 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATH_MCI_CONFIG_MCI_STAT_DBG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = load i32, i32* @AR_MCI_DBG_CNT_CTRL, align 4
  %21 = load i32, i32* @AR_MCI_DBG_CNT_CTRL_ENABLE, align 4
  %22 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_MCI_DBG_CNT_CTRL, align 4
  %25 = load i32, i32* @AR_MCI_DBG_CNT_CTRL_BT_LINKID, align 4
  %26 = load i32, i32* @MCI_STAT_ALL_BT_LINKID, align 4
  %27 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %23, i32 %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %11
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_MCI_DBG_CNT_CTRL, align 4
  %31 = load i32, i32* @AR_MCI_DBG_CNT_CTRL_ENABLE, align 4
  %32 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %29, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %10, %28, %18
  ret void
}

declare dso_local i32 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
