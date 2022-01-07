; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_prepare_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_prepare_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.marvell_nfc = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Last operation did not succeed\0A\00", align 1
@NDCR = common dso_local global i64 0, align 8
@NDSR = common dso_local global i64 0, align 8
@NDCR_ND_RUN = common dso_local global i32 0, align 4
@NDSR_WRCMDREQ = common dso_local global i32 0, align 4
@POLL_PERIOD = common dso_local global i32 0, align 4
@POLL_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Timeout on WRCMDRE\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @marvell_nfc_prepare_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_prepare_cmd(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.marvell_nfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %10)
  store %struct.marvell_nfc* %11, %struct.marvell_nfc** %4, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = call i32 @marvell_nfc_wait_ndrun(%struct.nand_chip* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %18 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %24 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NDCR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %30 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NDSR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %36 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NDSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NDCR_ND_RUN, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %45 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NDCR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i32 %43, i64 %48)
  %50 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %51 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NDSR, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @NDSR_WRCMDREQ, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @POLL_PERIOD, align 4
  %60 = load i32, i32* @POLL_TIMEOUT, align 4
  %61 = call i32 @readl_relaxed_poll_timeout(i64 %54, i32 %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %22
  %65 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %66 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %79

71:                                               ; preds = %22
  %72 = load i32, i32* @NDSR_WRCMDREQ, align 4
  %73 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %74 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NDSR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel_relaxed(i32 %72, i64 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %71, %64, %16
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @marvell_nfc_wait_ndrun(%struct.nand_chip*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
