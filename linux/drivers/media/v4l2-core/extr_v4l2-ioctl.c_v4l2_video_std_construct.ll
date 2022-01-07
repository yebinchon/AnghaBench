; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l2_video_std_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l2_video_std_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_standard = type { i32, i32, i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_video_std_construct(%struct.v4l2_standard* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_standard*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.v4l2_standard* %0, %struct.v4l2_standard** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %11, i32 0, i32 3
  %13 = call i32 @v4l2_video_std_frame_period(i32 %10, i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @V4L2_STD_525_60, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 525, i32 625
  %20 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strscpy(i32 %24, i8* %25, i32 4)
  ret i32 0
}

declare dso_local i32 @v4l2_video_std_frame_period(i32, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
