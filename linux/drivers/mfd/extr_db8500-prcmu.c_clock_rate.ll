; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@ROOT_CLOCK_RATE = common dso_local global i64 0, align 8
@prcmu_base = common dso_local global i64 0, align 8
@clk_mgt = common dso_local global %struct.TYPE_2__* null, align 8
@PRCM_CLK_MGT_CLK38 = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLK38DIV = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_MASK = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_SOC0 = common dso_local global i32 0, align 4
@PRCM_PLLSOC0_FREQ = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_SOC1 = common dso_local global i32 0, align 4
@PRCM_PLLSOC1_FREQ = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_DDR = common dso_local global i32 0, align 4
@PRCM_PLLDDR_FREQ = common dso_local global i32 0, align 4
@PRCMU_SGACLK = common dso_local global i64 0, align 8
@PRCM_SGACLK_MGT_SGACLKDIV_BY_2_5_EN = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @clock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clock_rate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* @ROOT_CLOCK_RATE, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @prcmu_base, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %9, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PRCM_CLK_MGT_CLK38, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PRCM_CLK_MGT_CLK38DIV, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = udiv i64 %34, 2
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %33, %28, %21
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %2, align 8
  br label %117

38:                                               ; preds = %1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_SOC0, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %38
  %53 = load i32, i32* @PRCM_PLLSOC0_FREQ, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @pll_rate(i32 %53, i64 %54, i32 %59)
  store i64 %60, i64* %6, align 8
  br label %90

61:                                               ; preds = %38
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_SOC1, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* @PRCM_PLLSOC1_FREQ, align 4
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %69 = load i64, i64* %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @pll_rate(i32 %66, i64 %67, i32 %72)
  store i64 %73, i64* %6, align 8
  br label %89

74:                                               ; preds = %61
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_DDR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, i32* @PRCM_PLLDDR_FREQ, align 4
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @pll_rate(i32 %79, i64 %80, i32 %85)
  store i64 %86, i64* %6, align 8
  br label %88

87:                                               ; preds = %74
  store i64 0, i64* %2, align 8
  br label %117

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @PRCMU_SGACLK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @PRCM_SGACLK_MGT_SGACLKDIV_BY_2_5_EN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i64, i64* %6, align 8
  %101 = mul i64 %100, 10
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @do_div(i64 %102, i32 25)
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %2, align 8
  br label %117

105:                                              ; preds = %94, %90
  %106 = load i32, i32* @PRCM_CLK_MGT_CLKPLLDIV_MASK, align 4
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i64, i64* %6, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = udiv i64 %112, %114
  store i64 %115, i64* %2, align 8
  br label %117

116:                                              ; preds = %105
  store i64 0, i64* %2, align 8
  br label %117

117:                                              ; preds = %116, %111, %99, %87, %36
  %118 = load i64, i64* %2, align 8
  ret i64 %118
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @pll_rate(i32, i64, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
