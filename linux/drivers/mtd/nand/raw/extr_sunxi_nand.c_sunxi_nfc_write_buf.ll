; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.sunxi_nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sunxi_nfc = type { i64 }

@NFC_SRAM_SIZE = common dso_local global i32 0, align 4
@NFC_REG_CNT = common dso_local global i64 0, align 8
@NFC_RAM0_BASE = common dso_local global i64 0, align 8
@NFC_DATA_TRANS = common dso_local global i32 0, align 4
@NFC_DATA_SWAP_METHOD = common dso_local global i32 0, align 4
@NFC_ACCESS_DIR = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NFC_CMD_INT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @sunxi_nfc_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_write_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_nand_chip*, align 8
  %8 = alloca %struct.sunxi_nfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = call %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip* %14)
  store %struct.sunxi_nand_chip* %15, %struct.sunxi_nand_chip** %7, align 8
  %16 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %7, align 8
  %17 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %19)
  store %struct.sunxi_nfc* %20, %struct.sunxi_nfc** %8, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %78, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* @NFC_SRAM_SIZE, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %32 = call i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %82

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %39 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NFC_REG_CNT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %45 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NFC_RAM0_BASE, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @memcpy_toio(i64 %48, i32* %52, i32 %53)
  %55 = load i32, i32* @NFC_DATA_TRANS, align 4
  %56 = load i32, i32* @NFC_DATA_SWAP_METHOD, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @NFC_ACCESS_DIR, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %62 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NFC_REG_CMD, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 64
  br i1 %68, label %69, label %70

69:                                               ; preds = %36
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %36
  %71 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %72 = load i32, i32* @NFC_CMD_INT_FLAG, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc* %71, i32 %72, i32 %73, i32 0)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %82

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %21

82:                                               ; preds = %77, %35, %21
  ret void
}

declare dso_local %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip*) #1

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
