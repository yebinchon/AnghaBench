; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_dsiclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_dsiclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@PRCM_DSI_PLLOUT_SEL = common dso_local global i32 0, align 4
@dsiclk = common dso_local global %struct.TYPE_2__* null, align 8
@PRCM_DSI_PLLOUT_SEL_OFF = common dso_local global i32 0, align 4
@PRCM_PLLDSI_FREQ = common dso_local global i32 0, align 4
@PRCMU_HDMICLK = common dso_local global i32 0, align 4
@PLL_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @dsiclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dsiclk_rate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @PRCM_DSI_PLLOUT_SEL, align 4
  %7 = call i32 @readl(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %8, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %14, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PRCM_DSI_PLLOUT_SEL_OFF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %53 [
    i32 128, label %38
    i32 129, label %41
    i32 130, label %44
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %38
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %41
  %45 = load i32, i32* @PRCM_PLLDSI_FREQ, align 4
  %46 = load i32, i32* @PRCMU_HDMICLK, align 4
  %47 = call i32 @clock_rate(i32 %46)
  %48 = load i32, i32* @PLL_RAW, align 4
  %49 = call i32 @pll_rate(i32 %45, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %49, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %2, align 8
  br label %54

53:                                               ; preds = %36
  store i64 0, i64* %2, align 8
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @pll_rate(i32, i32, i32) #1

declare dso_local i32 @clock_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
