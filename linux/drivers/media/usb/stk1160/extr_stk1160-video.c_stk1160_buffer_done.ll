; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-video.c_stk1160_buffer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-video.c_stk1160_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.stk1160_buffer* }
%struct.stk1160_buffer = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stk1160*)* @stk1160_buffer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1160_buffer_done(%struct.stk1160* %0) #0 {
  %2 = alloca %struct.stk1160*, align 8
  %3 = alloca %struct.stk1160_buffer*, align 8
  store %struct.stk1160* %0, %struct.stk1160** %2, align 8
  %4 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %5 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.stk1160_buffer*, %struct.stk1160_buffer** %6, align 8
  store %struct.stk1160_buffer* %7, %struct.stk1160_buffer** %3, align 8
  %8 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %9 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = sext i32 %10 to i64
  %13 = load %struct.stk1160_buffer*, %struct.stk1160_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.stk1160_buffer, %struct.stk1160_buffer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i64 %12, i64* %15, align 8
  %16 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %17 = load %struct.stk1160_buffer*, %struct.stk1160_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.stk1160_buffer, %struct.stk1160_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = call i32 (...) @ktime_get_ns()
  %21 = load %struct.stk1160_buffer*, %struct.stk1160_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.stk1160_buffer, %struct.stk1160_buffer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.stk1160_buffer*, %struct.stk1160_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.stk1160_buffer, %struct.stk1160_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.stk1160_buffer*, %struct.stk1160_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.stk1160_buffer, %struct.stk1160_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vb2_set_plane_payload(%struct.TYPE_7__* %27, i32 0, i32 %30)
  %32 = load %struct.stk1160_buffer*, %struct.stk1160_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.stk1160_buffer, %struct.stk1160_buffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %36 = call i32 @vb2_buffer_done(%struct.TYPE_7__* %34, i32 %35)
  %37 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %38 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.stk1160_buffer* null, %struct.stk1160_buffer** %39, align 8
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
