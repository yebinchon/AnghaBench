; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_legacy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_legacy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i32 }

@PCI_ENDPOINT_TEST_IRQ_TYPE = common dso_local global i32 0, align 4
@IRQ_TYPE_LEGACY = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_IRQ_NUMBER = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_COMMAND = common dso_local global i32 0, align 4
@COMMAND_RAISE_LEGACY_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*)* @pci_endpoint_test_legacy_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_legacy_irq(%struct.pci_endpoint_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_endpoint_test*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %3, align 8
  %5 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %6 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_TYPE, align 4
  %7 = load i32, i32* @IRQ_TYPE_LEGACY, align 4
  %8 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %5, i32 %6, i32 %7)
  %9 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %10 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_NUMBER, align 4
  %11 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %9, i32 %10, i32 0)
  %12 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %13 = load i32, i32* @PCI_ENDPOINT_TEST_COMMAND, align 4
  %14 = load i32, i32* @COMMAND_RAISE_LEGACY_IRQ, align 4
  %15 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %12, i32 %13, i32 %14)
  %16 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %17 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %16, i32 0, i32 0
  %18 = call i32 @msecs_to_jiffies(i32 1000)
  %19 = call i32 @wait_for_completion_timeout(i32* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
