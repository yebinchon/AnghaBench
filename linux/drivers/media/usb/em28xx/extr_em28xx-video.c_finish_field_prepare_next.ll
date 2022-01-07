; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_finish_field_prepare_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_finish_field_prepare_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i64, i64 }
%struct.em28xx_buffer = type { i64, i64 }
%struct.em28xx_dmaqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.em28xx_buffer* (%struct.em28xx*, %struct.em28xx_buffer*, %struct.em28xx_dmaqueue*)* @finish_field_prepare_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.em28xx_buffer* @finish_field_prepare_next(%struct.em28xx* %0, %struct.em28xx_buffer* %1, %struct.em28xx_dmaqueue* %2) #0 {
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.em28xx_buffer*, align 8
  %6 = alloca %struct.em28xx_dmaqueue*, align 8
  %7 = alloca %struct.em28xx_v4l2*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.em28xx_buffer* %1, %struct.em28xx_buffer** %5, align 8
  store %struct.em28xx_dmaqueue* %2, %struct.em28xx_dmaqueue** %6, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 0
  %10 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  store %struct.em28xx_v4l2* %10, %struct.em28xx_v4l2** %7, align 8
  %11 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %12 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %17 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15, %3
  %21 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %5, align 8
  %22 = icmp ne %struct.em28xx_buffer* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %25 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %5, align 8
  %26 = call i32 @finish_buffer(%struct.em28xx* %24, %struct.em28xx_buffer* %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %29 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %6, align 8
  %30 = call %struct.em28xx_buffer* @get_next_buf(%struct.em28xx* %28, %struct.em28xx_dmaqueue* %29)
  store %struct.em28xx_buffer* %30, %struct.em28xx_buffer** %5, align 8
  br label %31

31:                                               ; preds = %27, %15
  %32 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %5, align 8
  %33 = icmp ne %struct.em28xx_buffer* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %36 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %31
  %43 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %5, align 8
  ret %struct.em28xx_buffer* %43
}

declare dso_local i32 @finish_buffer(%struct.em28xx*, %struct.em28xx_buffer*) #1

declare dso_local %struct.em28xx_buffer* @get_next_buf(%struct.em28xx*, %struct.em28xx_dmaqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
