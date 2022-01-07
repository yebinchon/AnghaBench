; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_reset_video_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_reset_video_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.TYPE_4__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_dmaqueue = type { i32, i64, i64, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_reset_video_buffer(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca %struct.cx231xx_dmaqueue*, align 8
  %5 = alloca %struct.cx231xx_buffer*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %4, align 8
  %6 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %7 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %12 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %15 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %20 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %19, i32 0, i32 3
  store i32 1, i32* %20, align 8
  br label %24

21:                                               ; preds = %10
  %22 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %23 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %22, i32 0, i32 3
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %34, align 8
  store %struct.cx231xx_buffer* %35, %struct.cx231xx_buffer** %5, align 8
  br label %42

36:                                               ; preds = %25
  %37 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %40, align 8
  store %struct.cx231xx_buffer* %41, %struct.cx231xx_buffer** %5, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %5, align 8
  %44 = icmp eq %struct.cx231xx_buffer* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %47 = call i32 @get_next_buf(%struct.cx231xx_dmaqueue* %46, %struct.cx231xx_buffer** %5)
  %48 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %49 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %51 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %50, i32 0, i32 3
  store i32 0, i32* %51, align 8
  %52 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %53 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  br label %54

54:                                               ; preds = %45, %42
  %55 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 1
  %59 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %60 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %62 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  ret void
}

declare dso_local i32 @get_next_buf(%struct.cx231xx_dmaqueue*, %struct.cx231xx_buffer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
