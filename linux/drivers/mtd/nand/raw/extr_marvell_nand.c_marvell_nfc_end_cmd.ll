; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_end_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_end_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.marvell_nfc = type { i64, i64, i64, i32 }

@NDSR = common dso_local global i64 0, align 8
@POLL_PERIOD = common dso_local global i32 0, align 4
@POLL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Timeout on %s (NDSR: 0x%08x)\0A\00", align 1
@NDCR = common dso_local global i64 0, align 8
@NDCR_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i8*)* @marvell_nfc_end_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_end_cmd(%struct.nand_chip* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.marvell_nfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %13)
  store %struct.marvell_nfc* %14, %struct.marvell_nfc** %8, align 8
  %15 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %16 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NDSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @POLL_PERIOD, align 4
  %25 = load i32, i32* @POLL_TIMEOUT, align 4
  %26 = call i32 @readl_relaxed_poll_timeout(i64 %19, i32 %20, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %3
  %30 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %31 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %37 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %42 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dmaengine_terminate_all(i64 %43)
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %71

47:                                               ; preds = %3
  %48 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %49 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %54 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NDCR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl_relaxed(i64 %57)
  %59 = load i32, i32* @NDCR_DMA_EN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %71

63:                                               ; preds = %52, %47
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %66 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NDSR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i32 %64, i64 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %62, %45
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
