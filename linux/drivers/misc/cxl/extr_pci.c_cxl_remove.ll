; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cxl = type { i32, %struct.cxl_afu** }
%struct.cxl_afu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cxl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.cxl_afu*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.cxl* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.cxl* %7, %struct.cxl** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.cxl*, %struct.cxl** %3, align 8
  %11 = getelementptr inbounds %struct.cxl, %struct.cxl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.cxl*, %struct.cxl** %3, align 8
  %16 = getelementptr inbounds %struct.cxl, %struct.cxl* %15, i32 0, i32 1
  %17 = load %struct.cxl_afu**, %struct.cxl_afu*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cxl_afu*, %struct.cxl_afu** %17, i64 %19
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %20, align 8
  store %struct.cxl_afu* %21, %struct.cxl_afu** %4, align 8
  %22 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %23 = call i32 @cxl_pci_remove_afu(%struct.cxl_afu* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.cxl*, %struct.cxl** %3, align 8
  %29 = call i32 @cxl_pci_remove_adapter(%struct.cxl* %28)
  ret void
}

declare dso_local %struct.cxl* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cxl_pci_remove_afu(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_pci_remove_adapter(%struct.cxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
