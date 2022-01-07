; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_pci_bus_to_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_pci_bus_to_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32 }
%struct.pci_bus = type { i32 }
%struct.pci_controller = type { %struct.cxl_afu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxl_afu* (%struct.pci_bus*)* @pci_bus_to_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxl_afu* @pci_bus_to_afu(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = icmp ne %struct.pci_bus* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %8 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %7)
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi %struct.pci_controller* [ %8, %6 ], [ null, %9 ]
  store %struct.pci_controller* %11, %struct.pci_controller** %3, align 8
  %12 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %13 = icmp ne %struct.pci_controller* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %16 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %15, i32 0, i32 0
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %16, align 8
  br label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.cxl_afu* [ %17, %14 ], [ null, %18 ]
  ret %struct.cxl_afu* %20
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
