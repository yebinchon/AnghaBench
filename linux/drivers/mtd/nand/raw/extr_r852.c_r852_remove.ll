; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.r852_device = type { %struct.r852_device*, i32, i32, i32, %struct.r852_device*, i32, i32, i32 }

@R852_DMA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @r852_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.r852_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.r852_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.r852_device* %5, %struct.r852_device** %3, align 8
  %6 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %7 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %6, i32 0, i32 7
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %10 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @destroy_workqueue(i32 %11)
  %13 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %14 = call i32 @r852_unregister_nand_device(%struct.r852_device* %13)
  %15 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %16 = call i32 @r852_disable_irqs(%struct.r852_device* %15)
  %17 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %18 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.r852_device* %20)
  %22 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %23 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %22, i32 0, i32 4
  %24 = load %struct.r852_device*, %struct.r852_device** %23, align 8
  %25 = call i32 @kfree(%struct.r852_device* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %28 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pci_iounmap(%struct.pci_dev* %26, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* @R852_DMA_LEN, align 4
  %34 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %35 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %38 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32* %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %42 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %41, i32 0, i32 0
  %43 = load %struct.r852_device*, %struct.r852_device** %42, align 8
  %44 = call i32 @kfree(%struct.r852_device* %43)
  %45 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %46 = call i32 @kfree(%struct.r852_device* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_release_regions(%struct.pci_dev* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @pci_disable_device(%struct.pci_dev* %49)
  ret void
}

declare dso_local %struct.r852_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @r852_unregister_nand_device(%struct.r852_device*) #1

declare dso_local i32 @r852_disable_irqs(%struct.r852_device*) #1

declare dso_local i32 @free_irq(i32, %struct.r852_device*) #1

declare dso_local i32 @kfree(%struct.r852_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
