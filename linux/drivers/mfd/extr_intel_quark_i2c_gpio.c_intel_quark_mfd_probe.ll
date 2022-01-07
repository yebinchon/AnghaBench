; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_mfd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_mfd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.intel_quark_mfd = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_quark_mfd_cells = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @intel_quark_mfd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_quark_mfd_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_quark_mfd*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pcim_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.intel_quark_mfd* @devm_kzalloc(i32* %16, i32 8, i32 %17)
  store %struct.intel_quark_mfd* %18, %struct.intel_quark_mfd** %6, align 8
  %19 = load %struct.intel_quark_mfd*, %struct.intel_quark_mfd** %6, align 8
  %20 = icmp ne %struct.intel_quark_mfd* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %72

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.intel_quark_mfd*, %struct.intel_quark_mfd** %6, align 8
  %28 = getelementptr inbounds %struct.intel_quark_mfd, %struct.intel_quark_mfd* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load %struct.intel_quark_mfd*, %struct.intel_quark_mfd** %6, align 8
  %32 = call i32 @dev_set_drvdata(i32* %30, %struct.intel_quark_mfd* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @intel_quark_register_i2c_clk(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %72

40:                                               ; preds = %24
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32*, i32** @intel_quark_mfd_cells, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @intel_quark_i2c_setup(%struct.pci_dev* %41, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %67

48:                                               ; preds = %40
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load i32*, i32** @intel_quark_mfd_cells, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @intel_quark_gpio_setup(%struct.pci_dev* %49, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %67

56:                                               ; preds = %48
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32*, i32** @intel_quark_mfd_cells, align 8
  %60 = load i32*, i32** @intel_quark_mfd_cells, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = call i32 @mfd_add_devices(i32* %58, i32 0, i32* %59, i32 %61, i32* null, i32 0, i32* null)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %65, %55, %47
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 @intel_quark_unregister_i2c_clk(i32* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %66, %38, %21, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.intel_quark_mfd* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.intel_quark_mfd*) #1

declare dso_local i32 @intel_quark_register_i2c_clk(i32*) #1

declare dso_local i32 @intel_quark_i2c_setup(%struct.pci_dev*, i32*) #1

declare dso_local i32 @intel_quark_gpio_setup(%struct.pci_dev*, i32*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @intel_quark_unregister_i2c_clk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
