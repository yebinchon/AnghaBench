; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.cx231xx_buffer*)* @free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer(%struct.videobuf_queue* %0, %struct.cx231xx_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.cx231xx_buffer*, align 8
  %5 = alloca %struct.cx231xx_fh*, align 8
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca i64, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.cx231xx_buffer* %1, %struct.cx231xx_buffer** %4, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %9, align 8
  store %struct.cx231xx_fh* %10, %struct.cx231xx_fh** %5, align 8
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %5, align 8
  %12 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %11, i32 0, i32 0
  %13 = load %struct.cx231xx*, %struct.cx231xx** %12, align 8
  store %struct.cx231xx* %13, %struct.cx231xx** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = call i32 (...) @in_interrupt()
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %24, align 8
  %26 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %27 = icmp eq %struct.cx231xx_buffer* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.cx231xx_buffer* null, %struct.cx231xx_buffer** %32, align 8
  br label %33

33:                                               ; preds = %28, %2
  %34 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %39, i32 0, i32 0
  %41 = call i32 @videobuf_vmalloc_free(%struct.TYPE_6__* %40)
  %42 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %43 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @videobuf_vmalloc_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
