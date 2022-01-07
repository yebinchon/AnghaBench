; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_i2c_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_i2c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.mfd_cell = type { i32, %struct.dw_i2c_platform_data*, i64 }
%struct.dw_i2c_platform_data = type { i32 }
%struct.dmi_system_id = type { i64 }
%struct.resource = type { i32, i32 }

@MFD_I2C_BAR = common dso_local global i32 0, align 4
@INTEL_QUARK_IORES_MEM = common dso_local global i64 0, align 8
@INTEL_QUARK_IORES_IRQ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmi_platform_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.mfd_cell*)* @intel_quark_i2c_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_quark_i2c_setup(%struct.pci_dev* %0, %struct.mfd_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.mfd_cell*, align 8
  %6 = alloca %struct.dmi_system_id*, align 8
  %7 = alloca %struct.dw_i2c_platform_data*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.mfd_cell* %1, %struct.mfd_cell** %5, align 8
  %10 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %11 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.resource*
  store %struct.resource* %13, %struct.resource** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @MFD_I2C_BAR, align 4
  %18 = call i32 @pci_resource_start(%struct.pci_dev* %16, i32 %17)
  %19 = load %struct.resource*, %struct.resource** %8, align 8
  %20 = load i64, i64* @INTEL_QUARK_IORES_MEM, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %19, i64 %20
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* @MFD_I2C_BAR, align 4
  %25 = call i32 @pci_resource_end(%struct.pci_dev* %23, i32 %24)
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = load i64, i64* @INTEL_QUARK_IORES_MEM, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %26, i64 %27
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = load i64, i64* @INTEL_QUARK_IORES_IRQ, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %33, i64 %34
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = load i64, i64* @INTEL_QUARK_IORES_IRQ, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %40, i64 %41
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.dw_i2c_platform_data* @devm_kzalloc(%struct.device* %44, i32 4, i32 %45)
  store %struct.dw_i2c_platform_data* %46, %struct.dw_i2c_platform_data** %7, align 8
  %47 = load %struct.dw_i2c_platform_data*, %struct.dw_i2c_platform_data** %7, align 8
  %48 = icmp ne %struct.dw_i2c_platform_data* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %72

52:                                               ; preds = %2
  %53 = load %struct.dw_i2c_platform_data*, %struct.dw_i2c_platform_data** %7, align 8
  %54 = getelementptr inbounds %struct.dw_i2c_platform_data, %struct.dw_i2c_platform_data* %53, i32 0, i32 0
  store i32 100000, i32* %54, align 4
  %55 = load i32, i32* @dmi_platform_info, align 4
  %56 = call %struct.dmi_system_id* @dmi_first_match(i32 %55)
  store %struct.dmi_system_id* %56, %struct.dmi_system_id** %6, align 8
  %57 = load %struct.dmi_system_id*, %struct.dmi_system_id** %6, align 8
  %58 = icmp ne %struct.dmi_system_id* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.dmi_system_id*, %struct.dmi_system_id** %6, align 8
  %61 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.dw_i2c_platform_data*, %struct.dw_i2c_platform_data** %7, align 8
  %65 = getelementptr inbounds %struct.dw_i2c_platform_data, %struct.dw_i2c_platform_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.dw_i2c_platform_data*, %struct.dw_i2c_platform_data** %7, align 8
  %68 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %69 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %68, i32 0, i32 1
  store %struct.dw_i2c_platform_data* %67, %struct.dw_i2c_platform_data** %69, align 8
  %70 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %71 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %70, i32 0, i32 0
  store i32 4, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %49
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local %struct.dw_i2c_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
