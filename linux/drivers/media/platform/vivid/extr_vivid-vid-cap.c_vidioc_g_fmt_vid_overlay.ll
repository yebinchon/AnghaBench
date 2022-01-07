; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_g_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_g_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { i32, i32*, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.vivid_dev = type { i32, i32*, i32*, i32, i32, i32, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_g_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.v4l2_window*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vivid_dev* @video_drvdata(%struct.file* %12)
  store %struct.vivid_dev* %13, %struct.vivid_dev** %8, align 8
  %14 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %14, i32 0, i32 7
  store %struct.v4l2_rect* %15, %struct.v4l2_rect** %9, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.v4l2_window* %18, %struct.v4l2_window** %10, align 8
  %19 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %20 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOTTY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %135

29:                                               ; preds = %3
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %34 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %37 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %60 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %63 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %66 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ugt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %29
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %29
  %74 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %75 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  br label %109

81:                                               ; preds = %73
  %82 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %83 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %81
  %87 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %88 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %91 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 7
  %97 = sdiv i32 %96, 8
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = call i64 @copy_to_user(i32* %89, i32* %92, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %86
  %105 = load i32, i32* @EFAULT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %135

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %81
  br label %109

109:                                              ; preds = %108, %78
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %114 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %119 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %122 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i64 @copy_to_user(i32* %120, i32* %123, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = load i32, i32* @EFAULT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %135

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %112, %109
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %130, %104, %26
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @copy_to_user(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
