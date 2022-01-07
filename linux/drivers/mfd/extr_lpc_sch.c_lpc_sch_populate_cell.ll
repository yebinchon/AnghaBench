; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_sch.c_lpc_sch_populate_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_sch.c_lpc_sch_populate_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mfd_cell = type { i8*, i32, i32, i32, %struct.resource* }
%struct.resource = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i8*, i32, i32, i32, %struct.mfd_cell*)* @lpc_sch_populate_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_sch_populate_cell(%struct.pci_dev* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.mfd_cell* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mfd_cell*, align 8
  %16 = alloca %struct.resource*, align 8
  %17 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.mfd_cell* %6, %struct.mfd_cell** %15, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.resource* @devm_kcalloc(i32* %19, i32 2, i32 12, i32 %20)
  store %struct.resource* %21, %struct.resource** %16, align 8
  %22 = load %struct.resource*, %struct.resource** %16, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %73

27:                                               ; preds = %7
  %28 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.resource*, %struct.resource** %16, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @lpc_sch_get_io(%struct.pci_dev* %28, i32 %29, i8* %30, %struct.resource* %31, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %8, align 4
  br label %73

38:                                               ; preds = %27
  %39 = load %struct.mfd_cell*, %struct.mfd_cell** %15, align 8
  %40 = call i32 @memset(%struct.mfd_cell* %39, i32 0, i32 32)
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.mfd_cell*, %struct.mfd_cell** %15, align 8
  %43 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.resource*, %struct.resource** %16, align 8
  %45 = load %struct.mfd_cell*, %struct.mfd_cell** %15, align 8
  %46 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %45, i32 0, i32 4
  store %struct.resource* %44, %struct.resource** %46, align 8
  %47 = load %struct.mfd_cell*, %struct.mfd_cell** %15, align 8
  %48 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.mfd_cell*, %struct.mfd_cell** %15, align 8
  %50 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.mfd_cell*, %struct.mfd_cell** %15, align 8
  %53 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %73

57:                                               ; preds = %38
  %58 = load %struct.resource*, %struct.resource** %16, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 1
  store %struct.resource* %59, %struct.resource** %16, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.resource*, %struct.resource** %16, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.resource*, %struct.resource** %16, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @IORESOURCE_IRQ, align 4
  %67 = load %struct.resource*, %struct.resource** %16, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mfd_cell*, %struct.mfd_cell** %15, align 8
  %70 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %57, %56, %36, %24
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.resource* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @lpc_sch_get_io(%struct.pci_dev*, i32, i8*, %struct.resource*, i32) #1

declare dso_local i32 @memset(%struct.mfd_cell*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
