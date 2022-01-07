; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl, i32 }
%struct.nand_ecc_ctrl = type { i64, i64 }
%struct.sunxi_nfc = type { i64 }

@EBADMSG = common dso_local global i32 0, align 4
@NFC_REG_PAT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32, i32, i32*)* @sunxi_nfc_hw_ecc_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_correct(%struct.nand_chip* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sunxi_nfc*, align 8
  %15 = alloca %struct.nand_ecc_ctrl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %20)
  store %struct.sunxi_nfc* %21, %struct.sunxi_nfc** %14, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %23, %struct.nand_ecc_ctrl** %15, align 8
  %24 = load i32*, i32** %13, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @NFC_ECC_ERR(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EBADMSG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %88

33:                                               ; preds = %6
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @NFC_ECC_PAT_FOUND(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %33
  %40 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %14, align 8
  %41 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NFC_REG_PAT_ID, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 0, i32* %17, align 4
  br label %55

53:                                               ; preds = %39
  store i32 255, i32* %17, align 4
  %54 = load i32*, i32** %13, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %62 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memset(i32* %59, i32 %60, i64 %63)
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %72 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 4
  %75 = call i32 @memset(i32* %69, i32 %70, i64 %74)
  br label %76

76:                                               ; preds = %68, %65
  store i32 0, i32* %7, align 4
  br label %88

77:                                               ; preds = %33
  %78 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %14, align 8
  %79 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @NFC_REG_ECC_ERR_CNT(i32 %81)
  %83 = add nsw i64 %80, %82
  %84 = call i32 @readl(i64 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @NFC_ECC_ERR_CNT(i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %77, %76, %30
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @NFC_ECC_ERR(i32) #1

declare dso_local i32 @NFC_ECC_PAT_FOUND(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @NFC_REG_ECC_ERR_CNT(i32) #1

declare dso_local i32 @NFC_ECC_ERR_CNT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
