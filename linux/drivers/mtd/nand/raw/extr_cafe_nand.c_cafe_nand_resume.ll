; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.cafe_priv = type { i32 }

@NAND_RESET = common dso_local global i32 0, align 4
@NAND_IRQ_MASK = common dso_local global i32 0, align 4
@timing = common dso_local global i32* null, align 8
@NAND_TIMING1 = common dso_local global i32 0, align 4
@NAND_TIMING2 = common dso_local global i32 0, align 4
@NAND_TIMING3 = common dso_local global i32 0, align 4
@GLOBAL_CTRL = common dso_local global i32 0, align 4
@NAND_DMA_CTRL = common dso_local global i32 0, align 4
@NAND_DMA_ADDR0 = common dso_local global i32 0, align 4
@NAND_DMA_ADDR1 = common dso_local global i32 0, align 4
@GLOBAL_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @cafe_nand_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.cafe_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.cafe_priv* %12, %struct.cafe_priv** %6, align 8
  %13 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %14 = load i32, i32* @NAND_RESET, align 4
  %15 = call i32 @cafe_writel(%struct.cafe_priv* %13, i32 1, i32 %14)
  %16 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %17 = load i32, i32* @NAND_RESET, align 4
  %18 = call i32 @cafe_writel(%struct.cafe_priv* %16, i32 0, i32 %17)
  %19 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %20 = load i32, i32* @NAND_IRQ_MASK, align 4
  %21 = call i32 @cafe_writel(%struct.cafe_priv* %19, i32 -1, i32 %20)
  %22 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %23 = load i32*, i32** @timing, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NAND_TIMING1, align 4
  %27 = call i32 @cafe_writel(%struct.cafe_priv* %22, i32 %25, i32 %26)
  %28 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %29 = load i32*, i32** @timing, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NAND_TIMING2, align 4
  %33 = call i32 @cafe_writel(%struct.cafe_priv* %28, i32 %31, i32 %32)
  %34 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %35 = load i32*, i32** @timing, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NAND_TIMING3, align 4
  %39 = call i32 @cafe_writel(%struct.cafe_priv* %34, i32 %37, i32 %38)
  %40 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %41 = load i32, i32* @GLOBAL_CTRL, align 4
  %42 = call i32 @cafe_readl(%struct.cafe_priv* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, -4112
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, 28672
  store i32 %46, i32* %3, align 4
  %47 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, 5
  %50 = load i32, i32* @GLOBAL_CTRL, align 4
  %51 = call i32 @cafe_writel(%struct.cafe_priv* %47, i32 %49, i32 %50)
  %52 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, 10
  %55 = load i32, i32* @GLOBAL_CTRL, align 4
  %56 = call i32 @cafe_writel(%struct.cafe_priv* %52, i32 %54, i32 %55)
  %57 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %58 = load i32, i32* @NAND_DMA_CTRL, align 4
  %59 = call i32 @cafe_writel(%struct.cafe_priv* %57, i32 0, i32 %58)
  %60 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %61 = load i32, i32* @GLOBAL_CTRL, align 4
  %62 = call i32 @cafe_writel(%struct.cafe_priv* %60, i32 28678, i32 %61)
  %63 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %64 = load i32, i32* @GLOBAL_CTRL, align 4
  %65 = call i32 @cafe_writel(%struct.cafe_priv* %63, i32 28682, i32 %64)
  %66 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %67 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %68 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NAND_DMA_ADDR0, align 4
  %71 = call i32 @cafe_writel(%struct.cafe_priv* %66, i32 %69, i32 %70)
  %72 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %73 = load i32, i32* @NAND_DMA_ADDR1, align 4
  %74 = call i32 @cafe_writel(%struct.cafe_priv* %72, i32 0, i32 %73)
  %75 = load %struct.cafe_priv*, %struct.cafe_priv** %6, align 8
  %76 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %77 = call i32 @cafe_writel(%struct.cafe_priv* %75, i32 -2147483641, i32 %76)
  ret i32 0
}

declare dso_local %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
