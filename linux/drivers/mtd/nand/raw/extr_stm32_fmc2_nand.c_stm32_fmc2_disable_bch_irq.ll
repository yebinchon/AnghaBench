; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_disable_bch_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_disable_bch_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_fmc2_nfc = type { i32, i64 }

@FMC2_BCHIER = common dso_local global i64 0, align 8
@FMC2_BCHIER_DERIE = common dso_local global i32 0, align 4
@FMC2_BCHIER_EPBRIE = common dso_local global i32 0, align 4
@FMC2_IRQ_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_fmc2_nfc*)* @stm32_fmc2_disable_bch_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_disable_bch_irq(%struct.stm32_fmc2_nfc* %0) #0 {
  %2 = alloca %struct.stm32_fmc2_nfc*, align 8
  %3 = alloca i32, align 4
  store %struct.stm32_fmc2_nfc* %0, %struct.stm32_fmc2_nfc** %2, align 8
  %4 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %5 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FMC2_BCHIER, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @FMC2_BCHIER_DERIE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @FMC2_BCHIER_EPBRIE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %20 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FMC2_BCHIER, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load i32, i32* @FMC2_IRQ_UNKNOWN, align 4
  %26 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %2, align 8
  %27 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
