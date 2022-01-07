; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pci_vphb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pci_vphb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { %struct.pci_controller*, %struct.TYPE_6__*, i32 }
%struct.pci_controller = type { %struct.TYPE_7__*, i32, %struct.cxl_afu*, i32*, i32*, i32*, %struct.device* }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }

@ENODEV = common dso_local global i32 0, align 4
@cxl_pcie_pci_ops = common dso_local global i32 0, align 4
@cxl_pci_controller_ops = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@pcibios_free_controller_deferred = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_pci_vphb_add(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %5, align 8
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call %struct.pci_controller* @pcibios_alloc_controller(%struct.device_node* %22)
  store %struct.pci_controller* %23, %struct.pci_controller** %4, align 8
  %24 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %25 = icmp ne %struct.pci_controller* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %12
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %12
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %32 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %31, i32 0, i32 6
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %33, i32 0, i32 5
  store i32* @cxl_pcie_pci_ops, i32** %34, align 8
  %35 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %36 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %40 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %40, i32 0, i32 2
  store %struct.cxl_afu* %39, %struct.cxl_afu** %41, align 8
  %42 = load i32, i32* @cxl_pci_controller_ops, align 4
  %43 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %44 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %46 = call i32 @pcibios_scan_phb(%struct.pci_controller* %45)
  %47 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %48 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = icmp eq %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %76

54:                                               ; preds = %29
  %55 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %56 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @to_pci_host_bridge(i32 %59)
  %61 = load i32, i32* @pcibios_free_controller_deferred, align 4
  %62 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %63 = bitcast %struct.pci_controller* %62 to i8*
  %64 = call i32 @pci_set_host_bridge_release(i32 %60, i32 %61, i8* %63)
  %65 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %66 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @pcibios_claim_one_bus(%struct.TYPE_7__* %67)
  %69 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %70 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i32 @pci_bus_add_devices(%struct.TYPE_7__* %71)
  %73 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %74 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %75 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %74, i32 0, i32 0
  store %struct.pci_controller* %73, %struct.pci_controller** %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %54, %51, %26, %11
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.pci_controller* @pcibios_alloc_controller(%struct.device_node*) #1

declare dso_local i32 @pcibios_scan_phb(%struct.pci_controller*) #1

declare dso_local i32 @pci_set_host_bridge_release(i32, i32, i8*) #1

declare dso_local i32 @to_pci_host_bridge(i32) #1

declare dso_local i32 @pcibios_claim_one_bus(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_bus_add_devices(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
