; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.meson_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SD_EMMC_IRQ_EN = common dso_local global i64 0, align 8
@SD_EMMC_DESC_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_mmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mmc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.meson_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.meson_host* @dev_get_drvdata(i32* %5)
  store %struct.meson_host* %6, %struct.meson_host** %3, align 8
  %7 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %8 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @mmc_remove_host(i32 %9)
  %11 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %12 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SD_EMMC_IRQ_EN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %18 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.meson_host* %20)
  %22 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %23 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SD_EMMC_DESC_BUF_LEN, align 4
  %26 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %27 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %30 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dma_free_coherent(i32 %24, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %34 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %1
  %38 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %39 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %42 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %45 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %48 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dma_free_coherent(i32 %40, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %37, %1
  %52 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %53 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  %56 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %57 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable_unprepare(i32 %58)
  %60 = load %struct.meson_host*, %struct.meson_host** %3, align 8
  %61 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mmc_free_host(i32 %62)
  ret i32 0
}

declare dso_local %struct.meson_host* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.meson_host*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
