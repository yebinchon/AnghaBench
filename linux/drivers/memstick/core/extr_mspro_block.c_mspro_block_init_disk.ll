; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_init_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_init_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32 }
%struct.mspro_block_data = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, %struct.mspro_block_data*, i32*, i32 }
%struct.TYPE_15__ = type { %struct.memstick_dev* }
%struct.TYPE_13__ = type { i64* }
%struct.mspro_devinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.mspro_sys_info = type { i32, i32, i32, i32, i32, i32 }
%struct.mspro_sys_attr = type { i64, %struct.mspro_sys_info* }

@MSPRO_BLOCK_ID_DEVINFO = common dso_local global i64 0, align 8
@MSPRO_BLOCK_ID_SYSINFO = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@mspro_block_disk_lock = common dso_local global i32 0, align 4
@mspro_block_disk_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSPRO_BLOCK_PART_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mspro_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@MSPRO_BLOCK_MAX_PAGES = common dso_local global i32 0, align 4
@MSPRO_BLOCK_MAX_SEGS = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@ms_block_bdops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mspblk%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"capacity set %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @mspro_block_init_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_init_disk(%struct.memstick_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.mspro_block_data*, align 8
  %5 = alloca %struct.mspro_devinfo*, align 8
  %6 = alloca %struct.mspro_sys_info*, align 8
  %7 = alloca %struct.mspro_sys_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  %11 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %12 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %11)
  store %struct.mspro_block_data* %12, %struct.mspro_block_data** %4, align 8
  store %struct.mspro_devinfo* null, %struct.mspro_devinfo** %5, align 8
  store %struct.mspro_sys_info* null, %struct.mspro_sys_info** %6, align 8
  store %struct.mspro_sys_attr* null, %struct.mspro_sys_attr** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %55, %1
  %14 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %15 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %13
  %24 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %25 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.mspro_sys_attr* @mspro_from_sysfs_attr(i64 %31)
  store %struct.mspro_sys_attr* %32, %struct.mspro_sys_attr** %7, align 8
  %33 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %7, align 8
  %34 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MSPRO_BLOCK_ID_DEVINFO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %7, align 8
  %40 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %39, i32 0, i32 1
  %41 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %40, align 8
  %42 = bitcast %struct.mspro_sys_info* %41 to %struct.mspro_devinfo*
  store %struct.mspro_devinfo* %42, %struct.mspro_devinfo** %5, align 8
  br label %54

43:                                               ; preds = %23
  %44 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %7, align 8
  %45 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MSPRO_BLOCK_ID_SYSINFO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.mspro_sys_attr*, %struct.mspro_sys_attr** %7, align 8
  %51 = getelementptr inbounds %struct.mspro_sys_attr, %struct.mspro_sys_attr* %50, i32 0, i32 1
  %52 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %51, align 8
  store %struct.mspro_sys_info* %52, %struct.mspro_sys_info** %6, align 8
  br label %53

53:                                               ; preds = %49, %43
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %13

58:                                               ; preds = %13
  %59 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %5, align 8
  %60 = icmp ne %struct.mspro_devinfo* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %6, align 8
  %63 = icmp ne %struct.mspro_sys_info* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %249

