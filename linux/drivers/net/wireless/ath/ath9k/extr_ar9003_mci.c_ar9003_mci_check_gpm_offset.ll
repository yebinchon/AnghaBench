; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_check_gpm_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_check_gpm_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32, i32 }
%struct.ath_common = type { i32 }

@AR_MCI_GPM_1 = common dso_local global i32 0, align 4
@AR_MCI_GPM_WRITE_PTR = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"GPM cached write pointer mismatch %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_check_gpm_offset(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath9k_hw_mci*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ath9k_hw_mci* %10, %struct.ath9k_hw_mci** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load i32, i32* @AR_MCI_GPM_1, align 4
  %13 = call i32 @REG_READ(%struct.ath_hw* %11, i32 %12)
  %14 = load i32, i32* @AR_MCI_GPM_WRITE_PTR, align 4
  %15 = call i64 @MS(i32 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %24 = load i32, i32* @MCI, align 4
  %25 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %26 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ath_dbg(%struct.ath_common* %23, i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %31 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %33 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %35 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
