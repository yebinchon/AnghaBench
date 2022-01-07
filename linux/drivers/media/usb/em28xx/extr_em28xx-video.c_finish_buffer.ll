; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_finish_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_finish_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.em28xx_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"[%p/%d] wakeup\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, %struct.em28xx_buffer*)* @finish_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_buffer(%struct.em28xx* %0, %struct.em28xx_buffer* %1) #0 {
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_buffer*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  store %struct.em28xx_buffer* %1, %struct.em28xx_buffer** %4, align 8
  %5 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %4, align 8
  %6 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.em28xx_buffer* %5, i32 %8)
  %10 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %11 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = sext i32 %14 to i64
  %17 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i64 %16, i64* %19, align 8
  %20 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %28 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %33 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = call i32 (...) @ktime_get_ns()
  %38 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %46 = call i32 @vb2_buffer_done(%struct.TYPE_6__* %44, i32 %45)
  ret void
}

declare dso_local i32 @em28xx_isocdbg(i8*, %struct.em28xx_buffer*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
