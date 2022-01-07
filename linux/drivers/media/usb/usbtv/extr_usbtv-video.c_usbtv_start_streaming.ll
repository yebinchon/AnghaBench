; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.usbtv = type { i32, i64, i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @usbtv_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbtv*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %8 = call %struct.usbtv* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.usbtv* %8, %struct.usbtv** %6, align 8
  %9 = load %struct.usbtv*, %struct.usbtv** %6, align 8
  %10 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.usbtv*, %struct.usbtv** %6, align 8
  %18 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.usbtv*, %struct.usbtv** %6, align 8
  %20 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.usbtv*, %struct.usbtv** %6, align 8
  %22 = call i32 @usbtv_start(%struct.usbtv* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.usbtv* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @usbtv_start(%struct.usbtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
