; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32 }
%struct.mspro_block_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_dev*)* @mspro_block_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mspro_block_stop(%struct.memstick_dev* %0) #0 {
  %2 = alloca %struct.memstick_dev*, align 8
  %3 = alloca %struct.mspro_block_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %2, align 8
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %7 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %6)
  store %struct.mspro_block_data* %7, %struct.mspro_block_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %1, %30
  %9 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %10 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %14 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %19 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @blk_mq_stop_hw_queues(i32 %20)
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %8
  %23 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %24 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %32 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %31, i32 0, i32 0
  %33 = call i32 @wait_for_completion(i32* %32)
  br label %8

34:                                               ; preds = %29
  ret void
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @blk_mq_stop_hw_queues(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
