; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_buffer_filled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_buffer_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32 }
%struct.tm6000_dmaqueue = type { i32 }
%struct.tm6000_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@V4L2_DEBUG_ISOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"[%p/%d] wakeup\0A\00", align 1
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm6000_core*, %struct.tm6000_dmaqueue*, %struct.tm6000_buffer*)* @buffer_filled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_filled(%struct.tm6000_core* %0, %struct.tm6000_dmaqueue* %1, %struct.tm6000_buffer* %2) #0 {
  %4 = alloca %struct.tm6000_core*, align 8
  %5 = alloca %struct.tm6000_dmaqueue*, align 8
  %6 = alloca %struct.tm6000_buffer*, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %4, align 8
  store %struct.tm6000_dmaqueue* %1, %struct.tm6000_dmaqueue** %5, align 8
  store %struct.tm6000_buffer* %2, %struct.tm6000_buffer** %6, align 8
  %7 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %8 = load i32, i32* @V4L2_DEBUG_ISOC, align 4
  %9 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %6, align 8
  %10 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dprintk(%struct.tm6000_core* %7, i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.tm6000_buffer* %9, i32 %13)
  %15 = load i32, i32* @VIDEOBUF_DONE, align 4
  %16 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 4
  %19 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = call i32 (...) @ktime_get_ns()
  %25 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @wake_up(i32* %34)
  ret void
}

declare dso_local i32 @dprintk(%struct.tm6000_core*, i32, i8*, %struct.tm6000_buffer*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
