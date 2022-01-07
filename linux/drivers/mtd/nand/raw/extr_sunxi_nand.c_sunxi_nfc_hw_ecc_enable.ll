; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.sunxi_nand_hw_ecc* }
%struct.sunxi_nand_hw_ecc = type { i32 }
%struct.sunxi_nfc = type { i64 }

@NFC_REG_ECC_CTL = common dso_local global i64 0, align 8
@NFC_ECC_MODE_MSK = common dso_local global i32 0, align 4
@NFC_ECC_PIPELINE = common dso_local global i32 0, align 4
@NFC_ECC_BLOCK_SIZE_MSK = common dso_local global i32 0, align 4
@NFC_ECC_EN = common dso_local global i32 0, align 4
@NFC_ECC_EXCEPTION = common dso_local global i32 0, align 4
@NFC_ECC_BLOCK_512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @sunxi_nfc_hw_ecc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_hw_ecc_enable(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.sunxi_nfc*, align 8
  %4 = alloca %struct.sunxi_nand_hw_ecc*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %8)
  store %struct.sunxi_nfc* %9, %struct.sunxi_nfc** %3, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.sunxi_nand_hw_ecc*, %struct.sunxi_nand_hw_ecc** %12, align 8
  store %struct.sunxi_nand_hw_ecc* %13, %struct.sunxi_nand_hw_ecc** %4, align 8
  %14 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %15 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @NFC_ECC_MODE_MSK, align 4
  %21 = load i32, i32* @NFC_ECC_PIPELINE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NFC_ECC_BLOCK_SIZE_MSK, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @NFC_ECC_EN, align 4
  %29 = load %struct.sunxi_nand_hw_ecc*, %struct.sunxi_nand_hw_ecc** %4, align 8
  %30 = getelementptr inbounds %struct.sunxi_nand_hw_ecc, %struct.sunxi_nand_hw_ecc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NFC_ECC_MODE(i32 %31)
  %33 = or i32 %28, %32
  %34 = load i32, i32* @NFC_ECC_EXCEPTION, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NFC_ECC_PIPELINE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 512
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i32, i32* @NFC_ECC_BLOCK_512, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %1
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %52 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  ret void
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @NFC_ECC_MODE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
