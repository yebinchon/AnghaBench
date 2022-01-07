; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.cafe_priv = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GLOBAL_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cafe_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_nand_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.cafe_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %3, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %8)
  store %struct.nand_chip* %9, %struct.nand_chip** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.cafe_priv* %11, %struct.cafe_priv** %5, align 8
  %12 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %13 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %14 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %15 = call i32 @cafe_readl(%struct.cafe_priv* %13, i32 %14)
  %16 = and i32 -2, %15
  %17 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %18 = call i32 @cafe_writel(%struct.cafe_priv* %12, i32 %16, i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.mtd_info* %22)
  %24 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %25 = call i32 @nand_release(%struct.nand_chip* %24)
  %26 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %27 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free_rs(i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %32 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_iounmap(%struct.pci_dev* %30, i32 %33)
  %35 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %36 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %40 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %43 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32* %38, i32 2112, i32 %41, i32 %44)
  %46 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %47 = call i32 @kfree(%struct.cafe_priv* %46)
  ret void
}

declare dso_local %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.mtd_info*) #1

declare dso_local i32 @nand_release(%struct.nand_chip*) #1

declare dso_local i32 @free_rs(i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.cafe_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
