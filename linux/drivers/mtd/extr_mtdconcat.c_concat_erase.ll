; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.erase_info = type { i32, i32, i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.mtd_erase_region_info* }
%struct.mtd_erase_region_info = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTD_FAIL_ADDR_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @concat_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.mtd_concat*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.erase_info*, align 8
  %13 = alloca %struct.mtd_erase_region_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %14)
  store %struct.mtd_concat* %15, %struct.mtd_concat** %6, align 8
  store i8* null, i8** %11, align 8
  %16 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %17 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %2
  %22 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %23 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %26 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %313

35:                                               ; preds = %21
  %36 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %37 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %40 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %313

49:                                               ; preds = %35
  br label %157

50:                                               ; preds = %2
  %51 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %52 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %53, align 8
  store %struct.mtd_erase_region_info* %54, %struct.mtd_erase_region_info** %13, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %77, %50
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %58 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %64 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %67, i64 %69
  %71 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %66, %72
  br label %74

74:                                               ; preds = %62, %55
  %75 = phi i1 [ false, %55 ], [ %73, %62 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %55

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %87 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %89, i64 %91
  %93 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = and i32 %88, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85, %80
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %313

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %128, %101
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %105 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %102
  %110 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %111 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %114 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = sext i32 %116 to i64
  %118 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %118, i64 %120
  %122 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %117, %123
  br label %125

125:                                              ; preds = %109, %102
  %126 = phi i1 [ false, %102 ], [ %124, %109 ]
  br i1 %126, label %127, label %131

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %102

131:                                              ; preds = %125
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %131
  %137 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %138 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %141 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %144, i64 %146
  %148 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = and i32 %143, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %136, %131
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %313

156:                                              ; preds = %136
  br label %157

157:                                              ; preds = %156, %49
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call %struct.erase_info* @kmalloc(i32 16, i32 %158)
  store %struct.erase_info* %159, %struct.erase_info** %12, align 8
  %160 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %161 = icmp ne %struct.erase_info* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %313

165:                                              ; preds = %157
  %166 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %167 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %168 = bitcast %struct.erase_info* %166 to i8*
  %169 = bitcast %struct.erase_info* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 16, i1 false)
  %170 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %171 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  store i8* %174, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %175

175:                                              ; preds = %214, %165
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %178 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %217

181:                                              ; preds = %175
  %182 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %183 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %182, i32 0, i32 1
  %184 = load %struct.mtd_info**, %struct.mtd_info*** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %184, i64 %186
  %188 = load %struct.mtd_info*, %struct.mtd_info** %187, align 8
  store %struct.mtd_info* %188, %struct.mtd_info** %7, align 8
  %189 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %190 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %193 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = icmp sle i64 %191, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %181
  %198 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %199 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %202 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %204, %200
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 8
  %207 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %208 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = getelementptr i8, i8* %210, i64 %209
  store i8* %211, i8** %11, align 8
  br label %213

212:                                              ; preds = %181
  br label %217

213:                                              ; preds = %197
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %175

217:                                              ; preds = %212, %175
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %220 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %218, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @BUG_ON(i32 %223)
  store i32 0, i32* %9, align 4
  br label %225

225:                                              ; preds = %306, %217
  %226 = load i8*, i8** %10, align 8
  %227 = icmp ugt i8* %226, null
  br i1 %227, label %228, label %309

228:                                              ; preds = %225
  %229 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %230 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %229, i32 0, i32 1
  %231 = load %struct.mtd_info**, %struct.mtd_info*** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %231, i64 %233
  %235 = load %struct.mtd_info*, %struct.mtd_info** %234, align 8
  store %struct.mtd_info* %235, %struct.mtd_info** %7, align 8
  %236 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %237 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i8*, i8** %10, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr i8, i8* %239, i64 %240
  %242 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %243 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to i8*
  %246 = icmp ugt i8* %241, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %228
  %248 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %249 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %252 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = sub nsw i64 %250, %254
  %256 = trunc i64 %255 to i32
  %257 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %258 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  br label %264

259:                                              ; preds = %228
  %260 = load i8*, i8** %10, align 8
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %263 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  br label %264

264:                                              ; preds = %259, %247
  %265 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %266 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i8*, i8** %10, align 8
  %269 = sext i32 %267 to i64
  %270 = sub i64 0, %269
  %271 = getelementptr i8, i8* %268, i64 %270
  store i8* %271, i8** %10, align 8
  %272 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %273 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %274 = call i32 @mtd_erase(%struct.mtd_info* %272, %struct.erase_info* %273)
  store i32 %274, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %298

276:                                              ; preds = %264
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  %280 = icmp eq i32 %277, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @BUG_ON(i32 %281)
  %283 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %284 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @MTD_FAIL_ADDR_UNKNOWN, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %276
  %289 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %290 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load i8*, i8** %11, align 8
  %293 = getelementptr i8, i8* %292, i64 %291
  %294 = ptrtoint i8* %293 to i64
  %295 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %296 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %295, i32 0, i32 2
  store i64 %294, i64* %296, align 8
  br label %297

297:                                              ; preds = %288, %276
  br label %309

298:                                              ; preds = %264
  %299 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %300 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %299, i32 0, i32 0
  store i32 0, i32* %300, align 8
  %301 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %302 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i8*, i8** %11, align 8
  %305 = getelementptr i8, i8* %304, i64 %303
  store i8* %305, i8** %11, align 8
  br label %306

306:                                              ; preds = %298
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %8, align 4
  br label %225

309:                                              ; preds = %297, %225
  %310 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %311 = call i32 @kfree(%struct.erase_info* %310)
  %312 = load i32, i32* %9, align 4
  store i32 %312, i32* %3, align 4
  br label %313

313:                                              ; preds = %309, %162, %153, %98, %46, %32
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local %struct.erase_info* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mtd_erase(%struct.mtd_info*, %struct.erase_info*) #1

declare dso_local i32 @kfree(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
