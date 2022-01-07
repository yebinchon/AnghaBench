; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc32xx_nand_host = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@use_dma = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.lpc32xx_nand_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.lpc32xx_nand_host* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.lpc32xx_nand_host* %5, %struct.lpc32xx_nand_host** %3, align 8
  %6 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %6, i32 0, i32 4
  %8 = call i32 @nand_release(i32* %7)
  %9 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.lpc32xx_nand_host* %12)
  %14 = load i64, i64* @use_dma, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_release_channel(i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %23 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %27 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_put(i32 %28)
  %30 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %31 = call i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host* %30)
  %32 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpio_free(i32 %36)
  ret i32 0
}

declare dso_local %struct.lpc32xx_nand_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.lpc32xx_nand_host*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
