; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00_ts = type { i32*, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@UCB_IRQ_TSPX = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ucb1x00_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ucb1x00_ts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.ucb1x00_ts*
  store %struct.ucb1x00_ts* %12, %struct.ucb1x00_ts** %3, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = call i32 (...) @set_freezable()
  %17 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %18 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %17, i32 0, i32 1
  %19 = call i32 @add_wait_queue(i32* %18, i32* @wait)
  br label %20

20:                                               ; preds = %108, %1
  %21 = call i32 @kthread_freezable_should_stop(i32* %4)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %111

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %30 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @ucb1x00_adc_enable(%struct.TYPE_5__* %31)
  %33 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %34 = call i32 @ucb1x00_ts_read_xpos(%struct.ucb1x00_ts* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %36 = call i32 @ucb1x00_ts_read_ypos(%struct.ucb1x00_ts* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %38 = call i32 @ucb1x00_ts_read_pressure(%struct.ucb1x00_ts* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %40 = call i32 @ucb1x00_ts_mode_int(%struct.ucb1x00_ts* %39)
  %41 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %42 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @ucb1x00_adc_disable(%struct.TYPE_5__* %43)
  %45 = call i32 @msleep(i32 10)
  %46 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %47 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @ucb1x00_enable(%struct.TYPE_5__* %48)
  %50 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %51 = call i64 @ucb1x00_ts_pen_down(%struct.ucb1x00_ts* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %28
  %54 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %55 = call i32 @set_current_state(i32 %54)
  %56 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %57 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %56, i32 0, i32 3
  %58 = call i32 @spin_lock_irq(i32* %57)
  %59 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %60 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %65 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %67 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UCB_IRQ_TSPX, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @enable_irq(i64 %72)
  br label %74

74:                                               ; preds = %63, %53
  %75 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %76 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %75, i32 0, i32 3
  %77 = call i32 @spin_unlock_irq(i32* %76)
  %78 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %79 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 @ucb1x00_disable(%struct.TYPE_5__* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %86 = call i32 @ucb1x00_ts_event_release(%struct.ucb1x00_ts* %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %74
  %88 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %88, i64* %10, align 8
  br label %108

89:                                               ; preds = %28
  %90 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %91 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = call i32 @ucb1x00_disable(%struct.TYPE_5__* %92)
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ucb1x00_ts_evt_add(%struct.ucb1x00_ts* %97, i32 %98, i32 %99, i32 %100)
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %96, %89
  %103 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %104 = call i32 @set_current_state(i32 %103)
  %105 = load i32, i32* @HZ, align 4
  %106 = sdiv i32 %105, 100
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %102, %87
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @schedule_timeout(i64 %109)
  br label %20

111:                                              ; preds = %20
  %112 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %113 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %112, i32 0, i32 1
  %114 = call i32 @remove_wait_queue(i32* %113, i32* @wait)
  %115 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %116 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  ret i32 0
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @kthread_freezable_should_stop(i32*) #1

declare dso_local i32 @ucb1x00_adc_enable(%struct.TYPE_5__*) #1

declare dso_local i32 @ucb1x00_ts_read_xpos(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_read_ypos(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_read_pressure(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_mode_int(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_adc_disable(%struct.TYPE_5__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ucb1x00_enable(%struct.TYPE_5__*) #1

declare dso_local i64 @ucb1x00_ts_pen_down(%struct.ucb1x00_ts*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ucb1x00_disable(%struct.TYPE_5__*) #1

declare dso_local i32 @ucb1x00_ts_event_release(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_evt_add(%struct.ucb1x00_ts*, i32, i32, i32) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
