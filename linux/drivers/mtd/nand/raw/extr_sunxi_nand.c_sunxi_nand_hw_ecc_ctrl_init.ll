; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_hw_ecc_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_hw_ecc_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sunxi_nand_hw_ecc*, i32, i32 }
%struct.sunxi_nand_hw_ecc = type { i32 }
%struct.device_node = type { i32 }
%struct.sunxi_nfc = type { i64, i32 }
%struct.mtd_info = type { i32, i32 }

@sunxi_nand_hw_ecc_ctrl_init.strengths = internal constant [9 x i32] [i32 16, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 60, i32 64], align 16
@NAND_ECC_MAXIMIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unsupported strength\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_read_oob = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_write_oob = common dso_local global i32 0, align 4
@sunxi_nand_ooblayout_ops = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_read_page_dma = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_read_subpage_dma = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_write_page_dma = common dso_local global i32 0, align 4
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_read_page = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_read_subpage = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_write_page = common dso_local global i32 0, align 4
@sunxi_nfc_hw_ecc_write_subpage = common dso_local global i32 0, align 4
@nand_read_oob_std = common dso_local global i32 0, align 4
@nand_write_oob_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_ecc_ctrl*, %struct.device_node*)* @sunxi_nand_hw_ecc_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nand_hw_ecc_ctrl_init(%struct.nand_chip* %0, %struct.nand_ecc_ctrl* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.nand_ecc_ctrl*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.sunxi_nfc*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.sunxi_nand_hw_ecc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_ecc_ctrl* %1, %struct.nand_ecc_ctrl** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %17)
  store %struct.sunxi_nfc* %18, %struct.sunxi_nfc** %8, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %19)
  store %struct.mtd_info* %20, %struct.mtd_info** %9, align 8
  %21 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %22 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NAND_ECC_MAXIMIZE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %95

27:                                               ; preds = %3
  %28 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %29 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %28, i32 0, i32 1
  store i32 1024, i32* %29, align 4
  %30 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %34 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 2
  %41 = load i32, i32* %11, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %48, %27
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %52, 8
  %54 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 8, %56
  %58 = call i32 @fls(i32 %57)
  %59 = sdiv i32 %53, %58
  %60 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %61 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %77, %51
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @sunxi_nand_hw_ecc_ctrl_init.strengths, i64 0, i64 0))
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* @sunxi_nand_hw_ecc_ctrl_init.strengths, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %72 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %80

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %62

80:                                               ; preds = %75, %62
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %85 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  br label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [9 x i32], [9 x i32]* @sunxi_nand_hw_ecc_ctrl_init.strengths, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %93 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %86, %83
  br label %95

95:                                               ; preds = %94, %3
  %96 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %97 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 512
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %102 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 1024
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %262

108:                                              ; preds = %100, %95
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.sunxi_nand_hw_ecc* @kzalloc(i32 4, i32 %109)
  store %struct.sunxi_nand_hw_ecc* %110, %struct.sunxi_nand_hw_ecc** %10, align 8
  %111 = load %struct.sunxi_nand_hw_ecc*, %struct.sunxi_nand_hw_ecc** %10, align 8
  %112 = icmp ne %struct.sunxi_nand_hw_ecc* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %262

116:                                              ; preds = %108
  %117 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %118 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 512
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %123 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 512
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %128 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %127, i32 0, i32 1
  store i32 1024, i32* %128, align 4
  %129 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %130 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %131, 2
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %126, %121, %116
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %155, %133
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @sunxi_nand_hw_ecc_ctrl_init.strengths, i64 0, i64 0))
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %140 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [9 x i32], [9 x i32]* @sunxi_nand_hw_ecc_ctrl_init.strengths, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %141, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %138
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [9 x i32], [9 x i32]* @sunxi_nand_hw_ecc_ctrl_init.strengths, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %153 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  br label %158

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %134

158:                                              ; preds = %147, %134
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @sunxi_nand_hw_ecc_ctrl_init.strengths, i64 0, i64 0))
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %164 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %167 = load i32, i32* @ENOTSUPP, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %12, align 4
  br label %258

169:                                              ; preds = %158
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.sunxi_nand_hw_ecc*, %struct.sunxi_nand_hw_ecc** %10, align 8
  %172 = getelementptr inbounds %struct.sunxi_nand_hw_ecc, %struct.sunxi_nand_hw_ecc* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %174 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @fls(i32 8192)
  %177 = mul nsw i32 %175, %176
  %178 = call i32 @DIV_ROUND_UP(i32 %177, i32 8)
  %179 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %180 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %182 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ALIGN(i32 %183, i32 2)
  %185 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %186 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %188 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %191 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sdiv i32 %189, %192
  store i32 %193, i32* %11, align 4
  %194 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %195 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %198 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 4
  %201 = load i32, i32* %11, align 4
  %202 = mul nsw i32 %200, %201
  %203 = icmp slt i32 %196, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %169
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %12, align 4
  br label %258

207:                                              ; preds = %169
  %208 = load i32, i32* @sunxi_nfc_hw_ecc_read_oob, align 4
  %209 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %210 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %209, i32 0, i32 12
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* @sunxi_nfc_hw_ecc_write_oob, align 4
  %212 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %213 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %212, i32 0, i32 11
  store i32 %211, i32* %213, align 8
  %214 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %215 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %214, i32* @sunxi_nand_ooblayout_ops)
  %216 = load %struct.sunxi_nand_hw_ecc*, %struct.sunxi_nand_hw_ecc** %10, align 8
  %217 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %218 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %217, i32 0, i32 10
  store %struct.sunxi_nand_hw_ecc* %216, %struct.sunxi_nand_hw_ecc** %218, align 8
  %219 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %220 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %207
  %224 = load i32, i32* @sunxi_nfc_hw_ecc_read_page_dma, align 4
  %225 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %226 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %225, i32 0, i32 9
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @sunxi_nfc_hw_ecc_read_subpage_dma, align 4
  %228 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %229 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @sunxi_nfc_hw_ecc_write_page_dma, align 4
  %231 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %232 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %234 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %235 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %248

238:                                              ; preds = %207
  %239 = load i32, i32* @sunxi_nfc_hw_ecc_read_page, align 4
  %240 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %241 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %240, i32 0, i32 9
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @sunxi_nfc_hw_ecc_read_subpage, align 4
  %243 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %244 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %243, i32 0, i32 8
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @sunxi_nfc_hw_ecc_write_page, align 4
  %246 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %247 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %246, i32 0, i32 7
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %238, %223
  %249 = load i32, i32* @sunxi_nfc_hw_ecc_write_subpage, align 4
  %250 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %251 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %250, i32 0, i32 6
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* @nand_read_oob_std, align 4
  %253 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %254 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @nand_write_oob_std, align 4
  %256 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %257 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %256, i32 0, i32 4
  store i32 %255, i32* %257, align 8
  store i32 0, i32* %4, align 4
  br label %262

258:                                              ; preds = %204, %162
  %259 = load %struct.sunxi_nand_hw_ecc*, %struct.sunxi_nand_hw_ecc** %10, align 8
  %260 = call i32 @kfree(%struct.sunxi_nand_hw_ecc* %259)
  %261 = load i32, i32* %12, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %258, %248, %113, %105
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.sunxi_nand_hw_ecc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @kfree(%struct.sunxi_nand_hw_ecc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
