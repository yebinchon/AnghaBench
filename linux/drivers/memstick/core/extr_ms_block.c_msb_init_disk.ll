; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_init_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_init_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32 }
%struct.msb_data = type { i64, i32, i64, i64, i32, %struct.TYPE_13__*, i64, i32, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.msb_data*, i32*, i32 }
%struct.TYPE_14__ = type { %struct.memstick_dev* }

@msb_disk_lock = common dso_local global i32 0, align 4
@msb_disk_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msb_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@MS_BLOCK_MAX_PAGES = common dso_local global i32 0, align 4
@MS_BLOCK_MAX_SEGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"msblk%d\00", align 1
@msb_bdops = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Set total disk size to %lu sectors\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ms_block\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@msb_io_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Disk added\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @msb_init_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_init_disk(%struct.memstick_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  %7 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %8 = call %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev* %7)
  store %struct.msb_data* %8, %struct.msb_data** %4, align 8
  %9 = call i32 @mutex_lock(i32* @msb_disk_lock)
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64 @idr_alloc(i32* @msb_disk_idr, %struct.memstick_dev* %10, i32 0, i32 256, i32 %11)
  %13 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %14 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = call i32 @mutex_unlock(i32* @msb_disk_lock)
  %16 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %17 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %22 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %190

25:                                               ; preds = %1
  %26 = call %struct.TYPE_13__* @alloc_disk(i32 0)
  %27 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %28 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %27, i32 0, i32 5
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %28, align 8
  %29 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %30 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %29, i32 0, i32 5
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %181

36:                                               ; preds = %25
  %37 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %38 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %37, i32 0, i32 11
  %39 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %40 = call %struct.TYPE_14__* @blk_mq_init_sq_queue(i32* %38, i32* @msb_mq_ops, i32 2, i32 %39)
  %41 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %42 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %41, i32 0, i32 10
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %42, align 8
  %43 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %44 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %43, i32 0, i32 10
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = call i64 @IS_ERR(%struct.TYPE_14__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %50 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %49, i32 0, i32 10
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.TYPE_14__* %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %54 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %53, i32 0, i32 10
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %54, align 8
  br label %176

55:                                               ; preds = %36
  %56 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %57 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %58 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %57, i32 0, i32 10
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store %struct.memstick_dev* %56, %struct.memstick_dev** %60, align 8
  %61 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %62 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %61, i32 0, i32 10
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i32, i32* @MS_BLOCK_MAX_PAGES, align 4
  %65 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_14__* %63, i32 %64)
  %66 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %67 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %66, i32 0, i32 10
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i64, i64* @MS_BLOCK_MAX_SEGS, align 8
  %70 = call i32 @blk_queue_max_segments(%struct.TYPE_14__* %68, i64 %69)
  %71 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %72 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %71, i32 0, i32 10
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i32, i32* @MS_BLOCK_MAX_PAGES, align 4
  %75 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %76 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %74, %77
  %79 = call i32 @blk_queue_max_segment_size(%struct.TYPE_14__* %73, i32 %78)
  %80 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %81 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %80, i32 0, i32 10
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %84 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @blk_queue_logical_block_size(%struct.TYPE_14__* %82, i32 %85)
  %87 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %88 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %87, i32 0, i32 5
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %93 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @sprintf(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %98 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %97, i32 0, i32 5
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  store i32* @msb_bdops, i32** %100, align 8
  %101 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %102 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %103 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %102, i32 0, i32 5
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  store %struct.msb_data* %101, %struct.msb_data** %105, align 8
  %106 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %107 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %106, i32 0, i32 10
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %110 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %109, i32 0, i32 5
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %112, align 8
  %113 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %114 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %115 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %114, i32 0, i32 5
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 8
  %120 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %121 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %124 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = mul i64 %122, %125
  store i64 %126, i64* %6, align 8
  %127 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %128 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sdiv i32 %129, 512
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %6, align 8
  %133 = mul i64 %132, %131
  store i64 %133, i64* %6, align 8
  %134 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %135 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %134, i32 0, i32 5
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @set_capacity(%struct.TYPE_13__* %136, i64 %137)
  %139 = load i64, i64* %6, align 8
  %140 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %139)
  %141 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %142 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %141, i32 0, i32 4
  store i32 1, i32* %142, align 8
  %143 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %144 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %146 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %145, i32 0, i32 9
  store i32 %144, i32* %146, align 8
  %147 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %148 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %147, i32 0, i32 8
  %149 = load i32, i32* @msb_io_work, align 4
  %150 = call i32 @INIT_WORK(i32* %148, i32 %149)
  %151 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %152 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* @MS_BLOCK_MAX_SEGS, align 8
  %155 = add nsw i64 %154, 1
  %156 = call i32 @sg_init_table(i32 %153, i64 %155)
  %157 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %158 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %55
  %162 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %163 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %162, i32 0, i32 5
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = call i32 @set_disk_ro(%struct.TYPE_13__* %164, i32 1)
  br label %166

166:                                              ; preds = %161, %55
  %167 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %168 = call i32 @msb_start(%struct.memstick_dev* %167)
  %169 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %170 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %169, i32 0, i32 0
  %171 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %172 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %171, i32 0, i32 5
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = call i32 @device_add_disk(i32* %170, %struct.TYPE_13__* %173, i32* null)
  %175 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %190

176:                                              ; preds = %48
  %177 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %178 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %177, i32 0, i32 5
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = call i32 @put_disk(%struct.TYPE_13__* %179)
  br label %181

181:                                              ; preds = %176, %33
  %182 = call i32 @mutex_lock(i32* @msb_disk_lock)
  %183 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %184 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @idr_remove(i32* @msb_disk_idr, i32 %186)
  %188 = call i32 @mutex_unlock(i32* @msb_disk_lock)
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %181, %166, %20
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @idr_alloc(i32*, %struct.memstick_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_13__* @alloc_disk(i32) #1

declare dso_local %struct.TYPE_14__* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @set_capacity(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sg_init_table(i32, i64) #1

declare dso_local i32 @set_disk_ro(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @msb_start(%struct.memstick_dev*) #1

declare dso_local i32 @device_add_disk(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_13__*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
