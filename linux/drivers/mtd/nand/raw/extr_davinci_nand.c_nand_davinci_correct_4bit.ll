; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_correct_4bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_correct_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.davinci_nand_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_4BIT_ECC_LOAD_OFFSET = common dso_local global i32 0, align 4
@NANDFSR_OFFSET = common dso_local global i32 0, align 4
@NAND_ERR_ADD1_OFFSET = common dso_local global i32 0, align 4
@NANDFCR_OFFSET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NAND_ERR_ERRVAL1_OFFSET = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@NAND_ERR_ADD2_OFFSET = common dso_local global i32 0, align 4
@NAND_ERR_ERRVAL2_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @nand_davinci_correct_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_davinci_correct_4bit(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.davinci_nand_info*, align 8
  %12 = alloca [8 x i16], align 16
  %13 = alloca i16*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = call i32 @nand_to_mtd(%struct.nand_chip* %22)
  %24 = call %struct.davinci_nand_info* @to_davinci_nand(i32 %23)
  store %struct.davinci_nand_info* %24, %struct.davinci_nand_info** %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = and i64 1, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %274

34:                                               ; preds = %4
  %35 = load i32*, i32** %8, align 8
  %36 = bitcast i32* %35 to i16*
  store i16* %36, i16** %13, align 8
  %37 = load i16*, i16** %13, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 0
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = ashr i32 %40, 0
  %42 = and i32 %41, 1023
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 0
  store i16 %43, i16* %44, align 16
  %45 = load i16*, i16** %13, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 0
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = ashr i32 %48, 10
  %50 = and i32 %49, 63
  %51 = load i16*, i16** %13, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 1
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, 6
  %56 = and i32 %55, 960
  %57 = or i32 %50, %56
  %58 = trunc i32 %57 to i16
  %59 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 1
  store i16 %58, i16* %59, align 2
  %60 = load i16*, i16** %13, align 8
  %61 = getelementptr inbounds i16, i16* %60, i64 1
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 1023
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 2
  store i16 %66, i16* %67, align 4
  %68 = load i16*, i16** %13, align 8
  %69 = getelementptr inbounds i16, i16* %68, i64 1
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = ashr i32 %71, 14
  %73 = and i32 %72, 3
  %74 = load i16*, i16** %13, align 8
  %75 = getelementptr inbounds i16, i16* %74, i64 2
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = shl i32 %77, 2
  %79 = and i32 %78, 1020
  %80 = or i32 %73, %79
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 3
  store i16 %81, i16* %82, align 2
  %83 = load i16*, i16** %13, align 8
  %84 = getelementptr inbounds i16, i16* %83, i64 2
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = ashr i32 %86, 8
  %88 = load i16*, i16** %13, align 8
  %89 = getelementptr inbounds i16, i16* %88, i64 3
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = shl i32 %91, 8
  %93 = and i32 %92, 768
  %94 = or i32 %87, %93
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 4
  store i16 %95, i16* %96, align 8
  %97 = load i16*, i16** %13, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 3
  %99 = load i16, i16* %98, align 2
  %100 = zext i16 %99 to i32
  %101 = ashr i32 %100, 2
  %102 = and i32 %101, 1023
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 5
  store i16 %103, i16* %104, align 2
  %105 = load i16*, i16** %13, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 3
  %107 = load i16, i16* %106, align 2
  %108 = zext i16 %107 to i32
  %109 = ashr i32 %108, 12
  %110 = and i32 %109, 15
  %111 = load i16*, i16** %13, align 8
  %112 = getelementptr inbounds i16, i16* %111, i64 4
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = shl i32 %114, 4
  %116 = and i32 %115, 1008
  %117 = or i32 %110, %116
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 6
  store i16 %118, i16* %119, align 4
  %120 = load i16*, i16** %13, align 8
  %121 = getelementptr inbounds i16, i16* %120, i64 4
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = ashr i32 %123, 6
  %125 = and i32 %124, 1023
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 7
  store i16 %126, i16* %127, align 2
  store i32 7, i32* %10, align 4
  br label %128

128:                                              ; preds = %140, %34
  %129 = load i32, i32* %10, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %133 = load i32, i32* @NAND_4BIT_ECC_LOAD_OFFSET, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 %135
  %137 = load i16, i16* %136, align 2
  %138 = zext i16 %137 to i32
  %139 = call i32 @davinci_nand_writel(%struct.davinci_nand_info* %132, i32 %133, i32 %138)
  br label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %10, align 4
  br label %128

143:                                              ; preds = %128
  %144 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %145 = load i32, i32* @NANDFSR_OFFSET, align 4
  %146 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %144, i32 %145)
  %147 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %149 = call i32 @nand_davinci_readecc_4bit(%struct.davinci_nand_info* %147, i32* %148)
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %151 = load i32, i32* %150, align 16
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %151, %153
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %154, %156
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %143
  store i32 0, i32* %5, align 4
  br label %274

