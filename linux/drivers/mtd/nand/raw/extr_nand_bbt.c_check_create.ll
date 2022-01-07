; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_check_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_check_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.nand_bbt_descr*, %struct.nand_bbt_descr* }
%struct.nand_bbt_descr = type { i32, i32*, i32* }

@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@NAND_BBT_VERSION = common dso_local global i32 0, align 4
@NAND_BBT_CREATE = common dso_local global i32 0, align 4
@NAND_BBT_CREATE_EMPTY = common dso_local global i32 0, align 4
@NAND_BBT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, %struct.nand_bbt_descr*)* @check_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_create(%struct.nand_chip* %0, i32* %1, %struct.nand_bbt_descr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nand_bbt_descr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nand_bbt_descr*, align 8
  %16 = alloca %struct.nand_bbt_descr*, align 8
  %17 = alloca %struct.nand_bbt_descr*, align 8
  %18 = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %7, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 3
  %21 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %20, align 8
  store %struct.nand_bbt_descr* %21, %struct.nand_bbt_descr** %15, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 2
  %24 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %23, align 8
  store %struct.nand_bbt_descr* %24, %struct.nand_bbt_descr** %16, align 8
  %25 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %26 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = call i32 @nanddev_ntargets(i32* %33)
  store i32 %34, i32* %9, align 4
  br label %36

35:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %31
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %357, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %360

41:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %17, align 8
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %18, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %42 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %43 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ -1, %50 ]
  store i32 %52, i32* %12, align 4
  %53 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %54 = icmp ne %struct.nand_bbt_descr* %53, null
  br i1 %54, label %55, label %150

55:                                               ; preds = %51
  %56 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %57 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %74

64:                                               ; preds = %55
  %65 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %66 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 1, i32* %11, align 4
  store i32 3, i32* %10, align 4
  br label %149

74:                                               ; preds = %64, %55
  %75 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %76 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  store %struct.nand_bbt_descr* %84, %struct.nand_bbt_descr** %17, align 8
  store i32 1, i32* %10, align 4
  br label %148

85:                                               ; preds = %74
  %86 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %87 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %95, %struct.nand_bbt_descr** %17, align 8
  store i32 2, i32* %10, align 4
  br label %147

96:                                               ; preds = %85
  %97 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %98 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %105 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %103, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %96
  %113 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %113, %struct.nand_bbt_descr** %17, align 8
  %114 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %115 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NAND_BBT_VERSION, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  store %struct.nand_bbt_descr* %121, %struct.nand_bbt_descr** %18, align 8
  br label %122

122:                                              ; preds = %120, %112
  br label %146

123:                                              ; preds = %96
  %124 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %125 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %132 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %130, %137
  %139 = sext i32 %138 to i64
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %123
  %142 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %142, %struct.nand_bbt_descr** %17, align 8
  store i32 2, i32* %10, align 4
  br label %145

143:                                              ; preds = %123
  %144 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  store %struct.nand_bbt_descr* %144, %struct.nand_bbt_descr** %17, align 8
  store i32 1, i32* %10, align 4
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %122
  br label %147

147:                                              ; preds = %146, %94
  br label %148

148:                                              ; preds = %147, %83
  br label %149

149:                                              ; preds = %148, %73
  br label %163

150:                                              ; preds = %51
  %151 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %152 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %162

160:                                              ; preds = %150
  %161 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %161, %struct.nand_bbt_descr** %17, align 8
  br label %162

162:                                              ; preds = %160, %159
  br label %163

163:                                              ; preds = %162, %149
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %204

166:                                              ; preds = %163
  %167 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %168 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @NAND_BBT_CREATE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  br label %357

