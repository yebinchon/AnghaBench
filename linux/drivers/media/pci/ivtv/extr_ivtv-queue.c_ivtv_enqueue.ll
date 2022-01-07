; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-queue.c_ivtv_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-queue.c_ivtv_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i64, %struct.ivtv_queue }
%struct.ivtv_queue = type { i32, i32, i32, i32 }
%struct.ivtv_buffer = type { i64, i64, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_enqueue(%struct.ivtv_stream* %0, %struct.ivtv_buffer* %1, %struct.ivtv_queue* %2) #0 {
  %4 = alloca %struct.ivtv_stream*, align 8
  %5 = alloca %struct.ivtv_buffer*, align 8
  %6 = alloca %struct.ivtv_queue*, align 8
  %7 = alloca i64, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %4, align 8
  store %struct.ivtv_buffer* %1, %struct.ivtv_buffer** %5, align 8
  store %struct.ivtv_queue* %2, %struct.ivtv_queue** %6, align 8
  %8 = load %struct.ivtv_queue*, %struct.ivtv_queue** %6, align 8
  %9 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %10 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %9, i32 0, i32 2
  %11 = icmp eq %struct.ivtv_queue* %8, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %12, %3
  %22 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %23 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %26, i32 0, i32 2
  %28 = load %struct.ivtv_queue*, %struct.ivtv_queue** %6, align 8
  %29 = getelementptr inbounds %struct.ivtv_queue, %struct.ivtv_queue* %28, i32 0, i32 3
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.ivtv_queue*, %struct.ivtv_queue** %6, align 8
  %32 = getelementptr inbounds %struct.ivtv_queue, %struct.ivtv_queue* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %36 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ivtv_queue*, %struct.ivtv_queue** %6, align 8
  %39 = getelementptr inbounds %struct.ivtv_queue, %struct.ivtv_queue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load %struct.ivtv_queue*, %struct.ivtv_queue** %6, align 8
  %52 = getelementptr inbounds %struct.ivtv_queue, %struct.ivtv_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %58 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
