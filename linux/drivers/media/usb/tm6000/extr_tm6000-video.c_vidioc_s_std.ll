; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tm6000_fh = type { i32, i32, %struct.tm6000_core* }
%struct.tm6000_core = type { i32, i32, i32, i32 }

@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm6000_fh*, align 8
  %10 = alloca %struct.tm6000_core*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tm6000_fh*
  store %struct.tm6000_fh* %12, %struct.tm6000_fh** %9, align 8
  %13 = load %struct.tm6000_fh*, %struct.tm6000_fh** %9, align 8
  %14 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %13, i32 0, i32 2
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %14, align 8
  store %struct.tm6000_core* %15, %struct.tm6000_core** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  %18 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  %20 = call i32 @tm6000_init_analog_mode(%struct.tm6000_core* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  %22 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tm6000_fh*, %struct.tm6000_fh** %9, align 8
  %25 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  %27 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tm6000_fh*, %struct.tm6000_fh** %9, align 8
  %30 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %3
  %36 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  %37 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %36, i32 0, i32 1
  %38 = load i32, i32* @video, align 4
  %39 = load i32, i32* @s_std, align 4
  %40 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  %41 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @v4l2_device_call_all(i32* %37, i32 0, i32 %38, i32 %39, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @tm6000_init_analog_mode(%struct.tm6000_core*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
