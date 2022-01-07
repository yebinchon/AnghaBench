; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32 }
%struct.msb_data = type { i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Removing the disk device\00", align 1
@msb_disk_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_dev*)* @msb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msb_remove(%struct.memstick_dev* %0) #0 {
  %2 = alloca %struct.memstick_dev*, align 8
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %2, align 8
  %5 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %6 = call %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev* %5)
  store %struct.msb_data* %6, %struct.msb_data** %3, align 8
  %7 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %8 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %13 = call i32 @msb_stop(%struct.memstick_dev* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %17 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %16, i32 0, i32 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %21 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %23 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %22, i32 0, i32 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %27 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @blk_mq_start_hw_queues(i32* %28)
  %30 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %31 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @del_gendisk(i32 %32)
  %34 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %35 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @blk_cleanup_queue(i32* %36)
  %38 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %39 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %38, i32 0, i32 3
  %40 = call i32 @blk_mq_free_tag_set(i32* %39)
  %41 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %42 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = call i32 @mutex_lock(i32* @msb_disk_lock)
  %44 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %45 = call i32 @msb_data_clear(%struct.msb_data* %44)
  %46 = call i32 @mutex_unlock(i32* @msb_disk_lock)
  %47 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %48 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @msb_disk_release(i32 %49)
  %51 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %52 = call i32 @memstick_set_drvdata(%struct.memstick_dev* %51, i32* null)
  ret void
}

declare dso_local %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @msb_stop(%struct.memstick_dev*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_start_hw_queues(i32*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msb_data_clear(%struct.msb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msb_disk_release(i32) #1

declare dso_local i32 @memstick_set_drvdata(%struct.memstick_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
