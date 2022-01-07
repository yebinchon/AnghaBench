; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_set_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_set_clock_rate.c"
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
define dso_local i32 @prcmu_set_clock_rate(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
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
  %12 = call i32 @set_clock_rate(i64 %10, i64 %11)
  br label %59

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @PRCMU_ARMSS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @set_armss_rate(i64 %18)
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %13
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @PRCMU_PLLDSI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @set_plldsi_rate(i64 %25)
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @PRCMU_DSI0CLK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @PRCMU_DSI1CLK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %27
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @PRCMU_DSI0CLK, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @set_dsiclk_rate(i64 %38, i64 %39)
  br label %56

41:                                               ; preds = %31
  %42 = load i64, i64* @PRCMU_DSI0ESCCLK, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @PRCMU_DSI2ESCCLK, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @PRCMU_DSI0ESCCLK, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @set_dsiescclk_rate(i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %49, %45, %41
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %9
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %24, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @set_clock_rate(i64, i64) #1

declare dso_local i32 @set_armss_rate(i64) #1

declare dso_local i32 @set_plldsi_rate(i64) #1

declare dso_local i32 @set_dsiclk_rate(i64, i64) #1

declare dso_local i32 @set_dsiescclk_rate(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
