; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mmci_host = type { i32, i64, %struct.variant_data* }
%struct.variant_data = type { i64 }

@MMCIMASK0 = common dso_local global i64 0, align 8
@MMCIMASK1 = common dso_local global i64 0, align 8
@MMCICOMMAND = common dso_local global i64 0, align 8
@MMCIDATACTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @mmci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmci_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmci_host*, align 8
  %5 = alloca %struct.variant_data*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %6 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %7 = call %struct.mmc_host* @amba_get_drvdata(%struct.amba_device* %6)
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = icmp ne %struct.mmc_host* %8, null
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.mmci_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.mmci_host* %12, %struct.mmci_host** %4, align 8
  %13 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %14 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %13, i32 0, i32 2
  %15 = load %struct.variant_data*, %struct.variant_data** %14, align 8
  store %struct.variant_data* %15, %struct.variant_data** %5, align 8
  %16 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %17 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_get_sync(i32* %17)
  %19 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %20 = call i32 @mmc_remove_host(%struct.mmc_host* %19)
  %21 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %22 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMCIMASK0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %28 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %10
  %32 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %33 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MMCIMASK1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  br label %38

38:                                               ; preds = %31, %10
  %39 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %40 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MMCICOMMAND, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  %45 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %46 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MMCIDATACTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %52 = call i32 @mmci_dma_release(%struct.mmci_host* %51)
  %53 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %54 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  %57 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %58 = call i32 @mmc_free_host(%struct.mmc_host* %57)
  br label %59

59:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local %struct.mmc_host* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local %struct.mmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mmci_dma_release(%struct.mmci_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
