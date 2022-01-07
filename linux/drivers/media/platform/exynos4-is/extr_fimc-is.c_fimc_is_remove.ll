; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.fimc_is = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimc_is_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fimc_is*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.fimc_is* @dev_get_drvdata(%struct.device* %7)
  store %struct.fimc_is* %8, %struct.fimc_is** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @pm_runtime_disable(%struct.device* %9)
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @pm_runtime_set_suspended(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @pm_runtime_status_suspended(%struct.device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @fimc_is_runtime_suspend(%struct.device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %21 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.fimc_is* %23)
  %25 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %26 = call i32 @fimc_is_unregister_subdevs(%struct.fimc_is* %25)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @vb2_dma_contig_clear_max_seg_size(%struct.device* %27)
  %29 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %30 = call i32 @fimc_is_put_clocks(%struct.fimc_is* %29)
  %31 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %32 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iounmap(i32 %33)
  %35 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %36 = call i32 @fimc_is_debugfs_remove(%struct.fimc_is* %35)
  %37 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %38 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @release_firmware(i32 %40)
  %42 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %43 = call i32 @fimc_is_free_cpu_memory(%struct.fimc_is* %42)
  ret i32 0
}

declare dso_local %struct.fimc_is* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_status_suspended(%struct.device*) #1

declare dso_local i32 @fimc_is_runtime_suspend(%struct.device*) #1

declare dso_local i32 @free_irq(i32, %struct.fimc_is*) #1

declare dso_local i32 @fimc_is_unregister_subdevs(%struct.fimc_is*) #1

declare dso_local i32 @vb2_dma_contig_clear_max_seg_size(%struct.device*) #1

declare dso_local i32 @fimc_is_put_clocks(%struct.fimc_is*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @fimc_is_debugfs_remove(%struct.fimc_is*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @fimc_is_free_cpu_memory(%struct.fimc_is*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
