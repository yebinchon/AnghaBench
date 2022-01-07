; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pcie_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pcie_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)* }
%struct.cxl_afu = type { i32 }
%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @cxl_pcie_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_pcie_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cxl_afu*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %19 = call %struct.cxl_afu* @pci_bus_to_afu(%struct.pci_bus* %18)
  store %struct.cxl_afu* %19, %struct.cxl_afu** %14, align 8
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %21 = icmp eq %struct.cxl_afu* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %24 = call i32 @cxl_afu_configured_get(%struct.cxl_afu* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %5
  %27 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %27, i32* %6, align 4
  br label %82

28:                                               ; preds = %22
  %29 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %32 = call i32 @cxl_pcie_config_info(%struct.pci_bus* %29, i32 %30, %struct.cxl_afu* %31, i32* %13)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %71

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %68 [
    i32 1, label %38
    i32 2, label %48
    i32 4, label %58
  ]

38:                                               ; preds = %36
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %40, align 8
  %42 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 %41(%struct.cxl_afu* %42, i32 %43, i32 %44, i32* %15)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  br label %70

48:                                               ; preds = %36
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %50, align 8
  %52 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 %51(%struct.cxl_afu* %52, i32 %53, i32 %54, i32* %16)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %70

58:                                               ; preds = %36
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %60, align 8
  %62 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 %61(%struct.cxl_afu* %62, i32 %63, i32 %64, i32* %17)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %70

68:                                               ; preds = %36
  %69 = call i32 @WARN_ON(i32 1)
  br label %70

70:                                               ; preds = %68, %58, %48, %38
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %73 = call i32 @cxl_afu_configured_put(%struct.cxl_afu* %72)
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %26
  %83 = load i32, i32* %6, align 4
  ret i32 %83
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
