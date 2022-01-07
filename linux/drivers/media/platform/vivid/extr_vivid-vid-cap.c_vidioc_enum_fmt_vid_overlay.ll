; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enum_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enum_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_fmt = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32 }
%struct.vivid_dev = type { i64 }

@ENOTTY = common dso_local global i32 0, align 4
@formats_ovl = common dso_local global %struct.vivid_fmt* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_enum_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.vivid_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vivid_dev* @video_drvdata(%struct.file* %10)
  store %struct.vivid_dev* %11, %struct.vivid_dev** %8, align 8
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %13 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTTY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vivid_fmt*, %struct.vivid_fmt** @formats_ovl, align 8
  %24 = call i64 @ARRAY_SIZE(%struct.vivid_fmt* %23)
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.vivid_fmt*, %struct.vivid_fmt** @formats_ovl, align 8
  %31 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %30, i64 %33
  store %struct.vivid_fmt* %34, %struct.vivid_fmt** %9, align 8
  %35 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %36 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %26, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.vivid_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
