; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_start_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_start_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@MCI_BT_CAL_START = common dso_local global i64 0, align 8
@MCI_BT_CAL = common dso_local global i64 0, align 8
@MCI_GPM_WLAN_CAL_GRANT = common dso_local global i32 0, align 4
@MCI_GPM = common dso_local global i32 0, align 4
@MCI_GPM_BT_CAL_DONE = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"MCI BT_CAL_DONE received\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MCI BT_CAL_DONE not received\0A\00", align 1
@MCI_BT_AWAKE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_start_reset(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_mci*, align 8
  %8 = alloca [4 x i32], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %6, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ath9k_hw_mci* %13, %struct.ath9k_hw_mci** %7, align 8
  %14 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %17 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %16)
  %18 = call i32 @ar9003_mci_2g5g_changed(%struct.ath_hw* %15, i32 %17)
  %19 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %7, align 8
  %20 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MCI_BT_CAL_START, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load i64, i64* @MCI_BT_CAL, align 8
  %27 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %7, align 8
  %28 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = call i32 @ar9003_mci_disable_interrupt(%struct.ath_hw* %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* @MCI_GPM_WLAN_CAL_GRANT, align 4
  %33 = call i32 @MCI_GPM_SET_CAL_TYPE(i32* %31, i32 %32)
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = load i32, i32* @MCI_GPM, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %37 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %34, i32 %35, i32 0, i32* %36, i32 16, i32 1, i32 0)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = load i32, i32* @MCI_GPM_BT_CAL_DONE, align 4
  %40 = call i64 @ar9003_mci_wait_for_gpm(%struct.ath_hw* %38, i32 %39, i32 0, i32 25000)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %44 = load i32, i32* @MCI, align 4
  %45 = call i32 @ath_dbg(%struct.ath_common* %43, i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %50

46:                                               ; preds = %25
  %47 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %48 = load i32, i32* @MCI, align 4
  %49 = call i32 @ath_dbg(%struct.ath_common* %47, i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i64, i64* @MCI_BT_AWAKE, align 8
  %52 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %7, align 8
  %53 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = call i32 @ar9003_mci_enable_interrupt(%struct.ath_hw* %54)
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ar9003_mci_2g5g_changed(%struct.ath_hw*, i32) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_disable_interrupt(%struct.ath_hw*) #1

declare dso_local i32 @MCI_GPM_SET_CAL_TYPE(i32*, i32) #1

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @ar9003_mci_wait_for_gpm(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ar9003_mci_enable_interrupt(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
