; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_nand_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SLCCTRL_SW_RESET = common dso_local global i64 0, align 8
@SLCSTAT_INT_TC = common dso_local global i64 0, align 8
@SLCSTAT_INT_RDY_EN = common dso_local global i64 0, align 8
@LPC32XX_DEF_BUS_RATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_nand_host*)* @lpc32xx_nand_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_nand_setup(%struct.lpc32xx_nand_host* %0) #0 {
  %2 = alloca %struct.lpc32xx_nand_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.lpc32xx_nand_host* %0, %struct.lpc32xx_nand_host** %2, align 8
  %5 = load i64, i64* @SLCCTRL_SW_RESET, align 8
  %6 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @SLC_CTRL(i32 %8)
  %10 = call i32 @writel(i64 %5, i32 %9)
  %11 = call i32 @udelay(i32 1000)
  %12 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @SLC_CFG(i32 %14)
  %16 = call i32 @writel(i64 0, i32 %15)
  %17 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SLC_IEN(i32 %19)
  %21 = call i32 @writel(i64 0, i32 %20)
  %22 = load i64, i64* @SLCSTAT_INT_TC, align 8
  %23 = load i64, i64* @SLCSTAT_INT_RDY_EN, align 8
  %24 = or i64 %22, %23
  %25 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @SLC_ICR(i32 %27)
  %29 = call i32 @writel(i64 %24, i32 %28)
  %30 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @clk_get_rate(i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i64, i64* @LPC32XX_DEF_BUS_RATE, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %1
  %39 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SLCTAC_WDR(i32 %43)
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %47 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @SLCTAC_WWIDTH(i64 %45, i32 %50)
  %52 = or i64 %44, %51
  %53 = load i64, i64* %3, align 8
  %54 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @SLCTAC_WHOLD(i64 %53, i32 %58)
  %60 = or i64 %52, %59
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %63 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @SLCTAC_WSETUP(i64 %61, i32 %66)
  %68 = or i64 %60, %67
  %69 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %70 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @SLCTAC_RDR(i32 %73)
  %75 = or i64 %68, %74
  %76 = load i64, i64* %3, align 8
  %77 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %78 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @SLCTAC_RWIDTH(i64 %76, i32 %81)
  %83 = or i64 %75, %82
  %84 = load i64, i64* %3, align 8
  %85 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %86 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @SLCTAC_RHOLD(i64 %84, i32 %89)
  %91 = or i64 %83, %90
  %92 = load i64, i64* %3, align 8
  %93 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %94 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @SLCTAC_RSETUP(i64 %92, i32 %97)
  %99 = or i64 %91, %98
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* %4, align 8
  %101 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %102 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @SLC_TAC(i32 %103)
  %105 = call i32 @writel(i64 %100, i32 %104)
  ret void
}

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @SLC_CTRL(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SLC_CFG(i32) #1

declare dso_local i32 @SLC_IEN(i32) #1

declare dso_local i32 @SLC_ICR(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @SLCTAC_WDR(i32) #1

declare dso_local i64 @SLCTAC_WWIDTH(i64, i32) #1

declare dso_local i64 @SLCTAC_WHOLD(i64, i32) #1

declare dso_local i64 @SLCTAC_WSETUP(i64, i32) #1

declare dso_local i64 @SLCTAC_RDR(i32) #1

declare dso_local i64 @SLCTAC_RWIDTH(i64, i32) #1

declare dso_local i64 @SLCTAC_RHOLD(i64, i32) #1

declare dso_local i64 @SLCTAC_RSETUP(i64, i32) #1

declare dso_local i32 @SLC_TAC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
