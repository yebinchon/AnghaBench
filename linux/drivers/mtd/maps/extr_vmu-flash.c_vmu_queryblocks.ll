; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_queryblocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_queryblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapleq = type { %struct.TYPE_2__*, %struct.maple_device* }
%struct.TYPE_2__ = type { i64 }
%struct.maple_device = type { i32, i32, i32 }
%struct.memcard = type { i16, i16, i64, i32, i64, %struct.mtd_info*, %struct.vmupart* }
%struct.mtd_info = type { i32, i32, i32, i32, i32, %struct.vmu_cache*, i32, i32, i32, i32, %struct.vmu_cache* }
%struct.vmu_cache = type { i64, %struct.maple_device* }
%struct.vmupart = type { i16, i16, i32, %struct.vmu_cache*, %struct.vmu_cache* }
%struct.mdev_part = type { i64, %struct.maple_device* }

@.str = private unnamed_addr constant [71 x i8] c"VMU device at partition %d has %d user blocks with a root block at %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"vmu%d.%d.%d\00", align 1
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@MTD_NO_ERASE = common dso_local global i32 0, align 4
@vmu_flash_write = common dso_local global i32 0, align 4
@vmu_flash_read = common dso_local global i32 0, align 4
@vmu_flash_sync = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MAPLE_FUNC_MEMCARD = common dso_local global i32 0, align 4
@MAPLE_COMMAND_GETMINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Could not register maple device at (%d, %d)error is 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapleq*)* @vmu_queryblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmu_queryblocks(%struct.mapleq* %0) #0 {
  %2 = alloca %struct.mapleq*, align 8
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.memcard*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmu_cache*, align 8
  %8 = alloca %struct.mdev_part*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.vmupart*, align 8
  %11 = alloca i32, align 4
  store %struct.mapleq* %0, %struct.mapleq** %2, align 8
  %12 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %13 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %12, i32 0, i32 1
  %14 = load %struct.maple_device*, %struct.maple_device** %13, align 8
  store %struct.maple_device* %14, %struct.maple_device** %3, align 8
  %15 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %16 = call %struct.memcard* @maple_get_drvdata(%struct.maple_device* %15)
  store %struct.memcard* %16, %struct.memcard** %5, align 8
  %17 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %18 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i16*
  store i16* %22, i16** %4, align 8
  %23 = load i16*, i16** %4, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 12
  %25 = load i16, i16* %24, align 2
  %26 = load %struct.memcard*, %struct.memcard** %5, align 8
  %27 = getelementptr inbounds %struct.memcard, %struct.memcard* %26, i32 0, i32 0
  store i16 %25, i16* %27, align 8
  %28 = load i16*, i16** %4, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 6
  %30 = load i16, i16* %29, align 2
  %31 = load %struct.memcard*, %struct.memcard** %5, align 8
  %32 = getelementptr inbounds %struct.memcard, %struct.memcard* %31, i32 0, i32 1
  store i16 %30, i16* %32, align 2
  %33 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %34 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %33, i32 0, i32 2
  %35 = load %struct.memcard*, %struct.memcard** %5, align 8
  %36 = getelementptr inbounds %struct.memcard, %struct.memcard* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.memcard*, %struct.memcard** %5, align 8
  %39 = getelementptr inbounds %struct.memcard, %struct.memcard* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 8
  %41 = load %struct.memcard*, %struct.memcard** %5, align 8
  %42 = getelementptr inbounds %struct.memcard, %struct.memcard* %41, i32 0, i32 1
  %43 = load i16, i16* %42, align 2
  %44 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %37, i16 zeroext %40, i16 zeroext %43)
  %45 = load %struct.memcard*, %struct.memcard** %5, align 8
  %46 = getelementptr inbounds %struct.memcard, %struct.memcard* %45, i32 0, i32 6
  %47 = load %struct.vmupart*, %struct.vmupart** %46, align 8
  %48 = load %struct.memcard*, %struct.memcard** %5, align 8
  %49 = getelementptr inbounds %struct.memcard, %struct.memcard* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %47, i64 %50
  store %struct.vmupart* %51, %struct.vmupart** %10, align 8
  %52 = load %struct.memcard*, %struct.memcard** %5, align 8
  %53 = getelementptr inbounds %struct.memcard, %struct.memcard* %52, i32 0, i32 0
  %54 = load i16, i16* %53, align 8
  %55 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %56 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %55, i32 0, i32 0
  store i16 %54, i16* %56, align 8
  %57 = load %struct.memcard*, %struct.memcard** %5, align 8
  %58 = getelementptr inbounds %struct.memcard, %struct.memcard* %57, i32 0, i32 1
  %59 = load i16, i16* %58, align 2
  %60 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %61 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %60, i32 0, i32 1
  store i16 %59, i16* %61, align 2
  %62 = load %struct.memcard*, %struct.memcard** %5, align 8
  %63 = getelementptr inbounds %struct.memcard, %struct.memcard* %62, i32 0, i32 1
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = add nsw i32 %65, 1
  %67 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %68 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kmalloc(i32 12, i32 %69)
  %71 = bitcast i8* %70 to %struct.vmu_cache*
  %72 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %73 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %72, i32 0, i32 3
  store %struct.vmu_cache* %71, %struct.vmu_cache** %73, align 8
  %74 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %75 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %74, i32 0, i32 3
  %76 = load %struct.vmu_cache*, %struct.vmu_cache** %75, align 8
  %77 = icmp ne %struct.vmu_cache* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %1
  br label %279