174:                                              ; preds = %166
  %175 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %176 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @NAND_BBT_CREATE_EMPTY, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %174
  %182 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @create_bbt(%struct.nand_chip* %182, i32* %183, %struct.nand_bbt_descr* %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %174
  %188 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %189 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 1, i32* %193, align 4
  %194 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %195 = icmp ne %struct.nand_bbt_descr* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %187
  %197 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %198 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %196, %187
  br label %204

204:                                              ; preds = %203, %163
  %205 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %17, align 8
  %206 = icmp ne %struct.nand_bbt_descr* %205, null
  br i1 %206, label %207, label %232

207:                                              ; preds = %204
  %208 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %17, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @read_abs_bbt(%struct.nand_chip* %208, i32* %209, %struct.nand_bbt_descr* %210, i32 %211)
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %13, align 4
  %214 = call i64 @mtd_is_eccerr(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %207
  %217 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %17, align 8
  %218 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 -1, i32* %222, align 4
  %223 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %17, align 8
  %224 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 0, i32* %228, align 4
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %8, align 4
  br label %357

231:                                              ; preds = %207
  br label %232

232:                                              ; preds = %231, %204
  %233 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %18, align 8
  %234 = icmp ne %struct.nand_bbt_descr* %233, null
  br i1 %234, label %235, label %260

235:                                              ; preds = %232
  %236 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %18, align 8
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @read_abs_bbt(%struct.nand_chip* %236, i32* %237, %struct.nand_bbt_descr* %238, i32 %239)
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %14, align 4
  %242 = call i64 @mtd_is_eccerr(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %259

244:                                              ; preds = %235
  %245 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %18, align 8
  %246 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 -1, i32* %250, align 4
  %251 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %18, align 8
  %252 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 0, i32* %256, align 4
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %8, align 4
  br label %357

259:                                              ; preds = %235
  br label %260

260:                                              ; preds = %259, %232
  %261 = load i32, i32* %13, align 4
  %262 = call i64 @mtd_is_bitflip(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = load i32, i32* %14, align 4
  %266 = call i64 @mtd_is_bitflip(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %264, %260
  store i32 3, i32* %10, align 4
  br label %269

269:                                              ; preds = %268, %264
  %270 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %271 = icmp ne %struct.nand_bbt_descr* %270, null
  br i1 %271, label %272, label %307

272:                                              ; preds = %269
  %273 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %274 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %281 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @max(i32 %279, i32 %286)
  %288 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %289 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %288, i32 0, i32 2
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  store i32 %287, i32* %293, align 4
  %294 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %295 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %302 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %300, i32* %306, align 4
  br label %307

307:                                              ; preds = %272, %269
  %308 = load i32, i32* %10, align 4
  %309 = and i32 %308, 1
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %330

311:                                              ; preds = %307
  %312 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %313 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @NAND_BBT_WRITE, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %330

318:                                              ; preds = %311
  %319 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %320 = load i32*, i32** %6, align 8
  %321 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %322 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %323 = load i32, i32* %12, align 4
  %324 = call i32 @write_bbt(%struct.nand_chip* %319, i32* %320, %struct.nand_bbt_descr* %321, %struct.nand_bbt_descr* %322, i32 %323)
  store i32 %324, i32* %13, align 4
  %325 = load i32, i32* %13, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %318
  %328 = load i32, i32* %13, align 4
  store i32 %328, i32* %4, align 4
  br label %361

329:                                              ; preds = %318
  br label %330

330:                                              ; preds = %329, %311, %307
  %331 = load i32, i32* %10, align 4
  %332 = and i32 %331, 2
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %356

334:                                              ; preds = %330
  %335 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %336 = icmp ne %struct.nand_bbt_descr* %335, null
  br i1 %336, label %337, label %356

337:                                              ; preds = %334
  %338 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %339 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @NAND_BBT_WRITE, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %337
  %345 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %346 = load i32*, i32** %6, align 8
  %347 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %348 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %349 = load i32, i32* %12, align 4
  %350 = call i32 @write_bbt(%struct.nand_chip* %345, i32* %346, %struct.nand_bbt_descr* %347, %struct.nand_bbt_descr* %348, i32 %349)
  store i32 %350, i32* %13, align 4
  %351 = load i32, i32* %13, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %344
  %354 = load i32, i32* %13, align 4
  store i32 %354, i32* %4, align 4
  br label %361

355:                                              ; preds = %344
  br label %356

356:                                              ; preds = %355, %337, %334, %330
  br label %357

357:                                              ; preds = %356, %244, %216, %173
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %8, align 4
  br label %37

360:                                              ; preds = %37
  store i32 0, i32* %4, align 4
  br label %361

361:                                              ; preds = %360, %353, %327
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local i32 @nanddev_ntargets(i32*) #1

declare dso_local i32 @create_bbt(%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, i32) #1

declare dso_local i32 @read_abs_bbt(%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, i32) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @write_bbt(%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
