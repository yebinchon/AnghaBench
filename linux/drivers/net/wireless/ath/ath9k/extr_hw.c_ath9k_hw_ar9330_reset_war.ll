; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_ar9330_reset_war.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_ar9330_reset_war.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 (...)* }

@AR_NUM_QCU = common dso_local global i32 0, align 4
@ATH9K_RESET_COLD = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reset MAC via external reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"External reset failed, err=%d\0A\00", align 1
@AR_RTC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_ar9330_reset_war to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_ar9330_reset_war(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AR_NUM_QCU, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ath9k_hw_numtxpending(%struct.ath_hw* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %9

24:                                               ; preds = %19, %9
  %25 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = icmp ne i32 (...)* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ATH9K_RESET_COLD, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32, %29
  store i32 0, i32* %8, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = call i32 @ath9k_hw_common(%struct.ath_hw* %37)
  %39 = load i32, i32* @RESET, align 4
  %40 = call i32 @ath_dbg(i32 %38, i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load i32 (...)*, i32 (...)** %42, align 8
  %44 = call i32 (...) %43()
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = call i32 @ath9k_hw_common(%struct.ath_hw* %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ath_err(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %3, align 4
  br label %57

52:                                               ; preds = %36
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = load i32, i32* @AR_RTC_RESET, align 4
  %55 = call i32 @REG_WRITE(%struct.ath_hw* %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %52, %32, %24
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ath9k_hw_numtxpending(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(i32, i8*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
