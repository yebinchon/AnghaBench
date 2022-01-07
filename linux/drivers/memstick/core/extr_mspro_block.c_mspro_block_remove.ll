; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mspro_block_data = type { i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"mspro block remove\0A\00", align 1
@mspro_block_disk_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_dev*)* @mspro_block_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mspro_block_remove(%struct.memstick_dev* %0) #0 {
  %2 = alloca %struct.memstick_dev*, align 8
  %3 = alloca %struct.mspro_block_data*, align 8
  %4 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %2, align 8
  %5 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %6 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %5)
  store %struct.mspro_block_data* %6, %struct.mspro_block_data** %3, align 8
  %7 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %8 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %7, i32 0, i32 5
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %12 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %14 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %13, i32 0, i32 5
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %18 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @blk_mq_start_hw_queues(i32* %19)
  %21 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %22 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @del_gendisk(i32 %23)
  %25 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %26 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %25, i32 0, i32 0
  %27 = call i32 @dev_dbg(%struct.TYPE_2__* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %29 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @blk_cleanup_queue(i32* %30)
  %32 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %33 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %32, i32 0, i32 4
  %34 = call i32 @blk_mq_free_tag_set(i32* %33)
  %35 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %36 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %38 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %41 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %40, i32 0, i32 2
  %42 = call i32 @sysfs_remove_group(i32* %39, i32* %41)
  %43 = call i32 @mutex_lock(i32* @mspro_block_disk_lock)
  %44 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %45 = call i32 @mspro_block_data_clear(%struct.mspro_block_data* %44)
  %46 = call i32 @mutex_unlock(i32* @mspro_block_disk_lock)
  %47 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %48 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mspro_block_disk_release(i32 %49)
  %51 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %52 = call i32 @memstick_set_drvdata(%struct.memstick_dev* %51, i32* null)
  ret void
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_start_hw_queues(i32*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mspro_block_data_clear(%struct.mspro_block_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mspro_block_disk_release(i32) #1

declare dso_local i32 @memstick_set_drvdata(%struct.memstick_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
