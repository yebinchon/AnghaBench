; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pci_vphb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_vphb.c_cxl_pci_vphb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { %struct.pci_controller* }
%struct.pci_controller = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_pci_vphb_remove(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %4 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %5 = icmp ne %struct.cxl_afu* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 0
  %9 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %10 = icmp ne %struct.pci_controller* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %22

12:                                               ; preds = %6
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 0
  %15 = load %struct.pci_controller*, %struct.pci_controller** %14, align 8
  store %struct.pci_controller* %15, %struct.pci_controller** %3, align 8
  %16 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %17 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %16, i32 0, i32 0
  store %struct.pci_controller* null, %struct.pci_controller** %17, align 8
  %18 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %19 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_remove_root_bus(i32 %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @pci_remove_root_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
