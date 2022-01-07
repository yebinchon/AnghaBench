; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_alloc_irq_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_alloc_irq_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get Legacy interrupt\0A\00", align 1
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get MSI interrupts\0A\00", align 1
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to get MSI-X interrupts\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid IRQ type selected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*, i32)* @pci_endpoint_test_alloc_irq_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_alloc_irq_vectors(%struct.pci_endpoint_test* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_endpoint_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %9 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %10 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %9, i32 0, i32 1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  store i32 1, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %45 [
    i32 130, label %15
    i32 129, label %25
    i32 128, label %35
  ]

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %18 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %16, i32 1, i32 1, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = load i32, i32* @PCI_IRQ_MSI, align 4
  %28 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %26, i32 1, i32 32, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %25
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %38 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %36, i32 1, i32 2048, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  br label %48

45:                                               ; preds = %2
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %44, %34, %24
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %55 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
