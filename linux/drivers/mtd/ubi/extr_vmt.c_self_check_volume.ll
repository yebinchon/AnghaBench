; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_self_check_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_self_check_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32, i64, i32, %struct.TYPE_2__*, %struct.ubi_volume** }
%struct.TYPE_2__ = type { i32, i8*, i64, i32, i32, i32, i32 }
%struct.ubi_volume = type { i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"no volume info, but volume exists\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"negative values\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bad alignment\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"alignment is not multiple of min I/O unit\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"bad data_pad, has to be %lld\00", align 1
@UBI_DYNAMIC_VOLUME = common dso_local global i32 0, align 4
@UBI_STATIC_VOLUME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"bad vol_type\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"update marker and corrupted simultaneously\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"too large reserved_pebs\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"bad usable_leb_size, has to be %lld\00", align 1
@UBI_VOL_NAME_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"too long volume name, max is %d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"bad name_len %lld\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"corrupted dynamic volume\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"bad used_ebs\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"bad last_eb_bytes\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"bad used_bytes\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"bad skip_check\00", align 1
@UBI_VID_DYNAMIC = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"volume info is different\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"self-check failed for volume %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @self_check_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_check_volume(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubi_volume*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vol_id2idx(%struct.ubi_device* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %20 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %19, i32 0, i32 3
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %23 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 5
  %33 = load %struct.ubi_volume**, %struct.ubi_volume*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %33, i64 %35
  %37 = load %struct.ubi_volume*, %struct.ubi_volume** %36, align 8
  store %struct.ubi_volume* %37, %struct.ubi_volume** %13, align 8
  %38 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %39 = icmp ne %struct.ubi_volume* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %45 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %441

46:                                               ; preds = %40
  %47 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %48 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %47, i32 0, i32 3
  %49 = call i32 @spin_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %465

50:                                               ; preds = %2
  %51 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %52 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %57 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %62 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %67 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %60, %55, %50
  %71 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %72 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %441

73:                                               ; preds = %65
  %74 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %75 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %78 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %83 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %73
  %87 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %88 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %441

89:                                               ; preds = %81
  %90 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %91 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %94 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = and i64 %92, %97
  store i64 %98, i64* %14, align 8
  %99 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %100 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %89
  %104 = load i64, i64* %14, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %108 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %441

109:                                              ; preds = %103, %89
  %110 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %111 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %114 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = srem i64 %112, %115
  store i64 %116, i64* %14, align 8
  %117 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %118 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %14, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %109
  %123 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %124)
  br label %441

126:                                              ; preds = %109
  %127 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %128 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @UBI_DYNAMIC_VOLUME, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %134 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @UBI_STATIC_VOLUME, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %140 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %441

141:                                              ; preds = %132, %126
  %142 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %143 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %148 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %147, i32 0, i32 12
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %153 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %152, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %441

154:                                              ; preds = %146, %141
  %155 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %156 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %159 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %164 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %441

165:                                              ; preds = %154
  %166 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %167 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %170 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %168, %171
  store i64 %172, i64* %14, align 8
  %173 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %174 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %177 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %180 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %178, %181
  %183 = icmp ne i64 %175, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %165
  %185 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %186 = load i64, i64* %14, align 8
  %187 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %185, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i64 %186)
  br label %441

188:                                              ; preds = %165
  %189 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %190 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %196 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %197 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %196)
  br label %441

198:                                              ; preds = %188
  %199 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %200 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %203 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  %206 = call i64 @strnlen(i32 %201, i32 %205)
  store i64 %206, i64* %14, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %209 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = icmp ne i64 %207, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %198
  %214 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %215 = load i64, i64* %14, align 8
  %216 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %214, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %215)
  br label %441

217:                                              ; preds = %198
  %218 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %219 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %222 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %221, i32 0, i32 6
  %223 = load i64, i64* %222, align 8
  %224 = mul nsw i64 %220, %223
  store i64 %224, i64* %14, align 8
  %225 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %226 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @UBI_DYNAMIC_VOLUME, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %278

230:                                              ; preds = %217
  %231 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %232 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %231, i32 0, i32 12
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %237 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %236, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %441

238:                                              ; preds = %230
  %239 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %240 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %239, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %243 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %241, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %238
  %247 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %248 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %247, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %441

249:                                              ; preds = %238
  %250 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %251 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %250, i32 0, i32 8
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %254 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %253, i32 0, i32 6
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %252, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %259 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %258, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %441

260:                                              ; preds = %249
  %261 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %262 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %261, i32 0, i32 9
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %14, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %260
  %267 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %268 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %441

269:                                              ; preds = %260
  %270 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %271 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %270, i32 0, i32 11
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %276 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %275, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %441

277:                                              ; preds = %269
  br label %335

278:                                              ; preds = %217
  %279 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %280 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = icmp slt i64 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %285 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %284, i32 0, i32 7
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %288 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp sgt i64 %286, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %283, %278
  %292 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %293 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %441

294:                                              ; preds = %283
  %295 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %296 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %295, i32 0, i32 8
  %297 = load i64, i64* %296, align 8
  %298 = icmp slt i64 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %294
  %300 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %301 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %300, i32 0, i32 8
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %304 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %303, i32 0, i32 6
  %305 = load i64, i64* %304, align 8
  %306 = icmp sgt i64 %302, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %299, %294
  %308 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %309 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %308, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %441

