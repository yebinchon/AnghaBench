; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_vtbl_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_vtbl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32 }
%struct.ubi_vtbl_record = type { i32, i32, i8*, i32, i32, i32, i32, i32 }

@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VTBL_RECORD_SIZE_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bad CRC at record %u: %#08x, not %#08x\00", align 1
@empty_vtbl_record = common dso_local global i32 0, align 4
@UBI_VTBL_RECORD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bad data_pad, has to be %d\00", align 1
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"too large reserved_pebs %d, good PEBs %d\00", align 1
@UBI_VOL_NAME_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"volumes %d and %d have the same name \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"volume table check failed: record %d, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_vtbl_record*)* @vtbl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtbl_check(%struct.ubi_device* %0, %struct.ubi_vtbl_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_vtbl_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_vtbl_record* %1, %struct.ubi_vtbl_record** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %220, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %223

25:                                               ; preds = %19
  %26 = call i32 (...) @cond_resched()
  %27 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %27, i64 %29
  %31 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @be32_to_cpu(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %34, i64 %36
  %38 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %41, i64 %43
  %45 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @be32_to_cpu(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %48, i64 %50
  %52 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %54, i64 %56
  %58 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %60, i64 %62
  %64 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @be16_to_cpu(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %67, i64 %69
  %71 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8* %73, i8** %16, align 8
  %74 = load i32, i32* @UBI_CRC32_INIT, align 4
  %75 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %75, i64 %77
  %79 = load i32, i32* @UBI_VTBL_RECORD_SIZE_CRC, align 4
  %80 = call i32 @crc32(i32 %74, %struct.ubi_vtbl_record* %78, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %81, i64 %83
  %85 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be32_to_cpu(i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %25
  %91 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %94, i64 %96
  %98 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be32_to_cpu(i32 %99)
  %101 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93, i32 %100)
  %102 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %102, i64 %104
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ubi_dump_vtbl_record(%struct.ubi_vtbl_record* %105, i32 %106)
  store i32 1, i32* %3, align 4
  br label %324

108:                                              ; preds = %25
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %112, i64 %114
  %116 = load i32, i32* @UBI_VTBL_RECORD_SIZE, align 4
  %117 = call i64 @memcmp(%struct.ubi_vtbl_record* %115, i32* @empty_vtbl_record, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 2, i32* %14, align 4
  br label %311

120:                                              ; preds = %111
  br label %220

121:                                              ; preds = %108
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130, %127, %124, %121
  store i32 3, i32* %14, align 4
  br label %311

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %137 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %134
  store i32 4, i32* %14, align 4
  br label %311

144:                                              ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %147 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = and i32 %145, %149
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %144
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 5, i32* %14, align 4
  br label %311

157:                                              ; preds = %153, %144
  %158 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %159 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = srem i32 %160, %161
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  store i32 6, i32* %14, align 4
  br label %311

170:                                              ; preds = %157
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @UBI_VID_STATIC, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 7, i32* %14, align 4
  br label %311

179:                                              ; preds = %174, %170
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 8, i32* %14, align 4
  br label %311

186:                                              ; preds = %182, %179
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %189 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %187, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %196 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %193, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %197)
  store i32 9, i32* %14, align 4
  br label %311

199:                                              ; preds = %186
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 10, i32* %14, align 4
  br label %311

204:                                              ; preds = %199
  %205 = load i8*, i8** %16, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  store i32 11, i32* %14, align 4
  br label %311

211:                                              ; preds = %204
  %212 = load i32, i32* %12, align 4
  %213 = load i8*, i8** %16, align 8
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 1
  %216 = call i32 @strnlen(i8* %213, i32 %215)
  %217 = icmp ne i32 %212, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  store i32 12, i32* %14, align 4
  br label %311

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %120
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %19

223:                                              ; preds = %19
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %307, %223
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %227 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 1
  %230 = icmp slt i32 %225, %229
  br i1 %230, label %231, label %310

231:                                              ; preds = %224
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %303, %231
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %237 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %306

240:                                              ; preds = %234
  %241 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %241, i64 %243
  %245 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @be16_to_cpu(i32 %246)
  store i32 %247, i32* %17, align 4
  %248 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %248, i64 %250
  %252 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @be16_to_cpu(i32 %253)
  store i32 %254, i32* %18, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %302

257:                                              ; preds = %240
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %18, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %302

261:                                              ; preds = %257
  %262 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %262, i64 %264
  %266 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %268, i64 %270
  %272 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* %17, align 4
  %275 = call i32 @strncmp(i8* %267, i8* %273, i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %302, label %277

277:                                              ; preds = %261
  %278 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %7, align 4
  %281 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %281, i64 %283
  %285 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %278, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %279, i32 %280, i8* %286)
  %288 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %288, i64 %290
  %292 = load i32, i32* %6, align 4
  %293 = call i32 @ubi_dump_vtbl_record(%struct.ubi_vtbl_record* %291, i32 %292)
  %294 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %294, i64 %296
  %298 = load i32, i32* %7, align 4
  %299 = call i32 @ubi_dump_vtbl_record(%struct.ubi_vtbl_record* %297, i32 %298)
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %324

302:                                              ; preds = %261, %257, %240
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %7, align 4
  br label %234

306:                                              ; preds = %234
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %6, align 4
  br label %224

310:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %324

311:                                              ; preds = %218, %210, %203, %192, %185, %178, %166, %156, %143, %133, %119
  %312 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %14, align 4
  %315 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %312, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %313, i32 %314)
  %316 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %316, i64 %318
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @ubi_dump_vtbl_record(%struct.ubi_vtbl_record* %319, i32 %320)
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %3, align 4
  br label %324

324:                                              ; preds = %311, %310, %277, %90
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @crc32(i32, %struct.ubi_vtbl_record*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @ubi_dump_vtbl_record(%struct.ubi_vtbl_record*, i32) #1

declare dso_local i64 @memcmp(%struct.ubi_vtbl_record*, i32*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
