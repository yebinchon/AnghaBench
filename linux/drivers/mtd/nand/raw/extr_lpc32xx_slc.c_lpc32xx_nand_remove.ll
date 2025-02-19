; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc32xx_nand_host = type { i32, i32, i32, i32 }

@SLCCFG_CE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpc32xx_nand_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.lpc32xx_nand_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.lpc32xx_nand_host* %6, %struct.lpc32xx_nand_host** %4, align 8
  %7 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %8 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %7, i32 0, i32 3
  %9 = call i32 @nand_release(i32* %8)
  %10 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %11 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dma_release_channel(i32 %12)
  %14 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %15 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SLC_CTRL(i32 %16)
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @SLCCFG_CE_LOW, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SLC_CTRL(i32 %26)
  %28 = call i32 @writel(i32 %23, i32 %27)
  %29 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  %33 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %34 = call i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host* %33)
  ret i32 0
}

declare dso_local %struct.lpc32xx_nand_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @SLC_CTRL(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
