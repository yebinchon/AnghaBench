; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_process_gpm_extra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_process_gpm_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32, i32, i64, i64 }
%struct.ath_common = type { i32 }

@MCI_GPM_COEX_AGENT = common dso_local global i64 0, align 8
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"MCI Recv GPM COEX Version Query\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MCI Recv GPM COEX Version Response\0A\00", align 1
@MCI_GPM_COEX_B_MAJOR_VERSION = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"MCI BT Coex version: %d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"MCI Recv GPM COEX Status Query = 0x%02X\0A\00", align 1
@MCI_GPM_COEX_B_WLAN_BITMAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"MCI Recv GPM COEX BT_Profile_Info\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"MCI Recv GPM COEX BT_Status_Update SEQ=%d (drop&query)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i64, i64*)* @ar9003_mci_process_gpm_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_process_gpm_extra(%struct.ath_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ath9k_hw_mci*, align 8
  %11 = alloca i64*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %9, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ath9k_hw_mci* %16, %struct.ath9k_hw_mci** %10, align 8
  %17 = load i64*, i64** %8, align 8
  store i64* %17, i64** %11, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MCI_GPM_COEX_AGENT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %88

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  switch i64 %23, label %87 [
    i64 129, label %24
    i64 128, label %30
    i64 130, label %59
    i64 132, label %72
    i64 131, label %78
  ]

24:                                               ; preds = %22
  %25 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %26 = load i32, i32* @MCI, align 4
  %27 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %25, i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %29 = call i32 @ar9003_mci_send_coex_version_response(%struct.ath_hw* %28, i32 1)
  br label %88

30:                                               ; preds = %22
  %31 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %32 = load i32, i32* @MCI, align 4
  %33 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %31, i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64*, i64** %11, align 8
  %35 = load i32, i32* @MCI_GPM_COEX_B_MAJOR_VERSION, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %40 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = load i32, i32* @MCI_GPM_COEX_B_MINOR_VERSION, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %47 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %49 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %51 = load i32, i32* @MCI, align 4
  %52 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %53 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %56 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %50, i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %57)
  br label %88

59:                                               ; preds = %22
  %60 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %61 = load i32, i32* @MCI, align 4
  %62 = load i64*, i64** %11, align 8
  %63 = load i32, i32* @MCI_GPM_COEX_B_WLAN_BITMAP, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %60, i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %69 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %71 = call i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw* %70, i32 1)
  br label %88

72:                                               ; preds = %22
  %73 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %74 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %76 = load i32, i32* @MCI, align 4
  %77 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %75, i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %88

78:                                               ; preds = %22
  %79 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %80 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %82 = load i32, i32* @MCI, align 4
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %81, i32 %82, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  br label %88

87:                                               ; preds = %22
  br label %88

88:                                               ; preds = %21, %87, %78, %72, %59, %30, %24
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9003_mci_send_coex_version_response(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
