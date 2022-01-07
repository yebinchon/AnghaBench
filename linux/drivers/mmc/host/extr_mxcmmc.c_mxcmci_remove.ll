; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mxcmci_host = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.mmc_host*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxcmci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mxcmci_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.mxcmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.mxcmci_host* %8, %struct.mxcmci_host** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call i32 @mmc_remove_host(%struct.mmc_host* %9)
  %11 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %12 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %17 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.mmc_host*)*, i32 (i32*, %struct.mmc_host*)** %19, align 8
  %21 = icmp ne i32 (i32*, %struct.mmc_host*)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %24 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32*, %struct.mmc_host*)*, i32 (i32*, %struct.mmc_host*)** %26, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %31 = call i32 %27(i32* %29, %struct.mmc_host* %30)
  br label %32

32:                                               ; preds = %22, %15, %1
  %33 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %34 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %39 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dma_release_channel(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %44 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  %47 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %48 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = call i32 @mmc_free_host(%struct.mmc_host* %51)
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mxcmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
