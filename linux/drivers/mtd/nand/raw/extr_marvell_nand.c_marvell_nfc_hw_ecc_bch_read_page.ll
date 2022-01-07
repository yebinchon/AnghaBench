; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32 }
%struct.mtd_info = type { i32 }
%struct.marvell_hw_ecc_layout = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.marvell_hw_ecc_layout* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @marvell_nfc_hw_ecc_bch_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_hw_ecc_bch_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.marvell_hw_ecc_layout*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %30 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %29)
  store %struct.mtd_info* %30, %struct.mtd_info** %10, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %32 = call %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %33, align 8
  store %struct.marvell_hw_ecc_layout* %34, %struct.marvell_hw_ecc_layout** %11, align 8
  %35 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %36 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %39 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %14, align 8
  %42 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %45 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %46 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @marvell_nfc_select_target(%struct.nand_chip* %45, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %4
  %53 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memset(i32* %55, i32 255, i32 %58)
  br label %60

60:                                               ; preds = %52, %4
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = call i32 @marvell_nfc_enable_hw_ecc(%struct.nand_chip* %61)
  store i32 0, i32* %18, align 4
  br label %63

63:                                               ; preds = %109, %60
  %64 = load i32, i32* %18, align 4
  %65 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %66 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %63
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %72 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %77 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %80 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %75, %69
  %83 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @marvell_nfc_hw_ecc_bch_read_chunk(%struct.nand_chip* %83, i32 %84, i32* %85, i32 %86, i32* %87, i32 %88, i32 %89)
  %91 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %92 = call i32 @marvell_nfc_hw_ecc_correct(%struct.nand_chip* %91, i32* %16)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %82
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @BIT(i32 %96)
  %98 = load i32, i32* %17, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %95, %82
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %14, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %15, align 8
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %63

112:                                              ; preds = %63
  %113 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %114 = call i32 @marvell_nfc_disable_hw_ecc(%struct.nand_chip* %113)
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %5, align 4
  br label %319

119:                                              ; preds = %112
  store i32 0, i32* %18, align 4
  br label %120

120:                                              ; preds = %314, %119
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %123 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %317

126:                                              ; preds = %120
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %18, align 4
  %129 = call i32 @BIT(i32 %128)
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %314

133:                                              ; preds = %126
  %134 = load i32, i32* %18, align 4
  %135 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %136 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %139 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  %142 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %143 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %141, %144
  %146 = mul nsw i32 %134, %145
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %150 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %133
  %154 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %155 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  br label %161

157:                                              ; preds = %133
  %158 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %159 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i32 [ %156, %153 ], [ %160, %157 ]
  %163 = add nsw i32 %147, %162
  store i32 %163, i32* %21, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %167 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  %171 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %172 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  br label %178

174:                                              ; preds = %161
  %175 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %176 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi i32 [ %173, %170 ], [ %177, %174 ]
  %180 = add nsw i32 %164, %179
  store i32 %180, i32* %22, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %183 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %181, %184
  store i32 %185, i32* %23, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %188 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %186, %189
  store i32 %190, i32* %24, align 4
  %191 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %192 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %195 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %193, %196
  %198 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %199 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %197, %200
  %202 = load i32, i32* %18, align 4
  %203 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %204 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 2
  %207 = mul nsw i32 %202, %206
  %208 = add nsw i32 %201, %207
  store i32 %208, i32* %25, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %211 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %178
  %215 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %216 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  br label %222

218:                                              ; preds = %178
  %219 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %220 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  br label %222

222:                                              ; preds = %218, %214
  %223 = phi i32 [ %217, %214 ], [ %221, %218 ]
  store i32 %223, i32* %26, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %226 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %231 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  br label %237

233:                                              ; preds = %222
  %234 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %235 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  br label %237

237:                                              ; preds = %233, %229
  %238 = phi i32 [ %232, %229 ], [ %236, %233 ]
  store i32 %238, i32* %27, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %241 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %246 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  br label %252

248:                                              ; preds = %237
  %249 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %250 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  br label %252

252:                                              ; preds = %248, %244
  %253 = phi i32 [ %247, %244 ], [ %251, %248 ]
  store i32 %253, i32* %28, align 4
  %254 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %255 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 2048
  br i1 %257, label %258, label %282

258:                                              ; preds = %252
  %259 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %260 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 8
  br i1 %262, label %263, label %282

263:                                              ; preds = %258
  %264 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %265 = load i32, i32* %20, align 4
  %266 = load i32*, i32** %7, align 8
  %267 = load i32, i32* %23, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %26, align 4
  %271 = call i32 @nand_change_read_column_op(%struct.nand_chip* %264, i32 %265, i32* %269, i32 %270, i32 0)
  %272 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %273 = load i32, i32* %21, align 4
  %274 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %275 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %24, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %27, align 4
  %281 = call i32 @nand_change_read_column_op(%struct.nand_chip* %272, i32 %273, i32* %279, i32 %280, i32 0)
  br label %282

282:                                              ; preds = %263, %258, %252
  %283 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %284 = load i32, i32* %22, align 4
  %285 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %286 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %25, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %28, align 4
  %292 = call i32 @nand_change_read_column_op(%struct.nand_chip* %283, i32 %284, i32* %290, i32 %291, i32 0)
  %293 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %294 = load i32*, i32** %7, align 8
  %295 = load i32, i32* %23, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %26, align 4
  %299 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %300 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %24, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %27, align 4
  %306 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %307 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %25, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %28, align 4
  %313 = call i32 @marvell_nfc_check_empty_chunk(%struct.nand_chip* %293, i32* %297, i32 %298, i32* %304, i32 %305, i32* %311, i32 %312, i32* %16)
  br label %314

314:                                              ; preds = %282, %132
  %315 = load i32, i32* %18, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %18, align 4
  br label %120

317:                                              ; preds = %120
  %318 = load i32, i32* %16, align 4
  store i32 %318, i32* %5, align 4
  br label %319

319:                                              ; preds = %317, %117
  %320 = load i32, i32* %5, align 4
  ret i32 %320
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @marvell_nfc_enable_hw_ecc(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_hw_ecc_bch_read_chunk(%struct.nand_chip*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @marvell_nfc_hw_ecc_correct(%struct.nand_chip*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @marvell_nfc_disable_hw_ecc(%struct.nand_chip*) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @marvell_nfc_check_empty_chunk(%struct.nand_chip*, i32*, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
