; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.memstick_dev* }
%struct.memstick_dev = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.msb_data = type { i32, i32, i32, i32, %struct.request*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Submit request\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Refusing requests on removed card\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @msb_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.memstick_dev*, align 8
  %7 = alloca %struct.msb_data*, align 8
  %8 = alloca %struct.request*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.memstick_dev*, %struct.memstick_dev** %12, align 8
  store %struct.memstick_dev* %13, %struct.memstick_dev** %6, align 8
  %14 = load %struct.memstick_dev*, %struct.memstick_dev** %6, align 8
  %15 = call %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev* %14)
  store %struct.msb_data* %15, %struct.msb_data** %7, align 8
  %16 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %17 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %16, i32 0, i32 0
  %18 = load %struct.request*, %struct.request** %17, align 8
  store %struct.request* %18, %struct.request** %8, align 8
  %19 = call i32 @dbg_verbose(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %21 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %24 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = call i32 @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %30 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %37 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load %struct.request*, %struct.request** %8, align 8
  %40 = call i32 @blk_mq_start_request(%struct.request* %39)
  %41 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %2
  %43 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %44 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %43, i32 0, i32 4
  %45 = load %struct.request*, %struct.request** %44, align 8
  %46 = icmp ne %struct.request* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %49 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %42
  %53 = load %struct.request*, %struct.request** %8, align 8
  %54 = call i32 @blk_mq_start_request(%struct.request* %53)
  %55 = load %struct.request*, %struct.request** %8, align 8
  %56 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %57 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %56, i32 0, i32 4
  store %struct.request* %55, %struct.request** %57, align 8
  %58 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %59 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %64 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %67 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %66, i32 0, i32 1
  %68 = call i32 @queue_work(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %62, %52
  %70 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %71 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %47, %27
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
