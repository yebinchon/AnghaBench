; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cobalt_stream = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@ADV76XX_PAD_HDMI_PORT_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @cobalt_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cobalt_stream*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %9)
  store %struct.cobalt_stream* %10, %struct.cobalt_stream** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp uge i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %18 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %17, i32 0, i32 2
  %19 = call i64 @vb2_is_busy(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %27 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %29 = call i32 @cobalt_enable_input(%struct.cobalt_stream* %28)
  %30 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %31 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %43

35:                                               ; preds = %24
  %36 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %37 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @video, align 4
  %40 = load i32, i32* @s_routing, align 4
  %41 = load i32, i32* @ADV76XX_PAD_HDMI_PORT_A, align 4
  %42 = call i32 @v4l2_subdev_call(i32 %38, i32 %39, i32 %40, i32 %41, i32 0, i32 0)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %34, %21, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @cobalt_enable_input(%struct.cobalt_stream*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
