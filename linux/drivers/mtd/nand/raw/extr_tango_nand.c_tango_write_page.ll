; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*)* }
%struct.nand_chip.0 = type opaque
%struct.mtd_info = type { i32 }
%struct.tango_nfc = type { i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@METADATA = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NFC_WRITE = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @tango_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_write_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.tango_nfc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.tango_nfc* @to_tango_nfc(i32 %19)
  store %struct.tango_nfc* %20, %struct.tango_nfc** %11, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %63

29:                                               ; preds = %4
  %30 = load %struct.tango_nfc*, %struct.tango_nfc** %11, align 8
  %31 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @METADATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 -1, i64 %34)
  %36 = load %struct.tango_nfc*, %struct.tango_nfc** %11, align 8
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = load i32, i32* @NFC_WRITE, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @do_dma(%struct.tango_nfc* %36, i32 %37, i32 %38, i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %63

47:                                               ; preds = %29
  %48 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %50, align 8
  %52 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %53 = bitcast %struct.nand_chip* %52 to %struct.nand_chip.0*
  %54 = call i32 %51(%struct.nand_chip.0* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59, %45, %26
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.tango_nfc* @to_tango_nfc(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @do_dma(%struct.tango_nfc*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
