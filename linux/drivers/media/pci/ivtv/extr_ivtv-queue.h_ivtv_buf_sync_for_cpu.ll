; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-queue.h_ivtv_buf_sync_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-queue.h_ivtv_buf_sync_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ivtv_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv_stream*, %struct.ivtv_buffer*)* @ivtv_buf_sync_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_buf_sync_for_cpu(%struct.ivtv_stream* %0, %struct.ivtv_buffer* %1) #0 {
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca %struct.ivtv_buffer*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %3, align 8
  store %struct.ivtv_buffer* %1, %struct.ivtv_buffer** %4, align 8
  %5 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %6 = call i64 @ivtv_use_dma(%struct.ivtv_stream* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %10 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 256
  %21 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %22 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_dma_sync_single_for_cpu(i32 %13, i32 %16, i64 %20, i32 %23)
  br label %25

25:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @ivtv_use_dma(%struct.ivtv_stream*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