310:                                              ; preds = %299
  %311 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %312 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %311, i32 0, i32 9
  %313 = load i64, i64* %312, align 8
  %314 = icmp slt i64 %313, 0
  br i1 %314, label %331, label %315

315:                                              ; preds = %310
  %316 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %317 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %316, i32 0, i32 9
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* %14, align 8
  %320 = icmp sgt i64 %318, %319
  br i1 %320, label %331, label %321

321:                                              ; preds = %315
  %322 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %323 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %322, i32 0, i32 9
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %14, align 8
  %326 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %327 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = sub nsw i64 %325, %328
  %330 = icmp slt i64 %324, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %321, %315, %310
  %332 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %333 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %332, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %441

334:                                              ; preds = %321
  br label %335

335:                                              ; preds = %334, %277
  %336 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %337 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %336, i32 0, i32 4
  %338 = load %struct.TYPE_2__*, %struct.TYPE_2__** %337, align 8
  %339 = load i32, i32* %5, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @be32_to_cpu(i32 %343)
  store i32 %344, i32* %8, align 4
  %345 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %346 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %345, i32 0, i32 4
  %347 = load %struct.TYPE_2__*, %struct.TYPE_2__** %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @be32_to_cpu(i32 %352)
  store i32 %353, i32* %9, align 4
  %354 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %355 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %354, i32 0, i32 4
  %356 = load %struct.TYPE_2__*, %struct.TYPE_2__** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @be16_to_cpu(i32 %361)
  store i32 %362, i32* %11, align 4
  %363 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %364 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %363, i32 0, i32 4
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** %364, align 8
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  store i32 %370, i32* %12, align 4
  %371 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %372 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %371, i32 0, i32 4
  %373 = load %struct.TYPE_2__*, %struct.TYPE_2__** %372, align 8
  %374 = load i32, i32* %5, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 1
  %378 = load i8*, i8** %377, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 0
  store i8* %379, i8** %15, align 8
  %380 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %381 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %380, i32 0, i32 4
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 2
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @UBI_VID_DYNAMIC, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %335
  %391 = load i32, i32* @UBI_DYNAMIC_VOLUME, align 4
  store i32 %391, i32* %10, align 4
  br label %394

392:                                              ; preds = %335
  %393 = load i32, i32* @UBI_STATIC_VOLUME, align 4
  store i32 %393, i32* %10, align 4
  br label %394

394:                                              ; preds = %392, %390
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %398 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %396, %399
  br i1 %400, label %434, label %401

401:                                              ; preds = %394
  %402 = load i32, i32* %9, align 4
  %403 = sext i32 %402 to i64
  %404 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %405 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %404, i32 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %403, %406
  br i1 %407, label %434, label %408

408:                                              ; preds = %401
  %409 = load i32, i32* %12, align 4
  %410 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %411 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %410, i32 0, i32 5
  %412 = load i32, i32* %411, align 8
  %413 = icmp ne i32 %409, %412
  br i1 %413, label %434, label %414

414:                                              ; preds = %408
  %415 = load i32, i32* %10, align 4
  %416 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %417 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %415, %418
  br i1 %419, label %434, label %420

420:                                              ; preds = %414
  %421 = load i32, i32* %11, align 4
  %422 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %423 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = icmp ne i32 %421, %424
  br i1 %425, label %434, label %426

426:                                              ; preds = %420
  %427 = load i8*, i8** %15, align 8
  %428 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %429 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %428, i32 0, i32 10
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* %11, align 4
  %432 = call i64 @strncmp(i8* %427, i32 %430, i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %426, %420, %414, %408, %401, %394
  %435 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %436 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %435, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %441

437:                                              ; preds = %426
  %438 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %439 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %438, i32 0, i32 3
  %440 = call i32 @spin_unlock(i32* %439)
  store i32 0, i32* %3, align 4
  br label %465

441:                                              ; preds = %434, %331, %307, %291, %274, %266, %257, %246, %235, %213, %194, %184, %162, %151, %138, %122, %106, %86, %70, %43
  %442 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %443 = load i32, i32* %5, align 4
  %444 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %442, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %443)
  %445 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %446 = icmp ne %struct.ubi_volume* %445, null
  br i1 %446, label %447, label %450

447:                                              ; preds = %441
  %448 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %449 = call i32 @ubi_dump_vol_info(%struct.ubi_volume* %448)
  br label %450

450:                                              ; preds = %447, %441
  %451 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %452 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %451, i32 0, i32 4
  %453 = load %struct.TYPE_2__*, %struct.TYPE_2__** %452, align 8
  %454 = load i32, i32* %5, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %453, i64 %455
  %457 = load i32, i32* %5, align 4
  %458 = call i32 @ubi_dump_vtbl_record(%struct.TYPE_2__* %456, i32 %457)
  %459 = call i32 (...) @dump_stack()
  %460 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %461 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %460, i32 0, i32 3
  %462 = call i32 @spin_unlock(i32* %461)
  %463 = load i32, i32* @EINVAL, align 4
  %464 = sub nsw i32 0, %463
  store i32 %464, i32* %3, align 4
  br label %465

465:                                              ; preds = %450, %437, %46
  %466 = load i32, i32* %3, align 4
  ret i32 %466
}

declare dso_local i32 @vol_id2idx(%struct.ubi_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @strnlen(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @ubi_dump_vol_info(%struct.ubi_volume*) #1

declare dso_local i32 @ubi_dump_vtbl_record(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
