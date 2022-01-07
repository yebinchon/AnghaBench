; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_thread_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_context = type { i32 }

@PVR2_TRACE_CTXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pvr2_context thread start\00", align 1
@pvr2_context_notify_first = common dso_local global %struct.pvr2_context* null, align 8
@pvr2_context_sync_data = common dso_local global i32 0, align 4
@pvr2_context_cleaned_flag = common dso_local global i32 0, align 4
@pvr2_context_cleanup_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"pvr2_context thread cleaned up\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pvr2_context thread end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pvr2_context_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_context_thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pvr2_context*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %5 = call i32 @pvr2_trace(i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %26, %1
  br label %7

7:                                                ; preds = %10, %6
  %8 = load %struct.pvr2_context*, %struct.pvr2_context** @pvr2_context_notify_first, align 8
  store %struct.pvr2_context* %8, %struct.pvr2_context** %3, align 8
  %9 = icmp ne %struct.pvr2_context* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %12 = call i32 @pvr2_context_set_notify(%struct.pvr2_context* %11, i32 0)
  %13 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %14 = call i32 @pvr2_context_check(%struct.pvr2_context* %13)
  br label %7

15:                                               ; preds = %7
  %16 = load i32, i32* @pvr2_context_sync_data, align 4
  %17 = load %struct.pvr2_context*, %struct.pvr2_context** @pvr2_context_notify_first, align 8
  %18 = icmp ne %struct.pvr2_context* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = call i64 (...) @pvr2_context_shutok()
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ true, %15 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event_interruptible(i32 %16, i32 %24)
  br label %26

26:                                               ; preds = %22
  %27 = call i64 (...) @pvr2_context_shutok()
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %6, label %30

30:                                               ; preds = %26
  store i32 1, i32* @pvr2_context_cleaned_flag, align 4
  %31 = call i32 @wake_up(i32* @pvr2_context_cleanup_data)
  %32 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %33 = call i32 @pvr2_trace(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @pvr2_context_sync_data, align 4
  %35 = call i32 (...) @kthread_should_stop()
  %36 = call i32 @wait_event_interruptible(i32 %34, i32 %35)
  %37 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %38 = call i32 @pvr2_trace(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @pvr2_context_set_notify(%struct.pvr2_context*, i32) #1

declare dso_local i32 @pvr2_context_check(%struct.pvr2_context*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @pvr2_context_shutok(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
