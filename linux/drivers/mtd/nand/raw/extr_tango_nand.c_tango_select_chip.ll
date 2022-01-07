; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.tango_nfc = type { i64 }
%struct.tango_chip = type { i32, i32, i32, i32, i32, i32 }

@NFC_TIMING1 = common dso_local global i64 0, align 8
@NFC_TIMING2 = common dso_local global i64 0, align 8
@NFC_XFER_CFG = common dso_local global i64 0, align 8
@NFC_PKT_0_CFG = common dso_local global i64 0, align 8
@NFC_PKT_N_CFG = common dso_local global i64 0, align 8
@NFC_BB_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @tango_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tango_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tango_nfc*, align 8
  %6 = alloca %struct.tango_chip*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.tango_nfc* @to_tango_nfc(i32 %9)
  store %struct.tango_nfc* %10, %struct.tango_nfc** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.tango_chip* @to_tango_chip(%struct.nand_chip* %11)
  store %struct.tango_chip* %12, %struct.tango_chip** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.tango_chip*, %struct.tango_chip** %6, align 8
  %18 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tango_nfc*, %struct.tango_nfc** %5, align 8
  %21 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFC_TIMING1, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %19, i64 %24)
  %26 = load %struct.tango_chip*, %struct.tango_chip** %6, align 8
  %27 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tango_nfc*, %struct.tango_nfc** %5, align 8
  %30 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFC_TIMING2, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load %struct.tango_chip*, %struct.tango_chip** %6, align 8
  %36 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tango_nfc*, %struct.tango_nfc** %5, align 8
  %39 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NFC_XFER_CFG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %37, i64 %42)
  %44 = load %struct.tango_chip*, %struct.tango_chip** %6, align 8
  %45 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tango_nfc*, %struct.tango_nfc** %5, align 8
  %48 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NFC_PKT_0_CFG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel_relaxed(i32 %46, i64 %51)
  %53 = load %struct.tango_chip*, %struct.tango_chip** %6, align 8
  %54 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tango_nfc*, %struct.tango_nfc** %5, align 8
  %57 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NFC_PKT_N_CFG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel_relaxed(i32 %55, i64 %60)
  %62 = load %struct.tango_chip*, %struct.tango_chip** %6, align 8
  %63 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tango_nfc*, %struct.tango_nfc** %5, align 8
  %66 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NFC_BB_CFG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i32 %64, i64 %69)
  br label %71

71:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.tango_nfc* @to_tango_nfc(i32) #1

declare dso_local %struct.tango_chip* @to_tango_chip(%struct.nand_chip*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
