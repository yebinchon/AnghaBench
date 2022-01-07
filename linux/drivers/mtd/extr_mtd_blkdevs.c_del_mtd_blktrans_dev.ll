; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtd_blkdevs.c_del_mtd_blktrans_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtd_blkdevs.c_del_mtd_blktrans_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32, i32*, %struct.TYPE_7__*, i64, %struct.TYPE_9__*, i32, i32, i64 }
%struct.TYPE_7__ = type { {}* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@mtd_table_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_mtd_blktrans_dev(%struct.mtd_blktrans_dev* %0) #0 {
  %2 = alloca %struct.mtd_blktrans_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %2, align 8
  %4 = call i64 @mutex_trylock(i32* @mtd_table_mutex)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 @mutex_unlock(i32* @mtd_table_mutex)
  %8 = call i32 (...) @BUG()
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_8__* @disk_to_dev(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @sysfs_remove_group(i32* %19, i64 %22)
  br label %24

24:                                               ; preds = %14, %9
  %25 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @del_gendisk(i32 %27)
  %29 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %29, i32 0, i32 5
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %33, i32 0, i32 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %38 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %37, i32 0, i32 5
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %41, i32 0, i32 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i32 @blk_mq_freeze_queue(%struct.TYPE_9__* %43)
  %45 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i32 @blk_mq_quiesce_queue(%struct.TYPE_9__* %47)
  %49 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %50 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %49, i32 0, i32 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @blk_mq_unquiesce_queue(%struct.TYPE_9__* %51)
  %53 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %54 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %53, i32 0, i32 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @blk_mq_unfreeze_queue(%struct.TYPE_9__* %55)
  %57 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %61 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %24
  %65 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %66 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.mtd_blktrans_dev*)**
  %70 = load i32 (%struct.mtd_blktrans_dev*)*, i32 (%struct.mtd_blktrans_dev*)** %69, align 8
  %71 = icmp ne i32 (%struct.mtd_blktrans_dev*)* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %74 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = bitcast {}** %76 to i32 (%struct.mtd_blktrans_dev*)**
  %78 = load i32 (%struct.mtd_blktrans_dev*)*, i32 (%struct.mtd_blktrans_dev*)** %77, align 8
  %79 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %80 = call i32 %78(%struct.mtd_blktrans_dev* %79)
  br label %81

81:                                               ; preds = %72, %64
  %82 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %83 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @__put_mtd_device(i32* %84)
  br label %86

86:                                               ; preds = %81, %24
  %87 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %90 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %93 = call i32 @blktrans_dev_put(%struct.mtd_blktrans_dev* %92)
  ret i32 0
}

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sysfs_remove_group(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @disk_to_dev(i32) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_mq_quiesce_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__put_mtd_device(i32*) #1

declare dso_local i32 @blktrans_dev_put(%struct.mtd_blktrans_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
