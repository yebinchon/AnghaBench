; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vivid_dev = type { i32*, i64, i64*, i32*, i32*, i32 }

@ENODATA = common dso_local global i32 0, align 4
@NO_SIGNAL = common dso_local global i64 0, align 8
@NO_LOCK = common dso_local global i64 0, align 8
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@TPG_QUAL_NOISE = common dso_local global i64 0, align 8
@CURRENT_STD = common dso_local global i64 0, align 8
@SELECTED_STD = common dso_local global i64 0, align 8
@vivid_standard = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_querystd(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vivid_dev* @video_drvdata(%struct.file* %10)
  store %struct.vivid_dev* %11, %struct.vivid_dev** %8, align 8
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %13 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %21 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODATA, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %128

26:                                               ; preds = %3
  %27 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %28 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NO_SIGNAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %26
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NO_LOCK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37, %26
  %49 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %128

51:                                               ; preds = %37
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %53 = call i64 @vivid_is_tv_cap(%struct.vivid_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 5
  %58 = call i64 @tpg_g_quality(i32* %57)
  %59 = load i64, i64* @TPG_QUAL_NOISE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  br label %127

64:                                               ; preds = %55, %51
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %66 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CURRENT_STD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %64
  %76 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %77 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %80 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %126

85:                                               ; preds = %64
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %90 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SELECTED_STD, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %98 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %101 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %125

106:                                              ; preds = %85
  %107 = load i32*, i32** @vivid_standard, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add i32 %113, 1
  %115 = load i32*, i32** @vivid_standard, align 8
  %116 = call i32 @ARRAY_SIZE(i32* %115)
  %117 = urem i32 %114, %116
  %118 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %119 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %122 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  br label %125

125:                                              ; preds = %106, %96
  br label %126

126:                                              ; preds = %125, %75
  br label %127

127:                                              ; preds = %126, %61
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %48, %23
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_tv_cap(%struct.vivid_dev*) #1

declare dso_local i64 @tpg_g_quality(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