79:                                               ; preds = %1
  %80 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %81 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %80, i32 0, i32 3
  %82 = load %struct.vmu_cache*, %struct.vmu_cache** %81, align 8
  %83 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %84 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %87 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.memcard*, %struct.memcard** %5, align 8
  %90 = getelementptr inbounds %struct.memcard, %struct.memcard* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @sprintf(%struct.vmu_cache* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88, i64 %91)
  %93 = load %struct.memcard*, %struct.memcard** %5, align 8
  %94 = getelementptr inbounds %struct.memcard, %struct.memcard* %93, i32 0, i32 5
  %95 = load %struct.mtd_info*, %struct.mtd_info** %94, align 8
  %96 = load %struct.memcard*, %struct.memcard** %5, align 8
  %97 = getelementptr inbounds %struct.memcard, %struct.memcard* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i64 %98
  store %struct.mtd_info* %99, %struct.mtd_info** %9, align 8
  %100 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %101 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %100, i32 0, i32 3
  %102 = load %struct.vmu_cache*, %struct.vmu_cache** %101, align 8
  %103 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %104 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %103, i32 0, i32 10
  store %struct.vmu_cache* %102, %struct.vmu_cache** %104, align 8
  %105 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %106 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %105, i32 0, i32 0
  store i32 8, i32* %106, align 8
  %107 = load i32, i32* @MTD_WRITEABLE, align 4
  %108 = load i32, i32* @MTD_NO_ERASE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %111 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %113 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.memcard*, %struct.memcard** %5, align 8
  %116 = getelementptr inbounds %struct.memcard, %struct.memcard* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %120 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.memcard*, %struct.memcard** %5, align 8
  %122 = getelementptr inbounds %struct.memcard, %struct.memcard* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %125 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @vmu_flash_write, align 4
  %127 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %128 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @vmu_flash_read, align 4
  %130 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %131 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @vmu_flash_sync, align 4
  %133 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %134 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load %struct.memcard*, %struct.memcard** %5, align 8
  %136 = getelementptr inbounds %struct.memcard, %struct.memcard* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %139 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i8* @kmalloc(i32 16, i32 %140)
  %142 = bitcast i8* %141 to %struct.mdev_part*
  store %struct.mdev_part* %142, %struct.mdev_part** %8, align 8
  %143 = load %struct.mdev_part*, %struct.mdev_part** %8, align 8
  %144 = icmp ne %struct.mdev_part* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %79
  br label %243

146:                                              ; preds = %79
  %147 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %148 = load %struct.mdev_part*, %struct.mdev_part** %8, align 8
  %149 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %148, i32 0, i32 1
  store %struct.maple_device* %147, %struct.maple_device** %149, align 8
  %150 = load %struct.memcard*, %struct.memcard** %5, align 8
  %151 = getelementptr inbounds %struct.memcard, %struct.memcard* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.mdev_part*, %struct.mdev_part** %8, align 8
  %154 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.mdev_part*, %struct.mdev_part** %8, align 8
  %156 = bitcast %struct.mdev_part* %155 to %struct.vmu_cache*
  %157 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %158 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %157, i32 0, i32 5
  store %struct.vmu_cache* %156, %struct.vmu_cache** %158, align 8
  %159 = load i32, i32* @THIS_MODULE, align 4
  %160 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %161 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call %struct.vmu_cache* @kzalloc(i32 16, i32 %162)
  store %struct.vmu_cache* %163, %struct.vmu_cache** %7, align 8
  %164 = load %struct.vmu_cache*, %struct.vmu_cache** %7, align 8
  %165 = icmp ne %struct.vmu_cache* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %146
  br label %242

167:                                              ; preds = %146
  %168 = load %struct.vmu_cache*, %struct.vmu_cache** %7, align 8
  %169 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %170 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %169, i32 0, i32 4
  store %struct.vmu_cache* %168, %struct.vmu_cache** %170, align 8
  %171 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %172 = call i32 @mtd_device_register(%struct.mtd_info* %171, i32* null, i32 0)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %203

