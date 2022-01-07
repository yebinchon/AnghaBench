; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_hwctl_1bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_hwctl_1bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.davinci_nand_info = type { i64 }

@davinci_nand_lock = common dso_local global i32 0, align 4
@NANDFCR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @nand_davinci_hwctl_1bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_davinci_hwctl_1bit(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.davinci_nand_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call i32 @nand_to_mtd(%struct.nand_chip* %8)
  %10 = call %struct.davinci_nand_info* @to_davinci_nand(i32 %9)
  store %struct.davinci_nand_info* %10, %struct.davinci_nand_info** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call i32 @nand_to_mtd(%struct.nand_chip* %11)
  %13 = call i32 @nand_davinci_readecc_1bit(i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @davinci_nand_lock, i64 %14)
  %16 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %17 = load i32, i32* @NANDFCR_OFFSET, align 4
  %18 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %20 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 8, %21
  %23 = call i32 @BIT(i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %27 = load i32, i32* @NANDFCR_OFFSET, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @davinci_nand_writel(%struct.davinci_nand_info* %26, i32 %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @davinci_nand_lock, i64 %30)
  ret void
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_davinci_readecc_1bit(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @davinci_nand_readl(%struct.davinci_nand_info*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @davinci_nand_writel(%struct.davinci_nand_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
