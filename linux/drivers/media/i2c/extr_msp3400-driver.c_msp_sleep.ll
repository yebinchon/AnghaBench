; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp_state = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_sleep(%struct.msp_state* %0, i32 %1) #0 {
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca i32, align 4
  store %struct.msp_state* %0, %struct.msp_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @wait, align 4
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @DECLARE_WAITQUEUE(i32 %5, i32 %6)
  %8 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %9 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %8, i32 0, i32 1
  %10 = call i32 @add_wait_queue(i32* %9, i32* @wait)
  %11 = call i32 (...) @kthread_should_stop()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call i32 @set_current_state(i32 %17)
  %19 = call i32 (...) @schedule()
  br label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @msecs_to_jiffies(i32 %21)
  %23 = call i32 @schedule_timeout_interruptible(i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %27 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %26, i32 0, i32 1
  %28 = call i32 @remove_wait_queue(i32* %27, i32* @wait)
  %29 = call i32 (...) @try_to_freeze()
  %30 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %31 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  ret i32 %32
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @try_to_freeze(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
