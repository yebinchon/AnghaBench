; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_streamer_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_streamer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_stream = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32* (%struct.TYPE_2__*, i32*)* }

@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vimc_streamer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_streamer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vimc_stream*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vimc_stream*
  store %struct.vimc_stream* %7, %struct.vimc_stream** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = call i32 (...) @set_freezable()
  br label %9

9:                                                ; preds = %52, %1
  %10 = call i32 (...) @try_to_freeze()
  %11 = call i64 (...) @kthread_should_stop()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %58

14:                                               ; preds = %9
  %15 = load %struct.vimc_stream*, %struct.vimc_stream** %3, align 8
  %16 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %49, %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load %struct.vimc_stream*, %struct.vimc_stream** %3, align 8
  %24 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32* (%struct.TYPE_2__*, i32*)*, i32* (%struct.TYPE_2__*, i32*)** %30, align 8
  %32 = load %struct.vimc_stream*, %struct.vimc_stream** %3, align 8
  %33 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* %31(%struct.TYPE_2__* %38, i32* %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @IS_ERR(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %22
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %19

52:                                               ; preds = %47, %19
  %53 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %54 = call i32 @set_current_state(i32 %53)
  %55 = load i32, i32* @HZ, align 4
  %56 = sdiv i32 %55, 60
  %57 = call i32 @schedule_timeout(i32 %56)
  br label %9

58:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
