; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-queue.c_ivtv_flush_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-queue.c_ivtv_flush_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_flush_queues(%struct.ivtv_stream* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %2, align 8
  %3 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %4 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %4, i32 0, i32 4
  %6 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %7 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %6, i32 0, i32 0
  %8 = call i32 @ivtv_queue_move(%struct.ivtv_stream* %3, i32* %5, i32* null, i32* %7, i32 0)
  %9 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %10 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %10, i32 0, i32 3
  %12 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %13 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %12, i32 0, i32 0
  %14 = call i32 @ivtv_queue_move(%struct.ivtv_stream* %9, i32* %11, i32* null, i32* %13, i32 0)
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i32 0, i32 2
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 0
  %20 = call i32 @ivtv_queue_move(%struct.ivtv_stream* %15, i32* %17, i32* null, i32* %19, i32 0)
  %21 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %22 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %23 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %22, i32 0, i32 1
  %24 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %24, i32 0, i32 0
  %26 = call i32 @ivtv_queue_move(%struct.ivtv_stream* %21, i32* %23, i32* null, i32* %25, i32 0)
  ret void
}

declare dso_local i32 @ivtv_queue_move(%struct.ivtv_stream*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