163:                                              ; preds = %143
  %164 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %165 = load i32, i32* @NAND_ERR_ADD1_OFFSET, align 4
  %166 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %164, i32 %165)
  %167 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %168 = load i32, i32* @NANDFCR_OFFSET, align 4
  %169 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %170 = load i32, i32* @NANDFCR_OFFSET, align 4
  %171 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %169, i32 %170)
  %172 = call i32 @BIT(i32 13)
  %173 = or i32 %171, %172
  %174 = call i32 @davinci_nand_writel(%struct.davinci_nand_info* %167, i32 %168, i32 %173)
  %175 = load i64, i64* @jiffies, align 8
  %176 = call i64 @usecs_to_jiffies(i32 100)
  %177 = add i64 %175, %176
  store i64 %177, i64* %18, align 8
  br label %178

178:                                              ; preds = %193, %163
  %179 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %180 = load i32, i32* @NANDFSR_OFFSET, align 4
  %181 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %179, i32 %180)
  %182 = ashr i32 %181, 8
  %183 = and i32 %182, 15
  store i32 %183, i32* %15, align 4
  %184 = call i32 (...) @cpu_relax()
  br label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %15, align 4
  %187 = icmp slt i32 %186, 4
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i64, i64* @jiffies, align 8
  %190 = load i64, i64* %18, align 8
  %191 = call i64 @time_before(i64 %189, i64 %190)
  %192 = icmp ne i64 %191, 0
  br label %193

193:                                              ; preds = %188, %185
  %194 = phi i1 [ false, %185 ], [ %192, %188 ]
  br i1 %194, label %178, label %195

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %218, %195
  %197 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %198 = load i32, i32* @NANDFSR_OFFSET, align 4
  %199 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %197, i32 %198)
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %19, align 4
  %201 = ashr i32 %200, 8
  %202 = and i32 %201, 15
  switch i32 %202, label %218 [
    i32 0, label %203
    i32 1, label %207
    i32 2, label %213
    i32 3, label %213
  ]

203:                                              ; preds = %196
  %204 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %205 = load i32, i32* @NAND_ERR_ERRVAL1_OFFSET, align 4
  %206 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %204, i32 %205)
  store i32 0, i32* %5, align 4
  br label %274

207:                                              ; preds = %196
  %208 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %209 = load i32, i32* @NAND_ERR_ERRVAL1_OFFSET, align 4
  %210 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %208, i32 %209)
  %211 = load i32, i32* @EBADMSG, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %5, align 4
  br label %274

213:                                              ; preds = %196, %196
  %214 = load i32, i32* %19, align 4
  %215 = ashr i32 %214, 16
  %216 = and i32 %215, 3
  %217 = add nsw i32 1, %216
  store i32 %217, i32* %16, align 4
  br label %220

218:                                              ; preds = %196
  %219 = call i32 (...) @cpu_relax()
  br label %196

220:                                              ; preds = %213
  store i32 0, i32* %10, align 4
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %269, %220
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %225, label %272

225:                                              ; preds = %221
  %226 = load i32, i32* %10, align 4
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %230 = load i32, i32* @NAND_ERR_ADD2_OFFSET, align 4
  %231 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %229, i32 %230)
  store i32 %231, i32* %20, align 4
  %232 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %233 = load i32, i32* @NAND_ERR_ERRVAL2_OFFSET, align 4
  %234 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %232, i32 %233)
  store i32 %234, i32* %21, align 4
  br label %242

235:                                              ; preds = %225
  %236 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %237 = load i32, i32* @NAND_ERR_ADD1_OFFSET, align 4
  %238 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %236, i32 %237)
  store i32 %238, i32* %20, align 4
  %239 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %240 = load i32, i32* @NAND_ERR_ERRVAL1_OFFSET, align 4
  %241 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %239, i32 %240)
  store i32 %241, i32* %21, align 4
  br label %242

242:                                              ; preds = %235, %228
  %243 = load i32, i32* %10, align 4
  %244 = and i32 %243, 1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load i32, i32* %20, align 4
  %248 = ashr i32 %247, 16
  store i32 %248, i32* %20, align 4
  %249 = load i32, i32* %21, align 4
  %250 = ashr i32 %249, 16
  store i32 %250, i32* %21, align 4
  br label %251

251:                                              ; preds = %246, %242
  %252 = load i32, i32* %20, align 4
  %253 = and i32 %252, 1023
  store i32 %253, i32* %20, align 4
  %254 = load i32, i32* %20, align 4
  %255 = sub nsw i32 519, %254
  store i32 %255, i32* %20, align 4
  %256 = load i32, i32* %20, align 4
  %257 = icmp slt i32 %256, 512
  br i1 %257, label %258, label %268

258:                                              ; preds = %251
  %259 = load i32, i32* %21, align 4
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %20, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = xor i32 %264, %259
  store i32 %265, i32* %263, align 4
  %266 = load i32, i32* %17, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %17, align 4
  br label %268

268:                                              ; preds = %258, %251
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  br label %221

272:                                              ; preds = %221
  %273 = load i32, i32* %17, align 4
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %272, %207, %203, %162, %31
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @davinci_nand_writel(%struct.davinci_nand_info*, i32, i32) #1

declare dso_local i32 @davinci_nand_readl(%struct.davinci_nand_info*, i32) #1

declare dso_local i32 @nand_davinci_readecc_4bit(%struct.davinci_nand_info*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
