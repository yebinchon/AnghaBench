; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-thunderx.c_thunder_mmc_register_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-thunderx.c_thunder_mmc_register_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@cvm_mmc_interrupt = common dso_local global i32 0, align 4
@cvm_mmc_irq_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cvm_mmc_host*, %struct.pci_dev*)* @thunder_mmc_register_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_mmc_register_interrupts(%struct.cvm_mmc_host* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cvm_mmc_host*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %11 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %9, i32 1, i32 9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pci_irq_vector(%struct.pci_dev* %24, i32 %25)
  %27 = load i32, i32* @cvm_mmc_interrupt, align 4
  %28 = load i32*, i32** @cvm_mmc_irq_names, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %4, align 8
  %34 = call i32 @devm_request_irq(i32* %23, i32 %26, i32 %27, i32 0, i32 %32, %struct.cvm_mmc_host* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %17

43:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.cvm_mmc_host*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
