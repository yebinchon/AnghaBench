; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }
%struct.pci_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"func %d: Can't get MMIO memory @ 0x%llx, subsystem: %04x:%04x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_get_resources(%struct.cx88_core* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %7 = call i64 @pci_resource_start(%struct.pci_dev* %6, i32 0)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = call i32 @pci_resource_len(%struct.pci_dev* %8, i32 0)
  %10 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @request_mem_region(i64 %7, i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PCI_FUNC(i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = call i64 @pci_resource_start(%struct.pci_dev* %21, i32 0)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %22, i32 %25, i32 %28)
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %16, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @request_mem_region(i64, i32, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
