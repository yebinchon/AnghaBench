; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.toshsd_host = type { i32, i32, %struct.pci_dev*, %struct.mmc_host* }
%struct.mmc_host = type { i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@toshsd_ops = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@HCLK = common dso_local global i32 0, align 4
@toshsd_irq = common dso_local global i32 0, align 4
@toshsd_thread_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MMIO %pa, IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @toshsd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshsd_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.toshsd_host*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %120

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call %struct.mmc_host* @mmc_alloc_host(i32 24, i32* %18)
  store %struct.mmc_host* %19, %struct.mmc_host** %8, align 8
  %20 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %21 = icmp ne %struct.mmc_host* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %116

25:                                               ; preds = %16
  %26 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %27 = call %struct.toshsd_host* @mmc_priv(%struct.mmc_host* %26)
  store %struct.toshsd_host* %27, %struct.toshsd_host** %7, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %29 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %30 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %29, i32 0, i32 3
  store %struct.mmc_host* %28, %struct.mmc_host** %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %33 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %32, i32 0, i32 2
  store %struct.pci_dev* %31, %struct.pci_dev** %33, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %36 = call i32 @pci_set_drvdata(%struct.pci_dev* %34, %struct.toshsd_host* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @DRIVER_NAME, align 4
  %39 = call i32 @pci_request_regions(%struct.pci_dev* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %111

43:                                               ; preds = %25
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @pci_iomap(%struct.pci_dev* %44, i32 0, i32 0)
  %46 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %47 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %49 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %108

55:                                               ; preds = %43
  %56 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 4
  store i32* @toshsd_ops, i32** %57, align 8
  %58 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %59 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @MMC_VDD_32_33, align 4
  %62 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @HCLK, align 4
  %65 = sdiv i32 %64, 512
  %66 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %67 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @HCLK, align 4
  %69 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %72 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %71, i32 0, i32 1
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %75 = call i32 @toshsd_init(%struct.toshsd_host* %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @toshsd_irq, align 4
  %80 = load i32, i32* @toshsd_thread_irq, align 4
  %81 = load i32, i32* @IRQF_SHARED, align 4
  %82 = load i32, i32* @DRIVER_NAME, align 4
  %83 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %84 = call i32 @request_threaded_irq(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, %struct.toshsd_host* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %55
  br label %102

88:                                               ; preds = %55
  %89 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %90 = call i32 @mmc_add_host(%struct.mmc_host* %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = call i32 @pci_resource_start(%struct.pci_dev* %91, i32 0)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %9, i32 %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = call i32 @pm_suspend_ignore_children(i32* %100, i32 1)
  store i32 0, i32* %3, align 4
  br label %120

102:                                              ; preds = %87
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = load %struct.toshsd_host*, %struct.toshsd_host** %7, align 8
  %105 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pci_iounmap(%struct.pci_dev* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %52
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i32 @pci_release_regions(%struct.pci_dev* %109)
  br label %111

111:                                              ; preds = %108, %42
  %112 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %113 = call i32 @mmc_free_host(%struct.mmc_host* %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @pci_set_drvdata(%struct.pci_dev* %114, %struct.toshsd_host* null)
  br label %116

116:                                              ; preds = %111, %22
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = call i32 @pci_disable_device(%struct.pci_dev* %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %88, %14
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local %struct.toshsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.toshsd_host*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @toshsd_init(%struct.toshsd_host*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.toshsd_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32*, i32) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
