; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.nand_ecc_ctrl, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.sunxi_nfc = type { i64 }

@NFC_DATA_TRANS = common dso_local global i32 0, align 4
@NFC_DATA_SWAP_METHOD = common dso_local global i32 0, align 4
@NFC_ECC_OP = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NFC_CMD_INT_FLAG = common dso_local global i32 0, align 4
@NFC_REG_ECC_ST = common dso_local global i64 0, align 8
@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@NFC_RAM0_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32)* @sunxi_nfc_hw_ecc_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_read_chunk(%struct.nand_chip* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nand_chip*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sunxi_nfc*, align 8
  %23 = alloca %struct.nand_ecc_ctrl*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %29)
  store %struct.sunxi_nfc* %30, %struct.sunxi_nfc** %22, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 1
  store %struct.nand_ecc_ctrl* %32, %struct.nand_ecc_ctrl** %23, align 8
  store i32 0, i32* %24, align 4
  %33 = load i32*, i32** %17, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %10
  %38 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @nand_change_read_column_op(%struct.nand_chip* %38, i32 %39, i32* null, i32 0, i32 0)
  br label %41

41:                                               ; preds = %37, %10
  %42 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %43 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %44 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %21, align 4
  %47 = call i32 @sunxi_nfc_randomizer_read_buf(%struct.nand_chip* %42, i32* null, i32 %45, i32 0, i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %50 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @nand_change_read_column_op(%struct.nand_chip* %56, i32 %57, i32* null, i32 0, i32 0)
  br label %59

59:                                               ; preds = %55, %41
  %60 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %22, align 8
  %61 = call i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc* %60)
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %26, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %26, align 4
  store i32 %65, i32* %11, align 4
  br label %208

66:                                               ; preds = %59
  %67 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %68 = call i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip* %67)
  %69 = load i32, i32* @NFC_DATA_TRANS, align 4
  %70 = load i32, i32* @NFC_DATA_SWAP_METHOD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @NFC_ECC_OP, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %22, align 8
  %75 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NFC_REG_CMD, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %22, align 8
  %81 = load i32, i32* @NFC_CMD_INT_FLAG, align 4
  %82 = call i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc* %80, i32 %81, i32 0, i32 0)
  store i32 %82, i32* %26, align 4
  %83 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %84 = call i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip* %83)
  %85 = load i32, i32* %26, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %66
  %88 = load i32, i32* %26, align 4
  store i32 %88, i32* %11, align 4
  br label %208

89:                                               ; preds = %66
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %92 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = add nsw i32 %94, 4
  %96 = load i32*, i32** %17, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = load i32*, i32** %15, align 8
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32* [ %102, %101 ], [ null, %103 ]
  %106 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %22, align 8
  %107 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NFC_REG_ECC_ST, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @readl(i64 %110)
  %112 = call i32 @sunxi_nfc_hw_ecc_correct(%struct.nand_chip* %97, i32* %98, i32* %105, i32 0, i32 %111, i32* %25)
  store i32 %112, i32* %26, align 4
  %113 = load i32, i32* %25, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  store i32 1, i32* %11, align 4
  br label %208

116:                                              ; preds = %104
  %117 = load i32, i32* %26, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %171

119:                                              ; preds = %116
  %120 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %131 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nand_change_read_column_op(%struct.nand_chip* %127, i32 %128, i32* %129, i32 %132, i32 0)
  br label %145

134:                                              ; preds = %119
  %135 = load i32*, i32** %13, align 8
  %136 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %22, align 8
  %137 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NFC_RAM0_BASE, align 8
  %140 = add nsw i64 %138, %139
  %141 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %142 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @memcpy_fromio(i32* %135, i64 %140, i32 %143)
  br label %145

145:                                              ; preds = %134, %126
  %146 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %147 = load i32, i32* %16, align 4
  %148 = load i32*, i32** %15, align 8
  %149 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %150 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 4
  %153 = call i32 @nand_change_read_column_op(%struct.nand_chip* %146, i32 %147, i32* %148, i32 %152, i32 0)
  %154 = load i32*, i32** %13, align 8
  %155 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %156 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %160 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 4
  %163 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %164 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @nand_check_erased_ecc_chunk(i32* %154, i32 %157, i32* %158, i32 %162, i32* null, i32 0, i32 %165)
  store i32 %166, i32* %26, align 4
  %167 = load i32, i32* %26, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %145
  store i32 1, i32* %24, align 4
  br label %170

170:                                              ; preds = %169, %145
  br label %202

171:                                              ; preds = %116
  %172 = load i32*, i32** %13, align 8
  %173 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %22, align 8
  %174 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @NFC_RAM0_BASE, align 8
  %177 = add nsw i64 %175, %176
  %178 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %179 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @memcpy_fromio(i32* %172, i64 %177, i32 %180)
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %171
  %185 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @nand_change_read_column_op(%struct.nand_chip* %185, i32 %186, i32* null, i32 0, i32 0)
  %188 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %23, align 8
  %191 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 4
  %194 = load i32, i32* %21, align 4
  %195 = call i32 @sunxi_nfc_randomizer_read_buf(%struct.nand_chip* %188, i32* %189, i32 %193, i32 1, i32 %194)
  %196 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %21, align 4
  %200 = call i32 @sunxi_nfc_hw_ecc_get_prot_oob_bytes(%struct.nand_chip* %196, i32* %197, i32 0, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %184, %171
  br label %202

202:                                              ; preds = %201, %170
  %203 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = load i32, i32* %26, align 4
  %206 = call i32 @sunxi_nfc_hw_ecc_update_stats(%struct.nand_chip* %203, i32* %204, i32 %205)
  %207 = load i32, i32* %24, align 4
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %202, %115, %87, %64
  %209 = load i32, i32* %11, align 4
  ret i32 %209
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_read_buf(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc*) #1

declare dso_local i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_correct(%struct.nand_chip*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @memcpy_fromio(i32*, i64, i32) #1

declare dso_local i32 @nand_check_erased_ecc_chunk(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_get_prot_oob_bytes(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_update_stats(%struct.nand_chip*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
