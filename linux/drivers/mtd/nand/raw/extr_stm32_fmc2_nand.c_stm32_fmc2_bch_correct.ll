; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_bch_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_bch_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_fmc2_nfc = type { i64, i32, i32 }

@FMC2_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bch timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FMC2_BCHDSR0 = common dso_local global i64 0, align 8
@FMC2_BCHDSR1 = common dso_local global i64 0, align 8
@FMC2_BCHDSR2 = common dso_local global i64 0, align 8
@FMC2_BCHDSR3 = common dso_local global i64 0, align 8
@FMC2_BCHDSR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @stm32_fmc2_bch_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_bch_correct(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stm32_fmc2_nfc*, align 8
  %11 = alloca [5 x i32], align 16
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %14)
  store %struct.stm32_fmc2_nfc* %15, %struct.stm32_fmc2_nfc** %10, align 8
  %16 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %17 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %16, i32 0, i32 2
  %18 = load i32, i32* @FMC2_TIMEOUT_MS, align 4
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  %20 = call i32 @wait_for_completion_timeout(i32* %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %24 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %28 = call i32 @stm32_fmc2_disable_bch_irq(%struct.stm32_fmc2_nfc* %27)
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %76

31:                                               ; preds = %4
  %32 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %33 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FMC2_BCHDSR0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %40 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FMC2_BCHDSR1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %47 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FMC2_BCHDSR2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl_relaxed(i64 %50)
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %51, i32* %52, align 8
  %53 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %54 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FMC2_BCHDSR3, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl_relaxed(i64 %57)
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %61 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FMC2_BCHDSR4, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl_relaxed(i64 %64)
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %65, i32* %66, align 16
  %67 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %10, align 8
  %68 = call i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc* %67, i32 0)
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %75 = call i32 @stm32_fmc2_bch_decode(i32 %72, i32* %73, i32* %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %31, %22
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32_fmc2_disable_bch_irq(%struct.stm32_fmc2_nfc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm32_fmc2_set_ecc(%struct.stm32_fmc2_nfc*, i32) #1

declare dso_local i32 @stm32_fmc2_bch_decode(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
