; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_aux_ring_buffer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_aux_ring_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dvb_ringbuffer*, i32*, i64)* @aux_ring_buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aux_ring_buffer_write(%struct.dvb_ringbuffer* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dvb_ringbuffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %43, %3
  %12 = load i64, i64* %8, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  %15 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %16 = call i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %15)
  %17 = icmp slt i32 %16, 2048
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %23 = call i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %22)
  %24 = icmp sge i32 %23, 2048
  %25 = zext i1 %24 to i32
  %26 = call i64 @wait_event_interruptible(i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %4, align 8
  br label %60

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %14
  %34 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %35 = call i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer* %44, i32* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %6, align 8
  br label %11

56:                                               ; preds = %11
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %56, %28
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
