; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_vsp1_histogram_buffer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_vsp1_histogram_buffer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_histogram = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vsp1_pipeline* }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_histogram_buffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_histogram_buffer_complete(%struct.vsp1_histogram* %0, %struct.vsp1_histogram_buffer* %1, i64 %2) #0 {
  %4 = alloca %struct.vsp1_histogram*, align 8
  %5 = alloca %struct.vsp1_histogram_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vsp1_pipeline*, align 8
  %8 = alloca i64, align 8
  store %struct.vsp1_histogram* %0, %struct.vsp1_histogram** %4, align 8
  store %struct.vsp1_histogram_buffer* %1, %struct.vsp1_histogram_buffer** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %4, align 8
  %10 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %11, align 8
  store %struct.vsp1_pipeline* %12, %struct.vsp1_pipeline** %7, align 8
  %13 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %14 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.vsp1_histogram_buffer, %struct.vsp1_histogram_buffer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = call i32 (...) @ktime_get_ns()
  %20 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.vsp1_histogram_buffer, %struct.vsp1_histogram_buffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.vsp1_histogram_buffer, %struct.vsp1_histogram_buffer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @vb2_set_plane_payload(%struct.TYPE_7__* %26, i32 0, i64 %27)
  %29 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.vsp1_histogram_buffer, %struct.vsp1_histogram_buffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %33 = call i32 @vb2_buffer_done(%struct.TYPE_7__* %31, i32 %32)
  %34 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %4, align 8
  %35 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %34, i32 0, i32 1
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %4, align 8
  %39 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %4, align 8
  %41 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %40, i32 0, i32 2
  %42 = call i32 @wake_up(i32* %41)
  %43 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %4, align 8
  %44 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
