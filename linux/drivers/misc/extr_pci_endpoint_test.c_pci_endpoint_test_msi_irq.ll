; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_ENDPOINT_TEST_IRQ_TYPE = common dso_local global i32 0, align 4
@IRQ_TYPE_MSI = common dso_local global i64 0, align 8
@IRQ_TYPE_MSIX = common dso_local global i64 0, align 8
@PCI_ENDPOINT_TEST_IRQ_NUMBER = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_COMMAND = common dso_local global i32 0, align 4
@COMMAND_RAISE_MSI_IRQ = common dso_local global i64 0, align 8
@COMMAND_RAISE_MSIX_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*, i64, i32)* @pci_endpoint_test_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_msi_irq(%struct.pci_endpoint_test* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_endpoint_test*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %11 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %14 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_TYPE, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @IRQ_TYPE_MSI, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @IRQ_TYPE_MSIX, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %13, i32 %14, i64 %22)
  %24 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %25 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_NUMBER, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %24, i32 %25, i64 %26)
  %28 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %29 = load i32, i32* @PCI_ENDPOINT_TEST_COMMAND, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @COMMAND_RAISE_MSI_IRQ, align 8
  br label %36

34:                                               ; preds = %21
  %35 = load i64, i64* @COMMAND_RAISE_MSIX_IRQ, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %28, i32 %29, i64 %37)
  %39 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %40 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %39, i32 0, i32 1
  %41 = call i32 @msecs_to_jiffies(i32 1000)
  %42 = call i32 @wait_for_completion_timeout(i32* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %57

46:                                               ; preds = %36
  %47 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i64 @pci_irq_vector(%struct.pci_dev* %47, i64 %49)
  %51 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %52 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %45
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test*, i32, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @pci_irq_vector(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
