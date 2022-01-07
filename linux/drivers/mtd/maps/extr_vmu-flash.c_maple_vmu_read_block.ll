; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_maple_vmu_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_maple_vmu_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.mdev_part* }
%struct.mdev_part = type { i32, %struct.maple_device* }
%struct.maple_device = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.memcard = type { i32, i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vmu_cache* }
%struct.vmu_cache = type { i32, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"VMU at (%d, %d) - read fails due to lack of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"VMU at (%d, %d) is busy\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@vmu_blockread = common dso_local global i32 0, align 4
@MAPLE_FUNC_MEMCARD = common dso_local global i32 0, align 4
@MAPLE_COMMAND_BREAD = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"VMU read on (%d, %d) interrupted on block 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"VMU read on (%d, %d) timed out on block 0x%X\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.mtd_info*)* @maple_vmu_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maple_vmu_read_block(i32 %0, i8* %1, %struct.mtd_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.memcard*, align 8
  %9 = alloca %struct.mdev_part*, align 8
  %10 = alloca %struct.maple_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vmu_cache*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.mtd_info* %2, %struct.mtd_info** %7, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %15, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load %struct.mdev_part*, %struct.mdev_part** %19, align 8
  store %struct.mdev_part* %20, %struct.mdev_part** %9, align 8
  %21 = load %struct.mdev_part*, %struct.mdev_part** %9, align 8
  %22 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %21, i32 0, i32 1
  %23 = load %struct.maple_device*, %struct.maple_device** %22, align 8
  store %struct.maple_device* %23, %struct.maple_device** %10, align 8
  %24 = load %struct.mdev_part*, %struct.mdev_part** %9, align 8
  %25 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %28 = call %struct.memcard* @maple_get_drvdata(%struct.maple_device* %27)
  store %struct.memcard* %28, %struct.memcard** %8, align 8
  %29 = load %struct.memcard*, %struct.memcard** %8, align 8
  %30 = getelementptr inbounds %struct.memcard, %struct.memcard* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.vmu_cache*, %struct.vmu_cache** %35, align 8
  store %struct.vmu_cache* %36, %struct.vmu_cache** %16, align 8
  %37 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %38 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %40 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %68, label %43

43:                                               ; preds = %3
  %44 = load %struct.memcard*, %struct.memcard** %8, align 8
  %45 = getelementptr inbounds %struct.memcard, %struct.memcard* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  %49 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %50 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %52 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %43
  %56 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %57 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %56, i32 0, i32 2
  %58 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %59 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %62 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %12, align 4
  br label %313

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67, %3
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %305, %68
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.memcard*, %struct.memcard** %8, align 8
  %72 = getelementptr inbounds %struct.memcard, %struct.memcard* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %308

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, 24
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %78, 16
  %80 = or i32 %77, %79
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @cpu_to_be32(i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %85 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %84, i32 0, i32 4
  %86 = call i32 @atomic_read(i32* %85)
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %116

88:                                               ; preds = %75
  %89 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %90 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %93 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %92, i32 0, i32 4
  %94 = call i32 @atomic_read(i32* %93)
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* @HZ, align 4
  %98 = call i32 @wait_event_interruptible_timeout(i32 %91, i32 %96, i32 %97)
  %99 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %100 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %99, i32 0, i32 4
  %101 = call i32 @atomic_read(i32* %100)
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %115

103:                                              ; preds = %88
  %104 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %105 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %104, i32 0, i32 2
  %106 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %107 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %110 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32*, i8*, i32, i32, ...) @dev_notice(i32* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %111)
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  br label %313

115:                                              ; preds = %88
  br label %116

116:                                              ; preds = %115, %75
  %117 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %118 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %117, i32 0, i32 4
  %119 = call i32 @atomic_set(i32* %118, i32 1)
  %120 = load %struct.memcard*, %struct.memcard** %8, align 8
  %121 = getelementptr inbounds %struct.memcard, %struct.memcard* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.memcard*, %struct.memcard** %8, align 8
  %124 = getelementptr inbounds %struct.memcard, %struct.memcard* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %122, %125
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kmalloc(i32 %126, i32 %127)
  store i8* %128, i8** %15, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %12, align 4
  %134 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %135 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %134, i32 0, i32 4
  %136 = call i32 @atomic_set(i32* %135, i32 0)
  br label %313

137:                                              ; preds = %116
  %138 = load i8*, i8** %15, align 8
  %139 = load %struct.memcard*, %struct.memcard** %8, align 8
  %140 = getelementptr inbounds %struct.memcard, %struct.memcard* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %142 = load i32, i32* @vmu_blockread, align 4
  %143 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %144 = call i32 @maple_getcond_callback(%struct.maple_device* %141, i32 %142, i32 0, i32 %143)
  %145 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %146 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %147 = load i32, i32* @MAPLE_COMMAND_BREAD, align 4
  %148 = call i32 @maple_add_packet(%struct.maple_device* %145, i32 %146, i32 %147, i32 2, i32* %17)
  store i32 %148, i32* %12, align 4
  %149 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %150 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %153 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %152, i32 0, i32 4
  %154 = call i32 @atomic_read(i32* %153)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %137
  %157 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %158 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %157, i32 0, i32 4
  %159 = call i32 @atomic_read(i32* %158)
  %160 = icmp eq i32 %159, 2
  br label %161

161:                                              ; preds = %156, %137
  %162 = phi i1 [ true, %137 ], [ %160, %156 ]
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* @HZ, align 4
  %165 = mul nsw i32 %164, 3
  %166 = call i32 @wait_event_interruptible_timeout(i32 %151, i32 %163, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %161
  %170 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %171 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %170, i32 0, i32 4
  %172 = call i32 @atomic_read(i32* %171)
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %188

174:                                              ; preds = %169, %161
  %175 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %176 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %175, i32 0, i32 4
  %177 = call i32 @atomic_read(i32* %176)
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @ENXIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %179, %174
  %183 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %184 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %183, i32 0, i32 4
  %185 = call i32 @atomic_set(i32* %184, i32 0)
  %186 = load %struct.memcard*, %struct.memcard** %8, align 8
  %187 = getelementptr inbounds %struct.memcard, %struct.memcard* %186, i32 0, i32 2
  store i8* null, i8** %187, align 8
  br label %310

188:                                              ; preds = %169
  %189 = load i32, i32* %14, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @ERESTARTSYS, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %246

196:                                              ; preds = %191, %188
  %197 = load %struct.memcard*, %struct.memcard** %8, align 8
  %198 = getelementptr inbounds %struct.memcard, %struct.memcard* %197, i32 0, i32 2
  store i8* null, i8** %198, align 8
  %199 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %200 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %199, i32 0, i32 4
  %201 = call i32 @atomic_set(i32* %200, i32 0)
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %12, align 4
  %204 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %205 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %204, i32 0, i32 3
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = call i32 @list_del_init(i32* %207)
  %209 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %210 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %209, i32 0, i32 3
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @kfree(i8* %213)
  %215 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %216 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %215, i32 0, i32 3
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i8* null, i8** %218, align 8
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* @ERESTARTSYS, align 4
  %221 = sub nsw i32 0, %220
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %196
  %224 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %225 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %224, i32 0, i32 2
  %226 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %227 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %230 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @dev_warn(i32* %225, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %228, i32 %231, i32 %232)
  br label %245

234:                                              ; preds = %196
  %235 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %236 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %235, i32 0, i32 2
  %237 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %238 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %241 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %5, align 4
  %244 = call i32 (i32*, i8*, i32, i32, ...) @dev_notice(i32* %236, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %239, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %234, %223
  br label %310

246:                                              ; preds = %191
  %247 = load i8*, i8** %6, align 8
  %248 = load %struct.memcard*, %struct.memcard** %8, align 8
  %249 = getelementptr inbounds %struct.memcard, %struct.memcard* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.memcard*, %struct.memcard** %8, align 8
  %252 = getelementptr inbounds %struct.memcard, %struct.memcard* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sdiv i32 %250, %253
  %255 = load i32, i32* %13, align 4
  %256 = mul nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %247, i64 %257
  %259 = load i8*, i8** %15, align 8
  %260 = load %struct.memcard*, %struct.memcard** %8, align 8
  %261 = getelementptr inbounds %struct.memcard, %struct.memcard* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.memcard*, %struct.memcard** %8, align 8
  %264 = getelementptr inbounds %struct.memcard, %struct.memcard* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sdiv i32 %262, %265
  %267 = call i32 @memcpy(i8* %258, i8* %259, i32 %266)
  %268 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %269 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.memcard*, %struct.memcard** %8, align 8
  %272 = getelementptr inbounds %struct.memcard, %struct.memcard* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.memcard*, %struct.memcard** %8, align 8
  %275 = getelementptr inbounds %struct.memcard, %struct.memcard* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sdiv i32 %273, %276
  %278 = load i32, i32* %13, align 4
  %279 = mul nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %270, i64 %280
  %282 = load %struct.memcard*, %struct.memcard** %8, align 8
  %283 = getelementptr inbounds %struct.memcard, %struct.memcard* %282, i32 0, i32 2
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.memcard*, %struct.memcard** %8, align 8
  %286 = getelementptr inbounds %struct.memcard, %struct.memcard* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.memcard*, %struct.memcard** %8, align 8
  %289 = getelementptr inbounds %struct.memcard, %struct.memcard* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = sdiv i32 %287, %290
  %292 = call i32 @memcpy(i8* %281, i8* %284, i32 %291)
  %293 = load %struct.memcard*, %struct.memcard** %8, align 8
  %294 = getelementptr inbounds %struct.memcard, %struct.memcard* %293, i32 0, i32 2
  store i8* null, i8** %294, align 8
  %295 = load i32, i32* %5, align 4
  %296 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %297 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* @jiffies, align 4
  %299 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %300 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  %301 = load %struct.vmu_cache*, %struct.vmu_cache** %16, align 8
  %302 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %301, i32 0, i32 0
  store i32 1, i32* %302, align 8
  %303 = load i8*, i8** %15, align 8
  %304 = call i32 @kfree(i8* %303)
  br label %305

305:                                              ; preds = %246
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %69

308:                                              ; preds = %69
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %4, align 4
  br label %315

310:                                              ; preds = %245, %182
  %311 = load i8*, i8** %15, align 8
  %312 = call i32 @kfree(i8* %311)
  br label %313

313:                                              ; preds = %310, %131, %103, %55
  %314 = load i32, i32* %12, align 4
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %313, %308
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local %struct.memcard* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @maple_getcond_callback(%struct.maple_device*, i32, i32, i32) #1

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
