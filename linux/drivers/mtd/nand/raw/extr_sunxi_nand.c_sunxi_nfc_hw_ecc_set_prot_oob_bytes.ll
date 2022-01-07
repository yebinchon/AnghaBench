; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_set_prot_oob_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_set_prot_oob_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.sunxi_nfc = type { i64 }

@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32, i32, i32)* @sunxi_nfc_hw_ecc_set_prot_oob_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_hw_ecc_set_prot_oob_bytes(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sunxi_nfc*, align 8
  %12 = alloca [4 x i32], align 16
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %15)
  store %struct.sunxi_nfc* %16, %struct.sunxi_nfc** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %5
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @memcpy(i32* %27, i32* %28, i32 16)
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %33 = call i32 @sunxi_nfc_randomize_bbm(%struct.nand_chip* %30, i32 %31, i32* %32)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %26, %19, %5
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sunxi_nfc_buf_to_user_data(i32* %36)
  %38 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %11, align 8
  %39 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @NFC_REG_USER_DATA(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel(i32 %37, i64 %43)
  ret void
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_randomize_bbm(%struct.nand_chip*, i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sunxi_nfc_buf_to_user_data(i32*) #1

declare dso_local i64 @NFC_REG_USER_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
