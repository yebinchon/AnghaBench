; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmb38x_ms_host = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.memstick_host* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.memstick_host = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"abort\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@host = common dso_local global %struct.jmb38x_ms_host* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @jmb38x_ms_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmb38x_ms_abort(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.jmb38x_ms_host*, align 8
  %4 = alloca %struct.memstick_host*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %7 = ptrtoint %struct.jmb38x_ms_host* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.jmb38x_ms_host* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.jmb38x_ms_host* %10, %struct.jmb38x_ms_host** %3, align 8
  %11 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %12 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %11, i32 0, i32 3
  %13 = load %struct.memstick_host*, %struct.memstick_host** %12, align 8
  store %struct.memstick_host* %13, %struct.memstick_host** %4, align 8
  %14 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %15 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %22 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %26 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @ETIME, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %33 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %37 = call i32 @jmb38x_ms_complete_cmd(%struct.memstick_host* %36, i32 0)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %40 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local %struct.jmb38x_ms_host* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jmb38x_ms_complete_cmd(%struct.memstick_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