67:                                               ; preds = %61
  %68 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %5, align 8
  %69 = getelementptr inbounds %struct.mspro_devinfo, %struct.mspro_devinfo* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @be16_to_cpu(i32 %70)
  %72 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %73 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %5, align 8
  %75 = getelementptr inbounds %struct.mspro_devinfo, %struct.mspro_devinfo* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @be16_to_cpu(i32 %76)
  %78 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %79 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.mspro_devinfo*, %struct.mspro_devinfo** %5, align 8
  %81 = getelementptr inbounds %struct.mspro_devinfo, %struct.mspro_devinfo* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @be16_to_cpu(i32 %82)
  %84 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %85 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %6, align 8
  %87 = getelementptr inbounds %struct.mspro_sys_info, %struct.mspro_sys_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @be16_to_cpu(i32 %88)
  %90 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %91 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = call i32 @mutex_lock(i32* @mspro_block_disk_lock)
  %93 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32 @idr_alloc(i32* @mspro_block_disk_idr, %struct.memstick_dev* %93, i32 0, i32 256, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = call i32 @mutex_unlock(i32* @mspro_block_disk_lock)
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %67
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %2, align 4
  br label %249

101:                                              ; preds = %67
  %102 = load i32, i32* @MSPRO_BLOCK_PART_SHIFT, align 4
  %103 = shl i32 1, %102
  %104 = call %struct.TYPE_14__* @alloc_disk(i32 %103)
  %105 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %106 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %105, i32 0, i32 6
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %106, align 8
  %107 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %108 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %107, i32 0, i32 6
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %243

114:                                              ; preds = %101
  %115 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %116 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %115, i32 0, i32 8
  %117 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %118 = call %struct.TYPE_15__* @blk_mq_init_sq_queue(i32* %116, i32* @mspro_mq_ops, i32 2, i32 %117)
  %119 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %120 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %119, i32 0, i32 7
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %120, align 8
  %121 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %122 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %121, i32 0, i32 7
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = call i64 @IS_ERR(%struct.TYPE_15__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %114
  %127 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %128 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %127, i32 0, i32 7
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = call i32 @PTR_ERR(%struct.TYPE_15__* %129)
  store i32 %130, i32* %8, align 4
  %131 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %132 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %131, i32 0, i32 7
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %132, align 8
  br label %238

133:                                              ; preds = %114
  %134 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %135 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %136 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %135, i32 0, i32 7
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store %struct.memstick_dev* %134, %struct.memstick_dev** %138, align 8
  %139 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %140 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %139, i32 0, i32 7
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = load i32, i32* @MSPRO_BLOCK_MAX_PAGES, align 4
  %143 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_15__* %141, i32 %142)
  %144 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %145 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %144, i32 0, i32 7
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = load i32, i32* @MSPRO_BLOCK_MAX_SEGS, align 4
  %148 = call i32 @blk_queue_max_segments(%struct.TYPE_15__* %146, i32 %147)
  %149 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %150 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %149, i32 0, i32 7
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i32, i32* @MSPRO_BLOCK_MAX_PAGES, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %155 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = mul i64 %153, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 @blk_queue_max_segment_size(%struct.TYPE_15__* %151, i32 %158)
  %160 = load i32, i32* @major, align 4
  %161 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %162 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %161, i32 0, i32 6
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 5
  store i32 %160, i32* %164, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @MSPRO_BLOCK_PART_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %169 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %168, i32 0, i32 6
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 8
  %172 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %173 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %172, i32 0, i32 6
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 4
  store i32* @ms_block_bdops, i32** %175, align 8
  %176 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %177 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %176, i32 0, i32 4
  store i32 1, i32* %177, align 8
  %178 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %179 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %180 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %179, i32 0, i32 6
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 3
  store %struct.mspro_block_data* %178, %struct.mspro_block_data** %182, align 8
  %183 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %184 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %183, i32 0, i32 7
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %187 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %186, i32 0, i32 6
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  store %struct.TYPE_15__* %185, %struct.TYPE_15__** %189, align 8
  %190 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %191 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %190, i32 0, i32 6
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @sprintf(i32 %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %198 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %197, i32 0, i32 7
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %201 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @blk_queue_logical_block_size(%struct.TYPE_15__* %199, i32 %203)
  %205 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %6, align 8
  %206 = getelementptr inbounds %struct.mspro_sys_info, %struct.mspro_sys_info* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @be16_to_cpu(i32 %207)
  store i64 %208, i64* %10, align 8
  %209 = load %struct.mspro_sys_info*, %struct.mspro_sys_info** %6, align 8
  %210 = getelementptr inbounds %struct.mspro_sys_info, %struct.mspro_sys_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @be16_to_cpu(i32 %211)
  %213 = load i64, i64* %10, align 8
  %214 = mul i64 %213, %212
  store i64 %214, i64* %10, align 8
  %215 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %216 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = lshr i64 %217, 9
  %219 = load i64, i64* %10, align 8
  %220 = mul i64 %219, %218
  store i64 %220, i64* %10, align 8
  %221 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %222 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %221, i32 0, i32 6
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = load i64, i64* %10, align 8
  %225 = call i32 @set_capacity(%struct.TYPE_14__* %223, i64 %224)
  %226 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %227 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %226, i32 0, i32 0
  %228 = load i64, i64* %10, align 8
  %229 = call i32 @dev_dbg(i32* %227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %228)
  %230 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %231 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %230, i32 0, i32 0
  %232 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %233 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %232, i32 0, i32 6
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = call i32 @device_add_disk(i32* %231, %struct.TYPE_14__* %234, i32* null)
  %236 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %237 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %236, i32 0, i32 5
  store i32 1, i32* %237, align 4
  store i32 0, i32* %2, align 4
  br label %249

238:                                              ; preds = %126
  %239 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %240 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %239, i32 0, i32 6
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = call i32 @put_disk(%struct.TYPE_14__* %241)
  br label %243

243:                                              ; preds = %238, %111
  %244 = call i32 @mutex_lock(i32* @mspro_block_disk_lock)
  %245 = load i32, i32* %9, align 4
  %246 = call i32 @idr_remove(i32* @mspro_block_disk_idr, i32 %245)
  %247 = call i32 @mutex_unlock(i32* @mspro_block_disk_lock)
  %248 = load i32, i32* %8, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %243, %133, %99, %64
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local %struct.mspro_sys_attr* @mspro_from_sysfs_attr(i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.memstick_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_14__* @alloc_disk(i32) #1

declare dso_local %struct.TYPE_15__* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @set_capacity(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @device_add_disk(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_14__*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
