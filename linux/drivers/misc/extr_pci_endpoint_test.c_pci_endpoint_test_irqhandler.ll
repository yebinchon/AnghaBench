; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i32, i32 }

@PCI_ENDPOINT_TEST_STATUS = common dso_local global i32 0, align 4
@STATUS_IRQ_RAISED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci_endpoint_test_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_endpoint_test*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pci_endpoint_test*
  store %struct.pci_endpoint_test* %8, %struct.pci_endpoint_test** %5, align 8
  %9 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %10 = load i32, i32* @PCI_ENDPOINT_TEST_STATUS, align 4
  %11 = call i32 @pci_endpoint_test_readl(%struct.pci_endpoint_test* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @STATUS_IRQ_RAISED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %19 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %21 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %20, i32 0, i32 1
  %22 = call i32 @complete(i32* %21)
  %23 = load i32, i32* @STATUS_IRQ_RAISED, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %5, align 8
  %29 = load i32, i32* @PCI_ENDPOINT_TEST_STATUS, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @pci_endpoint_test_readl(%struct.pci_endpoint_test*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
