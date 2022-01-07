; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_round_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_round_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_NUM_REG_CLOCKS = common dso_local global i64 0, align 8
@PRCMU_ARMSS = common dso_local global i64 0, align 8
@PRCMU_PLLDSI = common dso_local global i64 0, align 8
@PRCMU_DSI0CLK = common dso_local global i64 0, align 8
@PRCMU_DSI1CLK = common dso_local global i64 0, align 8
@PRCMU_DSI0ESCCLK = common dso_local global i64 0, align 8
@PRCMU_DSI2ESCCLK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prcmu_round_clock_rate(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PRCMU_NUM_REG_CLOCKS, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @round_clock_rate(i64 %10, i64 %11)
  store i64 %12, i64* %3, align 8
  br label %52

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @PRCMU_ARMSS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @round_armss_rate(i64 %18)
  store i64 %19, i64* %3, align 8
  br label %52

20:                                               ; preds = %13
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @PRCMU_PLLDSI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @round_plldsi_rate(i64 %25)
  store i64 %26, i64* %3, align 8
  br label %52

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @PRCMU_DSI0CLK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @PRCMU_DSI1CLK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @round_dsiclk_rate(i64 %36)
  store i64 %37, i64* %3, align 8
  br label %52

38:                                               ; preds = %31
  %39 = load i64, i64* @PRCMU_DSI0ESCCLK, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @PRCMU_DSI2ESCCLK, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @round_dsiescclk_rate(i64 %47)
  store i64 %48, i64* %3, align 8
  br label %52

49:                                               ; preds = %42, %38
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @prcmu_clock_rate(i64 %50)
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %49, %46, %35, %24, %17, %9
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @round_clock_rate(i64, i64) #1

declare dso_local i64 @round_armss_rate(i64) #1

declare dso_local i64 @round_plldsi_rate(i64) #1

declare dso_local i64 @round_dsiclk_rate(i64) #1

declare dso_local i64 @round_dsiescclk_rate(i64) #1

declare dso_local i64 @prcmu_clock_rate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
