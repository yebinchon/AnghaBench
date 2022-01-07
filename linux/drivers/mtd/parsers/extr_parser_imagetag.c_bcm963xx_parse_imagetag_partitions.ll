; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_parser_imagetag.c_bcm963xx_parse_imagetag_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_parser_imagetag.c_bcm963xx_parse_imagetag_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.mtd_partition = type { i8*, i32, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.bcm_tag = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@BCM963XX_EXTENDED_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid rootfs address: %*ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid kernel address: %*ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid kernel length: %*ph\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid total length: %*ph\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Partition %d is %s offset %llx and length %llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Spare partition is offset %x and length %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @bcm963xx_parse_imagetag_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm963xx_parse_imagetag_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm_tag*, align 8
  %11 = alloca %struct.mtd_partition*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.bcm_tag* null, %struct.bcm_tag** %10, align 8
  store i32 0, i32* %22, align 4
  %25 = call %struct.bcm_tag* @vmalloc(i32 16)
  store %struct.bcm_tag* %25, %struct.bcm_tag** %10, align 8
  %26 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %27 = icmp ne %struct.bcm_tag* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %305

31:                                               ; preds = %3
  %32 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %33 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %34 = call i32 @bcm963xx_read_imagetag(%struct.mtd_info* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, %struct.bcm_tag* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %146, label %37

37:                                               ; preds = %31
  %38 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %39 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @STR_NULL_TERMINATE(i32 %40)
  %42 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %43 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @kstrtouint(i32 %44, i32 10, i32* %13)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @BCM963XX_EXTENDED_SIZE, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %37
  %52 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %53 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %54)
  br label %296

56:                                               ; preds = %47
  %57 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %58 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @STR_NULL_TERMINATE(i32 %59)
  %61 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %62 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @kstrtouint(i32 %63, i32 10, i32* %14)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @BCM963XX_EXTENDED_SIZE, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66, %56
  %71 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %72 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 %73)
  br label %296

75:                                               ; preds = %66
  %76 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %77 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @STR_NULL_TERMINATE(i32 %78)
  %80 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %81 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @kstrtouint(i32 %82, i32 10, i32* %18)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %87 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 %88)
  br label %296

90:                                               ; preds = %75
  %91 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %92 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @STR_NULL_TERMINATE(i32 %93)
  %95 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %96 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @kstrtouint(i32 %97, i32 10, i32* %20)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %102 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 %103)
  br label %296

105:                                              ; preds = %90
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = sub i64 %111, 16
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %16, align 4
  br label %119

114:                                              ; preds = %105
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = sub i64 %116, 16
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %16, align 4
  %122 = sub i32 %120, %121
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sub i32 %123, %124
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %128 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @roundup(i32 %126, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub i32 %135, %136
  store i32 %137, i32* %17, align 4
  store i32 1, i32* %22, align 4
  br label %145

138:                                              ; preds = %119
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %18, align 4
  %141 = add i32 %139, %140
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sub i32 %142, %143
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %138, %134
  br label %147

146:                                              ; preds = %31
  br label %296

147:                                              ; preds = %145
  %148 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %149 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = sub i32 %150, %151
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ugt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %155, %147
  %159 = load i32, i32* %18, align 4
  %160 = icmp ugt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 16, %166
  %168 = load i32, i32* %8, align 4
  %169 = mul nsw i32 10, %168
  %170 = sext i32 %169 to i64
  %171 = add i64 %167, %170
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call %struct.mtd_partition* @kzalloc(i32 %172, i32 %173)
  store %struct.mtd_partition* %174, %struct.mtd_partition** %11, align 8
  %175 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %176 = icmp ne %struct.mtd_partition* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %164
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %12, align 4
  br label %296

180:                                              ; preds = %164
  %181 = load i32, i32* %18, align 4
  %182 = icmp ugt i32 %181, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %180
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %17, align 4
  %186 = icmp ugt i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* %22, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %23, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %23, align 4
  br label %193

193:                                              ; preds = %190, %187, %183
  %194 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %194, i64 %196
  %198 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %197, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %198, align 8
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %201 = load i32, i32* %23, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %200, i64 %202
  %204 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %203, i32 0, i32 1
  store i32 %199, i32* %204, align 8
  %205 = load i32, i32* %18, align 4
  %206 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %207 = load i32, i32* %23, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %206, i64 %208
  %210 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %209, i32 0, i32 2
  store i32 %205, i32* %210, align 4
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %193, %180
  %214 = load i32, i32* %17, align 4
  %215 = icmp ugt i32 %214, 0
  br i1 %215, label %216, label %261

216:                                              ; preds = %213
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %24, align 4
  %218 = load i32, i32* %18, align 4
  %219 = icmp ugt i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* %22, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* %24, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %24, align 4
  br label %226

226:                                              ; preds = %223, %220, %216
  %227 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %228 = load i32, i32* %24, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %227, i64 %229
  %231 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %230, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %231, align 8
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %234 = load i32, i32* %24, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %233, i64 %235
  %237 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %236, i32 0, i32 1
  store i32 %232, i32* %237, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %240 = load i32, i32* %24, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %239, i64 %241
  %243 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %242, i32 0, i32 2
  store i32 %238, i32* %243, align 4
  %244 = load i32, i32* %19, align 4
  %245 = icmp ugt i32 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %226
  %247 = load i32, i32* %22, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %19, align 4
  %251 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %252 = load i32, i32* %24, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %251, i64 %253
  %255 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = add i32 %256, %250
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %249, %246, %226
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %258, %213
  store i32 0, i32* %21, align 4
  br label %262

262:                                              ; preds = %287, %261
  %263 = load i32, i32* %21, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %262
  %267 = load i32, i32* %21, align 4
  %268 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %269 = load i32, i32* %21, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %268, i64 %270
  %272 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %275 = load i32, i32* %21, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %274, i64 %276
  %278 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %281 = load i32, i32* %21, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %280, i64 %282
  %284 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %267, i8* %273, i32 %279, i32 %285)
  br label %287

287:                                              ; preds = %266
  %288 = load i32, i32* %21, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %21, align 4
  br label %262

290:                                              ; preds = %262
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %19, align 4
  %293 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %291, i32 %292)
  %294 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %295 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %294, %struct.mtd_partition** %295, align 8
  store i32 0, i32* %12, align 4
  br label %296

296:                                              ; preds = %290, %177, %146, %100, %85, %70, %51
  %297 = load %struct.bcm_tag*, %struct.bcm_tag** %10, align 8
  %298 = call i32 @vfree(%struct.bcm_tag* %297)
  %299 = load i32, i32* %12, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* %12, align 4
  store i32 %302, i32* %4, align 4
  br label %305

303:                                              ; preds = %296
  %304 = load i32, i32* %8, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %303, %301, %28
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local %struct.bcm_tag* @vmalloc(i32) #1

declare dso_local i32 @bcm963xx_read_imagetag(%struct.mtd_info*, i8*, i32, %struct.bcm_tag*) #1

declare dso_local i32 @STR_NULL_TERMINATE(i32) #1

declare dso_local i64 @kstrtouint(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @vfree(%struct.bcm_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
