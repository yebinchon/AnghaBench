; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_edid = type { i32 }
%struct.cobalt_stream = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@get_edid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_edid*)* @cobalt_g_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_g_edid(%struct.file* %0, i8* %1, %struct.v4l2_edid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_edid*, align 8
  %8 = alloca %struct.cobalt_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_edid* %2, %struct.v4l2_edid** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %11)
  store %struct.cobalt_stream* %12, %struct.cobalt_stream** %8, align 8
  %13 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %20 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 2
  %25 = icmp sge i32 %18, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %33 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @get_edid, align 4
  %37 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %38 = call i32 @v4l2_subdev_call(i32 %34, i32 %35, i32 %36, %struct.v4l2_edid* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %29, %26
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
