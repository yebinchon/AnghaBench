; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_edge_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_edge_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event_ctrl = type { %struct.rc_dev* }
%struct.rc_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timer_list = type { i32 }
%struct.ir_raw_event = type { i32, i64 }

@edge_handle = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@raw = common dso_local global %struct.ir_raw_event_ctrl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ir_raw_edge_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_raw_edge_handle(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ir_raw_event_ctrl*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ir_raw_event, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %9 = ptrtoint %struct.ir_raw_event_ctrl* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @edge_handle, align 4
  %12 = call %struct.ir_raw_event_ctrl* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.ir_raw_event_ctrl* %12, %struct.ir_raw_event_ctrl** %3, align 8
  %13 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %13, i32 0, i32 0
  %15 = load %struct.rc_dev*, %struct.rc_dev** %14, align 8
  store %struct.rc_dev* %15, %struct.rc_dev** %4, align 8
  %16 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = call i32 (...) @ktime_get()
  %23 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ktime_sub(i32 %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @ktime_to_ns(i32 %29)
  %31 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %32 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 1
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @ktime_to_ns(i32 %38)
  store i64 %39, i64* %37, align 8
  %40 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %41 = call i32 @ir_raw_event_store(%struct.rc_dev* %40, %struct.ir_raw_event* %7)
  br label %57

42:                                               ; preds = %1
  %43 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* @jiffies, align 8
  %48 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @ktime_to_ns(i32 %51)
  %53 = sub nsw i64 %50, %52
  %54 = call i64 @nsecs_to_jiffies(i64 %53)
  %55 = add nsw i64 %47, %54
  %56 = call i32 @mod_timer(i32* %46, i64 %55)
  br label %57

57:                                               ; preds = %42, %35
  %58 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %59 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %65 = call i32 @ir_raw_event_handle(%struct.rc_dev* %64)
  ret void
}

declare dso_local %struct.ir_raw_event_ctrl* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ir_raw_event_store(%struct.rc_dev*, %struct.ir_raw_event*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @nsecs_to_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ir_raw_event_handle(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
