; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.au1xmmc_host = type { i32, %struct.TYPE_6__*, i32, i64, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32)*, i64 }

@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@HOST_F_DBDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1xmmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xmmc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.au1xmmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.au1xmmc_host* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.au1xmmc_host* %5, %struct.au1xmmc_host** %3, align 8
  %6 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %7 = icmp ne %struct.au1xmmc_host* %6, null
  br i1 %7, label %8, label %102

8:                                                ; preds = %1
  %9 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call i32 @mmc_remove_host(%struct.TYPE_6__* %11)
  %13 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %13, i32 0, i32 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %8
  %18 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %18, i32 0, i32 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_6__*, i32)* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %24
  %34 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %34, i32 0, i32 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %37, align 8
  %39 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 %38(%struct.TYPE_6__* %41, i32 0)
  br label %43

43:                                               ; preds = %33, %24, %17, %8
  %44 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %45 = call i32 @HOST_ENABLE(%struct.au1xmmc_host* %44)
  %46 = call i32 @__raw_writel(i32 0, i32 %45)
  %47 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %48 = call i32 @HOST_CONFIG(%struct.au1xmmc_host* %47)
  %49 = call i32 @__raw_writel(i32 0, i32 %48)
  %50 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %51 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %50)
  %52 = call i32 @__raw_writel(i32 0, i32 %51)
  %53 = call i32 (...) @wmb()
  %54 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %54, i32 0, i32 7
  %56 = call i32 @tasklet_kill(i32* %55)
  %57 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %58 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %57, i32 0, i32 6
  %59 = call i32 @tasklet_kill(i32* %58)
  %60 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %61 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HOST_F_DBDMA, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %43
  %67 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %68 = call i32 @au1xmmc_dbdma_shutdown(%struct.au1xmmc_host* %67)
  br label %69

69:                                               ; preds = %66, %43
  %70 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %71 = call i32 @au1xmmc_set_power(%struct.au1xmmc_host* %70, i32 0)
  %72 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %73 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clk_disable_unprepare(i32 %74)
  %76 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %77 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clk_put(i32 %78)
  %80 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %81 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %84 = call i32 @free_irq(i32 %82, %struct.au1xmmc_host* %83)
  %85 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %86 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @iounmap(i8* %88)
  %90 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %91 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @release_resource(i32 %92)
  %94 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %95 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @kfree(i32 %96)
  %98 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %99 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @mmc_free_host(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %69, %1
  ret i32 0
}

declare dso_local %struct.au1xmmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mmc_remove_host(%struct.TYPE_6__*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @HOST_ENABLE(%struct.au1xmmc_host*) #1

declare dso_local i32 @HOST_CONFIG(%struct.au1xmmc_host*) #1

declare dso_local i32 @HOST_CONFIG2(%struct.au1xmmc_host*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @au1xmmc_dbdma_shutdown(%struct.au1xmmc_host*) #1

declare dso_local i32 @au1xmmc_set_power(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @free_irq(i32, %struct.au1xmmc_host*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mmc_free_host(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
