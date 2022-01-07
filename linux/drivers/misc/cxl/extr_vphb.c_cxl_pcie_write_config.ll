; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pcie_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pcie_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_afu*, i32, i32, i32)*, i32 (%struct.cxl_afu*, i32, i32, i32)*, i32 (%struct.cxl_afu*, i32, i32, i32)* }
%struct.cxl_afu = type { i32 }
%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @cxl_pcie_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_pcie_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cxl_afu*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = call %struct.cxl_afu* @pci_bus_to_afu(%struct.pci_bus* %15)
  store %struct.cxl_afu* %16, %struct.cxl_afu** %14, align 8
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %18 = icmp eq %struct.cxl_afu* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %21 = call i32 @cxl_afu_configured_get(%struct.cxl_afu* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %5
  %24 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %24, i32* %6, align 4
  br label %78

25:                                               ; preds = %19
  %26 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %29 = call i32 @cxl_pcie_config_info(%struct.pci_bus* %26, i32 %27, %struct.cxl_afu* %28, i32* %13)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %67

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %64 [
    i32 1, label %35
    i32 2, label %45
    i32 4, label %55
  ]

35:                                               ; preds = %33
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.cxl_afu*, i32, i32, i32)*, i32 (%struct.cxl_afu*, i32, i32, i32)** %37, align 8
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 255
  %44 = call i32 %38(%struct.cxl_afu* %39, i32 %40, i32 %41, i32 %43)
  store i32 %44, i32* %12, align 4
  br label %66

45:                                               ; preds = %33
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (%struct.cxl_afu*, i32, i32, i32)*, i32 (%struct.cxl_afu*, i32, i32, i32)** %47, align 8
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 65535
  %54 = call i32 %48(%struct.cxl_afu* %49, i32 %50, i32 %51, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %66

55:                                               ; preds = %33
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32 (%struct.cxl_afu*, i32, i32, i32)*, i32 (%struct.cxl_afu*, i32, i32, i32)** %57, align 8
  %59 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 %58(%struct.cxl_afu* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %66

64:                                               ; preds = %33
  %65 = call i32 @WARN_ON(i32 1)
  br label %66

66:                                               ; preds = %64, %55, %45, %35
  br label %67

67:                                               ; preds = %66, %32
  %68 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %69 = call i32 @cxl_afu_configured_put(%struct.cxl_afu* %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %23
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.cxl_afu* @pci_bus_to_afu(%struct.pci_bus*) #1

declare dso_local i32 @cxl_afu_configured_get(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_pcie_config_info(%struct.pci_bus*, i32, %struct.cxl_afu*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cxl_afu_configured_put(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