176:                                              ; preds = %167
  %177 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %178 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %179 = call i32 @maple_getcond_callback(%struct.maple_device* %177, void (%struct.mapleq*)* null, i32 0, i32 %178)
  %180 = load %struct.memcard*, %struct.memcard** %5, align 8
  %181 = getelementptr inbounds %struct.memcard, %struct.memcard* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = load %struct.memcard*, %struct.memcard** %5, align 8
  %185 = getelementptr inbounds %struct.memcard, %struct.memcard* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = icmp ult i64 %183, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %176
  %189 = load %struct.memcard*, %struct.memcard** %5, align 8
  %190 = getelementptr inbounds %struct.memcard, %struct.memcard* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = shl i64 %191, 24
  %193 = trunc i64 %192 to i32
  %194 = call i32 @cpu_to_be32(i32 %193)
  store i32 %194, i32* %6, align 4
  %195 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %196 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %197 = call i32 @maple_getcond_callback(%struct.maple_device* %195, void (%struct.mapleq*)* @vmu_queryblocks, i32 0, i32 %196)
  %198 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %199 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %200 = load i32, i32* @MAPLE_COMMAND_GETMINFO, align 4
  %201 = call i32 @maple_add_packet(%struct.maple_device* %198, i32 %199, i32 %200, i32 2, i32* %6)
  br label %202

202:                                              ; preds = %188, %176
  br label %280

203:                                              ; preds = %175
  %204 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %205 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %204, i32 0, i32 2
  %206 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %207 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %210 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @dev_err(i32* %205, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %208, i32 %211, i32 %212)
  store i32 0, i32* %11, align 4
  br label %214

214:                                              ; preds = %238, %203
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = load %struct.memcard*, %struct.memcard** %5, align 8
  %218 = getelementptr inbounds %struct.memcard, %struct.memcard* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ule i64 %216, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %214
  %222 = load %struct.memcard*, %struct.memcard** %5, align 8
  %223 = getelementptr inbounds %struct.memcard, %struct.memcard* %222, i32 0, i32 6
  %224 = load %struct.vmupart*, %struct.vmupart** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %224, i64 %226
  %228 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %227, i32 0, i32 4
  %229 = load %struct.vmu_cache*, %struct.vmu_cache** %228, align 8
  %230 = call i32 @kfree(%struct.vmu_cache* %229)
  %231 = load %struct.memcard*, %struct.memcard** %5, align 8
  %232 = getelementptr inbounds %struct.memcard, %struct.memcard* %231, i32 0, i32 6
  %233 = load %struct.vmupart*, %struct.vmupart** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %233, i64 %235
  %237 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %236, i32 0, i32 4
  store %struct.vmu_cache* null, %struct.vmu_cache** %237, align 8
  br label %238

238:                                              ; preds = %221
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %214

241:                                              ; preds = %214
  br label %242

242:                                              ; preds = %241, %166
  br label %243

243:                                              ; preds = %242, %145
  store i32 0, i32* %11, align 4
  br label %244

244:                                              ; preds = %268, %243
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = load %struct.memcard*, %struct.memcard** %5, align 8
  %248 = getelementptr inbounds %struct.memcard, %struct.memcard* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ule i64 %246, %249
  br i1 %250, label %251, label %271

251:                                              ; preds = %244
  %252 = load %struct.memcard*, %struct.memcard** %5, align 8
  %253 = getelementptr inbounds %struct.memcard, %struct.memcard* %252, i32 0, i32 5
  %254 = load %struct.mtd_info*, %struct.mtd_info** %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %254, i64 %256
  %258 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %257, i32 0, i32 5
  %259 = load %struct.vmu_cache*, %struct.vmu_cache** %258, align 8
  %260 = call i32 @kfree(%struct.vmu_cache* %259)
  %261 = load %struct.memcard*, %struct.memcard** %5, align 8
  %262 = getelementptr inbounds %struct.memcard, %struct.memcard* %261, i32 0, i32 5
  %263 = load %struct.mtd_info*, %struct.mtd_info** %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %263, i64 %265
  %267 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %266, i32 0, i32 5
  store %struct.vmu_cache* null, %struct.vmu_cache** %267, align 8
  br label %268

268:                                              ; preds = %251
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %11, align 4
  br label %244

271:                                              ; preds = %244
  %272 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %273 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %274 = call i32 @maple_getcond_callback(%struct.maple_device* %272, void (%struct.mapleq*)* null, i32 0, i32 %273)
  %275 = load %struct.vmupart*, %struct.vmupart** %10, align 8
  %276 = getelementptr inbounds %struct.vmupart, %struct.vmupart* %275, i32 0, i32 3
  %277 = load %struct.vmu_cache*, %struct.vmu_cache** %276, align 8
  %278 = call i32 @kfree(%struct.vmu_cache* %277)
  br label %279

279:                                              ; preds = %271, %78
  br label %280

280:                                              ; preds = %279, %202
  ret void
}

declare dso_local %struct.memcard* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i16 zeroext, i16 zeroext) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(%struct.vmu_cache*, i8*, i32, i32, i64) #1

declare dso_local %struct.vmu_cache* @kzalloc(i32, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @maple_getcond_callback(%struct.maple_device*, void (%struct.mapleq*)*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vmu_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
