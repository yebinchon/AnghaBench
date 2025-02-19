; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.tm6000_fh* }
%struct.tm6000_fh = type { %struct.tm6000_core* }
%struct.tm6000_core = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tm6000_buffer* }
%struct.tm6000_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.tm6000_buffer*)* @free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer(%struct.videobuf_queue* %0, %struct.tm6000_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.tm6000_buffer*, align 8
  %5 = alloca %struct.tm6000_fh*, align 8
  %6 = alloca %struct.tm6000_core*, align 8
  %7 = alloca i64, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.tm6000_buffer* %1, %struct.tm6000_buffer** %4, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.tm6000_fh*, %struct.tm6000_fh** %9, align 8
  store %struct.tm6000_fh* %10, %struct.tm6000_fh** %5, align 8
  %11 = load %struct.tm6000_fh*, %struct.tm6000_fh** %5, align 8
  %12 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %11, i32 0, i32 0
  %13 = load %struct.tm6000_core*, %struct.tm6000_core** %12, align 8
  store %struct.tm6000_core* %13, %struct.tm6000_core** %6, align 8
  %14 = call i32 (...) @in_interrupt()
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %17 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %21 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %22, align 8
  %24 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %4, align 8
  %25 = icmp eq %struct.tm6000_buffer* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %28 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.tm6000_buffer* null, %struct.tm6000_buffer** %29, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %32 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %35, i32 0, i32 0
  %37 = call i32 @videobuf_vmalloc_free(%struct.TYPE_4__* %36)
  %38 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %39 = load %struct.tm6000_buffer*, %struct.tm6000_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.tm6000_buffer, %struct.tm6000_buffer* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @videobuf_vmalloc_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
