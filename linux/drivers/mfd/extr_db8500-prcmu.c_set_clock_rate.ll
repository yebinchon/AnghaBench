; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@clk_mgt_lock = common dso_local global i32 0, align 4
@PRCM_SEM = common dso_local global i64 0, align 8
@PRCM_SEM_PRCM_SEM = common dso_local global i32 0, align 4
@prcmu_base = common dso_local global i64 0, align 8
@clk_mgt = common dso_local global %struct.TYPE_2__* null, align 8
@PRCM_CLK_MGT_CLK38 = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLK38DIV = common dso_local global i32 0, align 4
@PRCMU_SGACLK = common dso_local global i64 0, align 8
@PRCM_CLK_MGT_CLKPLLDIV_MASK = common dso_local global i32 0, align 4
@PRCM_SGACLK_MGT_SGACLKDIV_BY_2_5_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @set_clock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clock_rate(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @clk_mgt_lock, i64 %10)
  br label %12

12:                                               ; preds = %18, %2
  %13 = load i64, i64* @PRCM_SEM, align 8
  %14 = call i32 @readl(i64 %13)
  %15 = load i32, i32* @PRCM_SEM_PRCM_SEM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @cpu_relax()
  br label %12

20:                                               ; preds = %12
  %21 = load i64, i64* @prcmu_base, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %21, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %29, %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @clock_source_rate(i32 %35, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @clock_divider(i64 %42, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @PRCM_CLK_MGT_CLK38, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %20
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @PRCM_CLK_MGT_CLK38DIV, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @PRCM_CLK_MGT_CLK38DIV, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %59
  br label %69

69:                                               ; preds = %68, %49
  br label %111

70:                                               ; preds = %20
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @PRCMU_SGACLK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = load i32, i32* @PRCM_CLK_MGT_CLKPLLDIV_MASK, align 4
  %76 = load i32, i32* @PRCM_SGACLK_MGT_SGACLKDIV_BY_2_5_EN, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %96

83:                                               ; preds = %74
  %84 = load i64, i64* %7, align 8
  %85 = mul i64 %84, 10
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @do_div(i64 %86, i32 25)
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %4, align 8
  %90 = icmp ule i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @PRCM_SGACLK_MGT_SGACLKDIV_BY_2_5_EN, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %83
  br label %96

96:                                               ; preds = %95, %74
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @min(i32 %97, i32 31)
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %110

101:                                              ; preds = %70
  %102 = load i32, i32* @PRCM_CLK_MGT_CLKPLLDIV_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @min(i32 %106, i32 31)
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %101, %96
  br label %111

111:                                              ; preds = %110, %69
  %112 = load i32, i32* %5, align 4
  %113 = load i64, i64* @prcmu_base, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %115 = load i64, i64* %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %113, %118
  %120 = call i32 @writel(i32 %112, i64 %119)
  %121 = load i64, i64* @PRCM_SEM, align 8
  %122 = call i32 @writel(i32 0, i64 %121)
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* @clk_mgt_lock, i64 %123)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @clock_source_rate(i32, i32) #1

declare dso_local i32 @clock_divider(i64, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
