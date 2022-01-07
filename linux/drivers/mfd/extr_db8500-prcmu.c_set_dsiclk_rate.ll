; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_dsiclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_dsiclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@PRCM_PLLDSI_FREQ = common dso_local global i32 0, align 4
@PRCMU_HDMICLK = common dso_local global i32 0, align 4
@PLL_RAW = common dso_local global i32 0, align 4
@PRCM_DSI_PLLOUT_SEL_PHI = common dso_local global i32 0, align 4
@PRCM_DSI_PLLOUT_SEL_PHI_2 = common dso_local global i32 0, align 4
@PRCM_DSI_PLLOUT_SEL_PHI_4 = common dso_local global i32 0, align 4
@dsiclk = common dso_local global %struct.TYPE_2__* null, align 8
@PRCM_DSI_PLLOUT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @set_dsiclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dsiclk_rate(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @PRCM_PLLDSI_FREQ, align 4
  %8 = load i32, i32* @PRCMU_HDMICLK, align 4
  %9 = call i32 @clock_rate(i32 %8)
  %10 = load i32, i32* @PLL_RAW, align 4
  %11 = call i32 @pll_rate(i32 %7, i32 %9, i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @clock_divider(i32 %11, i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PRCM_DSI_PLLOUT_SEL_PHI, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @PRCM_DSI_PLLOUT_SEL_PHI_2, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @PRCM_DSI_PLLOUT_SEL_PHI_4, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ %17, %16 ], [ %26, %25 ]
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @PRCM_DSI_PLLOUT_SEL, align 4
  %34 = call i32 @readl(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsiclk, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %47, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @PRCM_DSI_PLLOUT_SEL, align 4
  %58 = call i32 @writel(i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @clock_divider(i32, i64) #1

declare dso_local i32 @pll_rate(i32, i32, i32) #1

declare dso_local i32 @clock_rate(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
