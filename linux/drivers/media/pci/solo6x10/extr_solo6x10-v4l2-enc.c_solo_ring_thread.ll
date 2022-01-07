; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_ring_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_ring_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @solo_ring_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_ring_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.solo_dev*
  store %struct.solo_dev* %6, %struct.solo_dev** %3, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @DECLARE_WAITQUEUE(i32 %7, i32 %8)
  %10 = call i32 (...) @set_freezable()
  %11 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %12 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %11, i32 0, i32 0
  %13 = call i32 @add_wait_queue(i32* %12, i32* @wait)
  br label %14

14:                                               ; preds = %25, %1
  %15 = load i32, i32* @HZ, align 4
  %16 = call i64 @schedule_timeout_interruptible(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @ERESTARTSYS, align 8
  %19 = sub nsw i64 0, %18
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = call i64 (...) @kthread_should_stop()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %14
  br label %29

25:                                               ; preds = %21
  %26 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %27 = call i32 @solo_handle_ring(%struct.solo_dev* %26)
  %28 = call i32 (...) @try_to_freeze()
  br label %14

29:                                               ; preds = %24
  %30 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 0
  %32 = call i32 @remove_wait_queue(i32* %31, i32* @wait)
  ret i32 0
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @solo_handle_ring(%struct.solo_dev*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
