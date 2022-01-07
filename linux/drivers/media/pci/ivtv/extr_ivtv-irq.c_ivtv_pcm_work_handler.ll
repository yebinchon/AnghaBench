; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_pcm_work_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_pcm_work_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32 (i32, i32*, i64)*, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32, i32, i32 }
%struct.ivtv_buffer = type { i64, i64, i64 }

@IVTV_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_pcm_work_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_pcm_work_handler(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca %struct.ivtv_buffer*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 2
  %7 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %8 = load i64, i64* @IVTV_ENC_STREAM_TYPE_PCM, align 8
  %9 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %7, i64 %8
  store %struct.ivtv_stream* %9, %struct.ivtv_stream** %3, align 8
  br label %10

10:                                               ; preds = %1, %57
  %11 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %12 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %13 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %12, i32 0, i32 2
  %14 = call %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream* %11, i32* %13)
  store %struct.ivtv_buffer* %14, %struct.ivtv_buffer** %4, align 8
  %15 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %16 = icmp eq %struct.ivtv_buffer* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %20 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i32 0, i32 1
  %21 = call %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream* %18, i32* %20)
  store %struct.ivtv_buffer* %21, %struct.ivtv_buffer** %4, align 8
  br label %22

22:                                               ; preds = %17, %10
  %23 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %24 = icmp eq %struct.ivtv_buffer* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %63

26:                                               ; preds = %22
  %27 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %26
  %35 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 1
  %37 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %36, align 8
  %38 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = call i32 %37(i32 %40, i32* %48, i64 %55)
  br label %57

57:                                               ; preds = %34, %26
  %58 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %59 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %60 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %61 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %60, i32 0, i32 0
  %62 = call i32 @ivtv_enqueue(%struct.ivtv_stream* %58, %struct.ivtv_buffer* %59, i32* %61)
  br label %10

63:                                               ; preds = %25
  ret void
}

declare dso_local %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream*, i32*) #1

declare dso_local i32 @ivtv_enqueue(%struct.ivtv_stream*, %struct.ivtv_buffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
