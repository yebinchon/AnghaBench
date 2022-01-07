; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-ctrlbank.c_lm3533_ctrlbank_set_max_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-ctrlbank.c_lm3533_ctrlbank_set_max_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3533_ctrlbank = type { i32, i32 }

@LM3533_MAX_CURRENT_MIN = common dso_local global i64 0, align 8
@LM3533_MAX_CURRENT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LM3533_MAX_CURRENT_STEP = common dso_local global i64 0, align 8
@LM3533_REG_MAX_CURRENT_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to set max current\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm3533_ctrlbank_set_max_current(%struct.lm3533_ctrlbank* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3533_ctrlbank*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.lm3533_ctrlbank* %0, %struct.lm3533_ctrlbank** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @LM3533_MAX_CURRENT_MIN, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @LM3533_MAX_CURRENT_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @LM3533_MAX_CURRENT_MIN, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64, i64* @LM3533_MAX_CURRENT_STEP, align 8
  %24 = sdiv i64 %22, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.lm3533_ctrlbank*, %struct.lm3533_ctrlbank** %4, align 8
  %26 = load i32, i32* @LM3533_REG_MAX_CURRENT_BASE, align 4
  %27 = call i64 @lm3533_ctrlbank_get_reg(%struct.lm3533_ctrlbank* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.lm3533_ctrlbank*, %struct.lm3533_ctrlbank** %4, align 8
  %29 = getelementptr inbounds %struct.lm3533_ctrlbank, %struct.lm3533_ctrlbank* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @lm3533_write(i32 %30, i64 %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.lm3533_ctrlbank*, %struct.lm3533_ctrlbank** %4, align 8
  %38 = getelementptr inbounds %struct.lm3533_ctrlbank, %struct.lm3533_ctrlbank* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %19
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @lm3533_ctrlbank_get_reg(%struct.lm3533_ctrlbank*, i32) #1

declare dso_local i32 @lm3533_write(i32, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
