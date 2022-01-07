; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl, i32 }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.sunxi_nfc = type { i64 }

@NFC_DATA_TRANS = common dso_local global i32 0, align 4
@NFC_DATA_SWAP_METHOD = common dso_local global i32 0, align 4
@NFC_ACCESS_DIR = common dso_local global i32 0, align 4
@NFC_ECC_OP = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NFC_CMD_INT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32*, i32, i32*, i32, i32)* @sunxi_nfc_hw_ecc_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_write_chunk(%struct.nand_chip* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sunxi_nfc*, align 8
  %19 = alloca %struct.nand_ecc_ctrl*, align 8
  %20 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %23)
  store %struct.sunxi_nfc* %24, %struct.sunxi_nfc** %18, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %26, %struct.nand_ecc_ctrl** %19, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @nand_change_write_column_op(%struct.nand_chip* %32, i32 %33, i32* null, i32 0, i32 0)
  br label %35

35:                                               ; preds = %31, %8
  %36 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %19, align 8
  %39 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @sunxi_nfc_randomizer_write_buf(%struct.nand_chip* %36, i32* %37, i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %19, align 8
  %45 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @nand_change_write_column_op(%struct.nand_chip* %51, i32 %52, i32* null, i32 0, i32 0)
  br label %54

54:                                               ; preds = %50, %35
  %55 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %18, align 8
  %56 = call i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc* %55)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %20, align 4
  store i32 %60, i32* %9, align 4
  br label %99

61:                                               ; preds = %54
  %62 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %63 = call i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip* %62)
  %64 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @sunxi_nfc_hw_ecc_set_prot_oob_bytes(%struct.nand_chip* %64, i32* %65, i32 0, i32 %66, i32 %67)
  %69 = load i32, i32* @NFC_DATA_TRANS, align 4
  %70 = load i32, i32* @NFC_DATA_SWAP_METHOD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @NFC_ACCESS_DIR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @NFC_ECC_OP, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %18, align 8
  %77 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NFC_REG_CMD, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %18, align 8
  %83 = load i32, i32* @NFC_CMD_INT_FLAG, align 4
  %84 = call i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc* %82, i32 %83, i32 0, i32 0)
  store i32 %84, i32* %20, align 4
  %85 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %86 = call i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip* %85)
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %61
  %90 = load i32, i32* %20, align 4
  store i32 %90, i32* %9, align 4
  br label %99

91:                                               ; preds = %61
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %19, align 8
  %94 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = add nsw i32 %96, 4
  %98 = load i32*, i32** %15, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %91, %89, %59
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @nand_change_write_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_write_buf(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc*) #1

declare dso_local i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_set_prot_oob_bytes(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
