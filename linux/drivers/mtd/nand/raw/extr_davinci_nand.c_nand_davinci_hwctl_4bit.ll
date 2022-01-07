; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_hwctl_4bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_hwctl_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.davinci_nand_info = type { i32, i32 }

@NAND_4BIT_ECC1_OFFSET = common dso_local global i32 0, align 4
@davinci_nand_lock = common dso_local global i32 0, align 4
@NANDFCR_OFFSET = common dso_local global i32 0, align 4
@NAND_ECC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @nand_davinci_hwctl_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_davinci_hwctl_4bit(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.davinci_nand_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call i32 @nand_to_mtd(%struct.nand_chip* %8)
  %10 = call %struct.davinci_nand_info* @to_davinci_nand(i32 %9)
  store %struct.davinci_nand_info* %10, %struct.davinci_nand_info** %5, align 8
  %11 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %12 = load i32, i32* @NAND_4BIT_ECC1_OFFSET, align 4
  %13 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %11, i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @davinci_nand_lock, i64 %14)
  %16 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %17 = load i32, i32* @NANDFCR_OFFSET, align 4
  %18 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -49
  store i32 %20, i32* %7, align 4
  %21 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %22 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 4
  %25 = call i32 @BIT(i32 12)
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %30 = load i32, i32* @NANDFCR_OFFSET, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @davinci_nand_writel(%struct.davinci_nand_info* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @NAND_ECC_READ, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %38 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @davinci_nand_lock, i64 %39)
  ret void
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @davinci_nand_readl(%struct.davinci_nand_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @davinci_nand_writel(%struct.davinci_nand_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
