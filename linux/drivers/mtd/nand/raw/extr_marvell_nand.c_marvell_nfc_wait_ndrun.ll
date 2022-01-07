; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_wait_ndrun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_wait_ndrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.marvell_nfc = type { i64, i32 }

@NDCR = common dso_local global i64 0, align 8
@NDCR_ND_RUN = common dso_local global i32 0, align 4
@POLL_PERIOD = common dso_local global i32 0, align 4
@POLL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Timeout on NAND controller run mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @marvell_nfc_wait_ndrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_wait_ndrun(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.marvell_nfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %9)
  store %struct.marvell_nfc* %10, %struct.marvell_nfc** %4, align 8
  %11 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %12 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NDCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NDCR_ND_RUN, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @POLL_PERIOD, align 4
  %23 = load i32, i32* @POLL_TIMEOUT, align 4
  %24 = call i32 @readl_relaxed_poll_timeout(i64 %15, i32 %16, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %1
  %28 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %29 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %33 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NDCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = load i32, i32* @NDCR_ND_RUN, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load %struct.marvell_nfc*, %struct.marvell_nfc** %4, align 8
  %42 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NDCR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %40, i64 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
