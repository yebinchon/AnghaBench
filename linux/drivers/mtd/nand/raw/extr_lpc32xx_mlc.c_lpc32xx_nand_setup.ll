; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_nand_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MLCCMD_RESET = common dso_local global i32 0, align 4
@MLCLOCKPR_MAGIC = common dso_local global i32 0, align 4
@MLCICR_LARGEBLOCK = common dso_local global i32 0, align 4
@MLCICR_LONGADDR = common dso_local global i32 0, align 4
@MLCIRQ_CONTROLLER_READY = common dso_local global i32 0, align 4
@MLCIRQ_NAND_READY = common dso_local global i32 0, align 4
@MLCCEH_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_nand_host*)* @lpc32xx_nand_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_nand_setup(%struct.lpc32xx_nand_host* %0) #0 {
  %2 = alloca %struct.lpc32xx_nand_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lpc32xx_nand_host* %0, %struct.lpc32xx_nand_host** %2, align 8
  %5 = load i32, i32* @MLCCMD_RESET, align 4
  %6 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @MLC_CMD(i32 %8)
  %10 = call i32 @writel(i32 %5, i32 %9)
  %11 = call i32 @udelay(i32 1000)
  %12 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_get_rate(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 104000000, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @MLCLOCKPR_MAGIC, align 4
  %21 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @MLC_LOCK_PR(i32 %23)
  %25 = call i32 @writew(i32 %20, i32 %24)
  %26 = load i32, i32* @MLCICR_LARGEBLOCK, align 4
  %27 = load i32, i32* @MLCICR_LONGADDR, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MLC_ICR(i32 %32)
  %34 = call i32 @writel(i32 %29, i32 %33)
  %35 = load i32, i32* @MLCLOCKPR_MAGIC, align 4
  %36 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %37 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MLC_LOCK_PR(i32 %38)
  %40 = call i32 @writew(i32 %35, i32 %39)
  store i32 0, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %41, %46
  %48 = add nsw i32 %47, 1
  %49 = call i32 @MLCTIMEREG_TCEA_DELAY(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %52, %57
  %59 = add nsw i32 %58, 1
  %60 = call i32 @MLCTIMEREG_BUSY_DELAY(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %65 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %63, %68
  %70 = add nsw i32 %69, 1
  %71 = call i32 @MLCTIMEREG_NAND_TA(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %76 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %74, %79
  %81 = add nsw i32 %80, 1
  %82 = call i32 @MLCTIMEREG_RD_HIGH(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %87 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %85, %90
  %92 = call i32 @MLCTIMEREG_RD_LOW(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %97 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %95, %100
  %102 = add nsw i32 %101, 1
  %103 = call i32 @MLCTIMEREG_WR_HIGH(i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %108 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %106, %111
  %113 = call i32 @MLCTIMEREG_WR_LOW(i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %118 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @MLC_TIME_REG(i32 %119)
  %121 = call i32 @writel(i32 %116, i32 %120)
  %122 = load i32, i32* @MLCIRQ_CONTROLLER_READY, align 4
  %123 = load i32, i32* @MLCIRQ_NAND_READY, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %126 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @MLC_IRQ_MR(i32 %127)
  %129 = call i32 @writeb(i32 %124, i32 %128)
  %130 = load i32, i32* @MLCCEH_NORMAL, align 4
  %131 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %2, align 8
  %132 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @MLC_CEH(i32 %133)
  %135 = call i32 @writel(i32 %130, i32 %134)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MLC_CMD(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @MLC_LOCK_PR(i32) #1

declare dso_local i32 @MLC_ICR(i32) #1

declare dso_local i32 @MLCTIMEREG_TCEA_DELAY(i32) #1

declare dso_local i32 @MLCTIMEREG_BUSY_DELAY(i32) #1

declare dso_local i32 @MLCTIMEREG_NAND_TA(i32) #1

declare dso_local i32 @MLCTIMEREG_RD_HIGH(i32) #1

declare dso_local i32 @MLCTIMEREG_RD_LOW(i32) #1

declare dso_local i32 @MLCTIMEREG_WR_HIGH(i32) #1

declare dso_local i32 @MLCTIMEREG_WR_LOW(i32) #1

declare dso_local i32 @MLC_TIME_REG(i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @MLC_IRQ_MR(i32) #1

declare dso_local i32 @MLC_CEH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
