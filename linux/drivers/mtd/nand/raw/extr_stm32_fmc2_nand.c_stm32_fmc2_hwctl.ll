; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_hwctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_hwctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.stm32_fmc2_nfc = type { i32, i64 }

@FMC2_ECC_HAM = common dso_local global i64 0, align 8
@FMC2_PCR = common dso_local global i64 0, align 8
@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@FMC2_PCR_WEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @stm32_fmc2_hwctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_hwctl(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_fmc2_nfc*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %9)
  store %struct.stm32_fmc2_nfc* %10, %struct.stm32_fmc2_nfc** %5, align 8
  %11 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %5, align 8
  %12 = call i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc* %11, i32 0)
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FMC2_ECC_HAM, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FMC2_PCR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NAND_ECC_WRITE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @FMC2_PCR_WEN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load i32, i32* @FMC2_PCR_WEN, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %5, align 8
  %41 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FMC2_PCR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %5, align 8
  %47 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %46, i32 0, i32 0
  %48 = call i32 @reinit_completion(i32* %47)
  %49 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %5, align 8
  %50 = call i32 @stm32_fmc2_clear_bch_irq(%struct.stm32_fmc2_nfc* %49)
  %51 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @stm32_fmc2_enable_bch_irq(%struct.stm32_fmc2_nfc* %51, i32 %52)
  br label %54

54:                                               ; preds = %38, %2
  %55 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %5, align 8
  %56 = call i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc* %55, i32 1)
  ret void
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc*, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @stm32_fmc2_clear_bch_irq(%struct.stm32_fmc2_nfc*) #1

declare dso_local i32 @stm32_fmc2_enable_bch_irq(%struct.stm32_fmc2_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
