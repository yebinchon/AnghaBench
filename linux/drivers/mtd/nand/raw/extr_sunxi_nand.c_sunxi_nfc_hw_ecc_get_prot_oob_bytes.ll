; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_get_prot_oob_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_get_prot_oob_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.sunxi_nfc = type { i64 }

@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32, i32, i32)* @sunxi_nfc_hw_ecc_get_prot_oob_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_hw_ecc_get_prot_oob_bytes(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sunxi_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %14)
  store %struct.sunxi_nfc* %15, %struct.sunxi_nfc** %11, align 8
  %16 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %11, align 8
  %17 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @NFC_REG_USER_DATA(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @readl(i64 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @sunxi_nfc_user_data_to_buf(i32 %22, i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %5
  %28 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @sunxi_nfc_randomize_bbm(%struct.nand_chip* %35, i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %34, %27, %5
  ret void
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @sunxi_nfc_user_data_to_buf(i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @NFC_REG_USER_DATA(i32) #1

declare dso_local i32 @sunxi_nfc_randomize_bbm(%struct.nand_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
