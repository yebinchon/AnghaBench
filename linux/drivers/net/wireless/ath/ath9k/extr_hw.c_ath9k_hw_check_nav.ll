; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_check_nav.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_check_nav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_NAV = common dso_local global i32 0, align 4
@BSTUCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Abnormal NAV: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_check_nav(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @AR_NAV, align 4
  %9 = call i32 @REG_READ(%struct.ath_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, -559038737
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 32767
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %17 = load i32, i32* @BSTUCK, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ath_dbg(%struct.ath_common* %16, i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_NAV, align 4
  %22 = call i32 @REG_WRITE(%struct.ath_hw* %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %15, %12, %1
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
