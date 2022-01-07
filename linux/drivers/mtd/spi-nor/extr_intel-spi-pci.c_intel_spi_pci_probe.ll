; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi-pci.c_intel_spi_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi-pci.c_intel_spi_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32*, i32 }
%struct.pci_device_id = type { i64 }
%struct.intel_spi_boardinfo = type { i32 }
%struct.intel_spi = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCR = common dso_local global i32 0, align 4
@BCR_WPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @intel_spi_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_spi_boardinfo*, align 8
  %7 = alloca %struct.intel_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pcim_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.intel_spi_boardinfo* @devm_kmemdup(i32* %18, i8* %22, i32 4, i32 %23)
  store %struct.intel_spi_boardinfo* %24, %struct.intel_spi_boardinfo** %6, align 8
  %25 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %26 = icmp ne %struct.intel_spi_boardinfo* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %16
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @BCR, align 4
  %33 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 %32, i32* %8)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BCR_WPD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @BCR_WPD, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @BCR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pci_write_config_dword(%struct.pci_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load i32, i32* @BCR, align 4
  %48 = call i32 @pci_read_config_dword(%struct.pci_dev* %46, i32 %47, i32* %8)
  br label %49

49:                                               ; preds = %38, %30
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BCR_WPD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %58 = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %66 = call %struct.intel_spi* @intel_spi_probe(i32* %60, i32* %64, %struct.intel_spi_boardinfo* %65)
  store %struct.intel_spi* %66, %struct.intel_spi** %7, align 8
  %67 = load %struct.intel_spi*, %struct.intel_spi** %7, align 8
  %68 = call i64 @IS_ERR(%struct.intel_spi* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %49
  %71 = load %struct.intel_spi*, %struct.intel_spi** %7, align 8
  %72 = call i32 @PTR_ERR(%struct.intel_spi* %71)
  store i32 %72, i32* %3, align 4
  br label %77

73:                                               ; preds = %49
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load %struct.intel_spi*, %struct.intel_spi** %7, align 8
  %76 = call i32 @pci_set_drvdata(%struct.pci_dev* %74, %struct.intel_spi* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %70, %27, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.intel_spi_boardinfo* @devm_kmemdup(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.intel_spi* @intel_spi_probe(i32*, i32*, %struct.intel_spi_boardinfo*) #1

declare dso_local i64 @IS_ERR(%struct.intel_spi*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_spi*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.intel_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
