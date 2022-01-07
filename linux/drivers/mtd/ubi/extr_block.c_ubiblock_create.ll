; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_info = type { i32, i32, i32, i32 }
%struct.ubiblock = type { i32, i32, %struct.gendisk*, %struct.TYPE_10__, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.gendisk = type { i64, i32, %struct.TYPE_9__*, %struct.ubiblock*, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.ubiblock*, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.ubiblock* }

@devices_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"UBI: block: alloc_disk failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ubiblock_ops = common dso_local global i32 0, align 4
@ubiblock_major = common dso_local global i32 0, align 4
@ubiblock_minor_idr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"block: dynamic minor allocation failed\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ubiblock%d_%d\00", align 1
@ubiblock_mq_ops = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"blk_mq_alloc_tag_set failed\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"blk_mq_init_queue failed\00", align 1
@UBI_MAX_SG_COUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ubiblock_devices = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"created from ubi%d:%d(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubiblock_create(%struct.ubi_volume_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_volume_info*, align 8
  %4 = alloca %struct.ubiblock*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubi_volume_info* %0, %struct.ubi_volume_info** %3, align 8
  %8 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %9 = call i32 @calc_disk_capacity(%struct.ubi_volume_info* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %235

14:                                               ; preds = %1
  %15 = call i32 @mutex_lock(i32* @devices_mutex)
  %16 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %20 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @find_dev_nolock(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %232

27:                                               ; preds = %14
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ubiblock* @kzalloc(i32 80, i32 %28)
  store %struct.ubiblock* %29, %struct.ubiblock** %4, align 8
  %30 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %31 = icmp ne %struct.ubiblock* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %232

35:                                               ; preds = %27
  %36 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %37 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %36, i32 0, i32 8
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %43 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %45 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %48 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %50 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %53 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %54, %struct.gendisk** %5, align 8
  %55 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %56 = icmp ne %struct.gendisk* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %35
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %229

61:                                               ; preds = %35
  %62 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %63 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %62, i32 0, i32 5
  store i32* @ubiblock_ops, i32** %63, align 8
  %64 = load i32, i32* @ubiblock_major, align 4
  %65 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %66 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i64 @idr_alloc(i32* @ubiblock_minor_idr, %struct.ubiblock* %67, i32 0, i32 0, i32 %68)
  %70 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %71 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %73 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %61
  %77 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %78 = call i32 @disk_to_dev(%struct.gendisk* %77)
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %224

82:                                               ; preds = %61
  %83 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %84 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %85 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %84, i32 0, i32 3
  store %struct.ubiblock* %83, %struct.ubiblock** %85, align 8
  %86 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %87 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %90 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %93 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sprintf(i32 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @set_capacity(%struct.gendisk* %96, i32 %97)
  %99 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %100 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %101 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %100, i32 0, i32 2
  store %struct.gendisk* %99, %struct.gendisk** %101, align 8
  %102 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %103 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 6
  store i32* @ubiblock_mq_ops, i32** %104, align 8
  %105 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %106 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 64, i32* %107, align 8
  %108 = load i32, i32* @NUMA_NO_NODE, align 4
  %109 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %110 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 5
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %113 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %114 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 8
  %116 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %117 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i32 4, i32* %118, align 4
  %119 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %120 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %121 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  store %struct.ubiblock* %119, %struct.ubiblock** %122, align 8
  %123 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %124 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  %126 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %127 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %126, i32 0, i32 3
  %128 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_10__* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %82
  %132 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %133 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %132, i32 0, i32 2
  %134 = load %struct.gendisk*, %struct.gendisk** %133, align 8
  %135 = call i32 @disk_to_dev(%struct.gendisk* %134)
  %136 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %219

137:                                              ; preds = %82
  %138 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %139 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %138, i32 0, i32 3
  %140 = call %struct.TYPE_9__* @blk_mq_init_queue(%struct.TYPE_10__* %139)
  %141 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %142 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %141, i32 0, i32 4
  store %struct.TYPE_9__* %140, %struct.TYPE_9__** %142, align 8
  %143 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %144 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %143, i32 0, i32 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = call i64 @IS_ERR(%struct.TYPE_9__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %137
  %149 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %150 = call i32 @disk_to_dev(%struct.gendisk* %149)
  %151 = call i32 @dev_err(i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %152 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %153 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %152, i32 0, i32 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @PTR_ERR(%struct.TYPE_9__* %154)
  store i32 %155, i32* %7, align 4
  br label %215

156:                                              ; preds = %137
  %157 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %158 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %157, i32 0, i32 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i32, i32* @UBI_MAX_SG_COUNT, align 4
  %161 = call i32 @blk_queue_max_segments(%struct.TYPE_9__* %159, i32 %160)
  %162 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %163 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %164 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %163, i32 0, i32 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store %struct.ubiblock* %162, %struct.ubiblock** %166, align 8
  %167 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %168 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %167, i32 0, i32 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %171 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %170, i32 0, i32 2
  %172 = load %struct.gendisk*, %struct.gendisk** %171, align 8
  %173 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %172, i32 0, i32 2
  store %struct.TYPE_9__* %169, %struct.TYPE_9__** %173, align 8
  %174 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %175 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 %176)
  %178 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %179 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 4
  %180 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %181 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %156
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %7, align 4
  br label %210

187:                                              ; preds = %156
  %188 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %189 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %188, i32 0, i32 5
  %190 = call i32 @list_add_tail(i32* %189, i32* @ubiblock_devices)
  %191 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %192 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %191, i32 0, i32 2
  %193 = load %struct.gendisk*, %struct.gendisk** %192, align 8
  %194 = call i32 @add_disk(%struct.gendisk* %193)
  %195 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %196 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %195, i32 0, i32 2
  %197 = load %struct.gendisk*, %struct.gendisk** %196, align 8
  %198 = call i32 @disk_to_dev(%struct.gendisk* %197)
  %199 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %200 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %203 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %206 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @dev_info(i32 %198, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %201, i32 %204, i32 %207)
  %209 = call i32 @mutex_unlock(i32* @devices_mutex)
  store i32 0, i32* %2, align 4
  br label %235

210:                                              ; preds = %184
  %211 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %212 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %211, i32 0, i32 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = call i32 @blk_cleanup_queue(%struct.TYPE_9__* %213)
  br label %215

215:                                              ; preds = %210, %148
  %216 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %217 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %216, i32 0, i32 3
  %218 = call i32 @blk_mq_free_tag_set(%struct.TYPE_10__* %217)
  br label %219

219:                                              ; preds = %215, %131
  %220 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %221 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @idr_remove(i32* @ubiblock_minor_idr, i64 %222)
  br label %224

224:                                              ; preds = %219, %76
  %225 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %226 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %225, i32 0, i32 2
  %227 = load %struct.gendisk*, %struct.gendisk** %226, align 8
  %228 = call i32 @put_disk(%struct.gendisk* %227)
  br label %229

229:                                              ; preds = %224, %57
  %230 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %231 = call i32 @kfree(%struct.ubiblock* %230)
  br label %232

232:                                              ; preds = %229, %32, %24
  %233 = call i32 @mutex_unlock(i32* @devices_mutex)
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %232, %187, %12
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @calc_disk_capacity(%struct.ubi_volume_info*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_dev_nolock(i32, i32) #1

declare dso_local %struct.ubiblock* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @idr_alloc(i32*, %struct.ubiblock*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @blk_mq_init_queue(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_10__*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.ubiblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
