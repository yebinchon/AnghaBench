; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_ham_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_ham_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.stm32_fmc2_nfc = type { i64, i32 }

@FMC2_SR = common dso_local global i64 0, align 8
@FMC2_SR_NWRF = common dso_local global i32 0, align 4
@FMC2_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ham timeout\0A\00", align 1
@FMC2_HECCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @stm32_fmc2_ham_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_ham_calculate(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stm32_fmc2_nfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %14)
  store %struct.stm32_fmc2_nfc* %15, %struct.stm32_fmc2_nfc** %8, align 8
  %16 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %17 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FMC2_SR, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FMC2_SR_NWRF, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @FMC2_TIMEOUT_MS, align 4
  %26 = call i32 @readl_relaxed_poll_timeout(i64 %20, i32 %21, i32 %24, i32 10, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %31 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %3
  %36 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %37 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FMC2_HECCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl_relaxed(i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @stm32_fmc2_ham_set_ecc(i32 %42, i32* %43)
  %45 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %8, align 8
  %46 = call i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc* %45, i32 0)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %35, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm32_fmc2_ham_set_ecc(i32, i32*) #1

declare dso_local i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
