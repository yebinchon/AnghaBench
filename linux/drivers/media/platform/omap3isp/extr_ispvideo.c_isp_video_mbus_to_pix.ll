; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_mbus_to_pix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_mbus_to_pix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.isp_video = type { i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }

@formats = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*)* @isp_video_mbus_to_pix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_mbus_to_pix(%struct.isp_video* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_pix_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_video*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.isp_video* %0, %struct.isp_video** %5, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %6, align 8
  store %struct.v4l2_pix_format* %2, %struct.v4l2_pix_format** %7, align 8
  %11 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %15 = call i32 @memset(%struct.v4l2_pix_format* %14, i32 0, i32 28)
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %44, %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %26

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %49)
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %129

56:                                               ; preds = %47
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = mul i32 %59, %65
  store i32 %66, i32* %9, align 4
  %67 = load %struct.isp_video*, %struct.isp_video** %5, align 8
  %68 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %56
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.isp_video*, %struct.isp_video** %5, align 8
  %75 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @clamp(i32 %72, i32 %73, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %80

78:                                               ; preds = %56
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.isp_video*, %struct.isp_video** %5, align 8
  %82 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.isp_video*, %struct.isp_video** %5, align 8
  %92 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ALIGN(i32 %90, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %85
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = mul i32 %109, %112
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %122 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sub i32 %126, %127
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %95, %55
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.v4l2_pix_format*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
