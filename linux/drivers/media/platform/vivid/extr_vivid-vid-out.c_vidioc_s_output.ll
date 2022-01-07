; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_s_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_s_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vivid_dev = type { i32, i32, i64*, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SVID = common dso_local global i64 0, align 8
@V4L2_STD_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_s_output(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %13 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %97

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %97

26:                                               ; preds = %19
  %27 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %28 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %27, i32 0, i32 9
  %29 = call i64 @vb2_is_busy(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 8
  %34 = call i64 @vb2_is_busy(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %97

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SVID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load i64, i64* @V4L2_STD_ALL, align 8
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  br label %63

59:                                               ; preds = %39
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %61 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %65 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %72 = call i32 @vivid_update_format_out(%struct.vivid_dev* %71)
  %73 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %74 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %77 = call i64 @vivid_is_hdmi_out(%struct.vivid_dev* %76)
  %78 = call i32 @v4l2_ctrl_activate(i32 %75, i64 %77)
  %79 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %80 = call i64 @vivid_is_hdmi_out(%struct.vivid_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %63
  %83 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %84 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %90 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @v4l2_ctrl_s_ctrl(i32 %85, i32 %94)
  br label %96

96:                                               ; preds = %82, %63
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %36, %25, %16
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @vivid_update_format_out(%struct.vivid_dev*) #1

declare dso_local i32 @v4l2_ctrl_activate(i32, i64) #1

declare dso_local i64 @vivid_is_hdmi_out(%struct.vivid_dev*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
