; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_wlan_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_wlan_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32, i32* }

@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@MCI_GPM_COEX_AGENT = common dso_local global i32 0, align 4
@MCI_GPM_COEX_WLAN_CHANNELS = common dso_local global i32 0, align 4
@MCI_GPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_mci_send_coex_wlan_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ath9k_hw_mci* %9, %struct.ath9k_hw_mci** %5, align 8
  %10 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %11 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32* %13, i32** %6, align 8
  %14 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %15 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %20 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MCI_BT_SLEEP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  br label %37

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @MCI_GPM_COEX_AGENT, align 4
  %28 = load i32, i32* @MCI_GPM_COEX_WLAN_CHANNELS, align 4
  %29 = call i32 @MCI_GPM_SET_TYPE_OPCODE(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = load i32, i32* @MCI_GPM, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %30, i32 %31, i32 0, i32* %32, i32 16, i32 %33, i32 1)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @MCI_GPM_SET_TYPE_OPCODE(i32* %35, i32 255, i32 255)
  br label %37

37:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @MCI_GPM_SET_TYPE_OPCODE(i32*, i32, i32) #1

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
