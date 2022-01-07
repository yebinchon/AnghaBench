; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_buffer_filled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_buffer_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.cx231xx_dmaqueue = type { i32 }
%struct.cx231xx_buffer = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"[%p/%d] wakeup\0A\00", align 1
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx231xx*, %struct.cx231xx_dmaqueue*, %struct.cx231xx_buffer*)* @buffer_filled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_filled(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_buffer* %2) #0 {
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.cx231xx_dmaqueue*, align 8
  %6 = alloca %struct.cx231xx_buffer*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %5, align 8
  store %struct.cx231xx_buffer* %2, %struct.cx231xx_buffer** %6, align 8
  %7 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %8 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %9 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cx231xx_isocdbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.cx231xx_buffer* %7, i32 %11)
  %13 = load i32, i32* @VIDEOBUF_DONE, align 4
  %14 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = call i32 (...) @ktime_get_ns()
  %23 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %40

35:                                               ; preds = %3
  %36 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = call i32 @wake_up(i32* %47)
  ret void
}

declare dso_local i32 @cx231xx_isocdbg(i8*, %struct.cx231xx_buffer*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
