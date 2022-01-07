; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_omap_host = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmc_omap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_omap_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_omap_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_omap_host* %6, %struct.mmc_omap_host** %3, align 8
  %7 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %8 = icmp eq %struct.mmc_omap_host* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mmc_omap_remove_slot(i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %30, i32 0, i32 7
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = icmp ne i32 (i32*)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %37, i32 0, i32 7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 %41(i32* %43)
  br label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %47 = call i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host* %46, i32 0)
  %48 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %52 = call i32 @free_irq(i32 %50, %struct.mmc_omap_host* %51)
  %53 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %54 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_put(i32 %55)
  %57 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %58 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clk_disable(i32 %59)
  %61 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %62 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @clk_put(i32 %63)
  %65 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %45
  %70 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %71 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @dma_release_channel(i64 %72)
  br label %74

74:                                               ; preds = %69, %45
  %75 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %76 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %81 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @dma_release_channel(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %86 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @destroy_workqueue(i32 %87)
  ret i32 0
}

declare dso_local %struct.mmc_omap_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_omap_remove_slot(i32) #1

declare dso_local i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.mmc_omap_host*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
