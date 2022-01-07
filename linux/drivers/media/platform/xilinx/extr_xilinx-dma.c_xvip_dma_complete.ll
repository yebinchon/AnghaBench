; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_dma_buffer = type { %struct.TYPE_6__, i32, %struct.xvip_dma* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.xvip_dma = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xvip_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xvip_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xvip_dma_buffer*, align 8
  %4 = alloca %struct.xvip_dma*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.xvip_dma_buffer*
  store %struct.xvip_dma_buffer* %6, %struct.xvip_dma_buffer** %3, align 8
  %7 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %7, i32 0, i32 2
  %9 = load %struct.xvip_dma*, %struct.xvip_dma** %8, align 8
  store %struct.xvip_dma* %9, %struct.xvip_dma** %4, align 8
  %10 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %11 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %17 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %16, i32 0, i32 2
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %20 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %24 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = sext i32 %25 to i64
  %28 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i64 %27, i64* %30, align 8
  %31 = call i32 (...) @ktime_get_ns()
  %32 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %3, align 8
  %37 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.xvip_dma*, %struct.xvip_dma** %4, align 8
  %40 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vb2_set_plane_payload(%struct.TYPE_7__* %38, i32 0, i32 %42)
  %44 = load %struct.xvip_dma_buffer*, %struct.xvip_dma_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.xvip_dma_buffer, %struct.xvip_dma_buffer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %48 = call i32 @vb2_buffer_done(%struct.TYPE_7__* %46, i32 %47)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
