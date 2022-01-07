; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vidioc_enum_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vidioc_enum_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_enum_dv_timings = type { i32 }
%struct.vivid_dev = type { i32 }
%struct.video_device = type { i64 }

@VFL_DIR_RX = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@vivid_dv_timings_cap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_enum_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_enum_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_enum_dv_timings* %2, %struct.v4l2_enum_dv_timings** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vivid_dev* @video_drvdata(%struct.file* %10)
  store %struct.vivid_dev* %11, %struct.vivid_dev** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %9, align 8
  %14 = load %struct.video_device*, %struct.video_device** %9, align 8
  %15 = getelementptr inbounds %struct.video_device, %struct.video_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VFL_DIR_RX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %21 = call i32 @vivid_is_hdmi_cap(%struct.vivid_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENODATA, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %29 = call i32 @vivid_is_hdmi_out(%struct.vivid_dev* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENODATA, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %37 = call i32 @v4l2_enum_dv_timings_cap(%struct.v4l2_enum_dv_timings* %36, i32* @vivid_dv_timings_cap, i32* null, i32* null)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %31, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_is_hdmi_out(%struct.vivid_dev*) #1

declare dso_local i32 @v4l2_enum_dv_timings_cap(%struct.v4l2_enum_dv_timings*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
