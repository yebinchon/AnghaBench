; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_request_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_request_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_SGACLK = common dso_local global i64 0, align 8
@PRCMU_NUM_REG_CLOCKS = common dso_local global i64 0, align 8
@PRCMU_TIMCLK = common dso_local global i64 0, align 8
@PRCMU_DSI0CLK = common dso_local global i64 0, align 8
@PRCMU_DSI1CLK = common dso_local global i64 0, align 8
@PRCMU_DSI0ESCCLK = common dso_local global i64 0, align 8
@PRCMU_DSI2ESCCLK = common dso_local global i64 0, align 8
@PRCMU_PLLDSI = common dso_local global i64 0, align 8
@PRCMU_SYSCLK = common dso_local global i64 0, align 8
@PRCMU_PLLSOC0 = common dso_local global i64 0, align 8
@PRCMU_PLLSOC1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_request_clock(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PRCMU_SGACLK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @request_sga_clock(i64 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %85

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @PRCMU_NUM_REG_CLOCKS, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @request_clock(i64 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %85

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @PRCMU_TIMCLK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @request_timclk(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @PRCMU_DSI0CLK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @PRCMU_DSI1CLK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @PRCMU_DSI0CLK, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @request_dsiclk(i64 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %32
  %43 = load i64, i64* @PRCMU_DSI0ESCCLK, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @PRCMU_DSI2ESCCLK, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @PRCMU_DSI0ESCCLK, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @request_dsiescclk(i64 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %85

56:                                               ; preds = %46, %42
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @PRCMU_PLLDSI, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @request_plldsi(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %56
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @PRCMU_SYSCLK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @request_sysclk(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %63
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @PRCMU_PLLSOC0, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @PRCMU_PLLSOC1, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %70
  %79 = load i64, i64* %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @request_pll(i64 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %78, %67, %60, %50, %36, %25, %17, %9
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @request_sga_clock(i64, i32) #1

declare dso_local i32 @request_clock(i64, i32) #1

declare dso_local i32 @request_timclk(i32) #1

declare dso_local i32 @request_dsiclk(i64, i32) #1

declare dso_local i32 @request_dsiescclk(i64, i32) #1

declare dso_local i32 @request_plldsi(i32) #1

declare dso_local i32 @request_sysclk(i32) #1

declare dso_local i32 @request_pll(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
