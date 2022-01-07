; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_g_fmt_vid_out_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_g_fmt_vid_out_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.vivid_dev = type { i32, i32*, %struct.v4l2_rect, i32*, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_g_fmt_vid_out_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
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
  %15 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %14, i32 0, i32 2
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
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %145

29:                                               ; preds = %3
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %34 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %37 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %60 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %61 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %66 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %71 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %74 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %29
  %78 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %79 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %29
  %82 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %83 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %88 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  br label %119

89:                                               ; preds = %81
  %90 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %91 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %96 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %99 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %102 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 7
  %106 = sdiv i32 %105, 8
  %107 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %108 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %106, %110
  %112 = call i64 @copy_to_user(i32* %97, i32* %100, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %94
  %115 = load i32, i32* @EFAULT, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %145

117:                                              ; preds = %94
  br label %118

118:                                              ; preds = %117, %89
  br label %119

119:                                              ; preds = %118, %86
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %124 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %122
  %128 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %129 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %132 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i64 @copy_to_user(i32* %130, i32* %133, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load i32, i32* @EFAULT, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %145

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %122, %119
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %140, %114, %26
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @copy_to_user(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
