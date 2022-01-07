; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_decode_error_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_decode_error_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tango_nfc = type { i64, i64 }

@NFC_XFER_STATUS = common dso_local global i64 0, align 8
@PAGE_IS_EMPTY = common dso_local global i32 0, align 4
@ERROR_REPORT = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @decode_error_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_error_report(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.tango_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %6, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tango_nfc* @to_tango_nfc(i32 %12)
  store %struct.tango_nfc* %13, %struct.tango_nfc** %7, align 8
  %14 = load %struct.tango_nfc*, %struct.tango_nfc** %7, align 8
  %15 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFC_XFER_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PAGE_IS_EMPTY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

25:                                               ; preds = %1
  %26 = load %struct.tango_nfc*, %struct.tango_nfc** %7, align 8
  %27 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ERROR_REPORT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @DECODE_FAIL_PKT_0(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @DECODE_FAIL_PKT_N(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %25
  %40 = load i32, i32* @EBADMSG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %60

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @ERR_COUNT_PKT_0(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @ERR_COUNT_PKT_N(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %47
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @ERR_COUNT_PKT_0(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @ERR_COUNT_PKT_N(i32 %57)
  %59 = call i32 @max(i64 %56, i64 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %42, %39, %24
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.tango_nfc* @to_tango_nfc(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @DECODE_FAIL_PKT_0(i32) #1

declare dso_local i64 @DECODE_FAIL_PKT_N(i32) #1

declare dso_local i64 @ERR_COUNT_PKT_0(i32) #1

declare dso_local i64 @ERR_COUNT_PKT_N(i32) #1

declare dso_local i32 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
