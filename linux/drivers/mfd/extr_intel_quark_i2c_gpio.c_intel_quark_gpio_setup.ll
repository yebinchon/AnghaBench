; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.mfd_cell = type { i32, %struct.dwapb_platform_data*, i64 }
%struct.dwapb_platform_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i64, i32* }
%struct.resource = type { i32, i32 }

@MFD_GPIO_BAR = common dso_local global i32 0, align 4
@INTEL_QUARK_IORES_MEM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INTEL_QUARK_GPIO_NPORTS = common dso_local global i32 0, align 4
@INTEL_QUARK_MFD_NGPIO = common dso_local global i32 0, align 4
@INTEL_QUARK_MFD_GPIO_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.mfd_cell*)* @intel_quark_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_quark_gpio_setup(%struct.pci_dev* %0, %struct.mfd_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.mfd_cell*, align 8
  %6 = alloca %struct.dwapb_platform_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.mfd_cell* %1, %struct.mfd_cell** %5, align 8
  %9 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %10 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.resource*
  store %struct.resource* %12, %struct.resource** %7, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @MFD_GPIO_BAR, align 4
  %17 = call i32 @pci_resource_start(%struct.pci_dev* %15, i32 %16)
  %18 = load %struct.resource*, %struct.resource** %7, align 8
  %19 = load i64, i64* @INTEL_QUARK_IORES_MEM, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %18, i64 %19
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load i32, i32* @MFD_GPIO_BAR, align 4
  %24 = call i32 @pci_resource_end(%struct.pci_dev* %22, i32 %23)
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = load i64, i64* @INTEL_QUARK_IORES_MEM, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %25, i64 %26
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.dwapb_platform_data* @devm_kzalloc(%struct.device* %29, i32 16, i32 %30)
  store %struct.dwapb_platform_data* %31, %struct.dwapb_platform_data** %6, align 8
  %32 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %33 = icmp ne %struct.dwapb_platform_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %97

37:                                               ; preds = %2
  %38 = load i32, i32* @INTEL_QUARK_GPIO_NPORTS, align 4
  %39 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %40 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.TYPE_2__* @devm_kcalloc(%struct.device* %41, i32 %44, i32 40, i32 %45)
  %47 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %48 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %47, i32 0, i32 0
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  %49 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %50 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %37
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %97

56:                                               ; preds = %37
  %57 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %58 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  store i32* null, i32** %60, align 8
  %61 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %62 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @INTEL_QUARK_MFD_NGPIO, align 4
  %66 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %67 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @INTEL_QUARK_MFD_GPIO_BASE, align 4
  %71 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %72 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %79 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %77, i32* %83, align 4
  %84 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %85 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %89 = getelementptr inbounds %struct.dwapb_platform_data, %struct.dwapb_platform_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.dwapb_platform_data*, %struct.dwapb_platform_data** %6, align 8
  %93 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %94 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %93, i32 0, i32 1
  store %struct.dwapb_platform_data* %92, %struct.dwapb_platform_data** %94, align 8
  %95 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %96 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %95, i32 0, i32 0
  store i32 16, i32* %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %56, %53, %34
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local %struct.dwapb_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
