; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32 }
%struct.saa7134_dev = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SAA7134_INPUT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SAA7134_NO_INPUT = common dso_local global i64 0, align 8
@saa7134_input_name = common dso_local global i32* null, align 8
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@SAA7134_STATUS_VIDEO1 = common dso_local global i32 0, align 4
@SAA7134_STATUS_VIDEO2 = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@V4L2_IN_ST_MACROVISION = common dso_local global i32 0, align 4
@SAA7134_NORMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %15)
  store %struct.saa7134_dev* %16, %struct.saa7134_dev** %8, align 8
  %17 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %116

26:                                               ; preds = %3
  %27 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @card_in(%struct.saa7134_dev* %27, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SAA7134_NO_INPUT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %116

40:                                               ; preds = %26
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @saa7134_input_name, align 8
  %48 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @card_in(%struct.saa7134_dev* %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strscpy(i32 %46, i32 %55, i32 4)
  %57 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @card_in(%struct.saa7134_dev* %57, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  switch i64 %62, label %67 [
    i64 129, label %63
    i64 128, label %63
  ]

63:                                               ; preds = %40, %40
  %64 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %65 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %71

67:                                               ; preds = %40
  %68 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %69 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %74 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %71
  %78 = load i32, i32* @SAA7134_STATUS_VIDEO1, align 4
  %79 = call i32 @saa_readb(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @SAA7134_STATUS_VIDEO2, align 4
  %81 = call i32 @saa_readb(i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, 64
  %84 = icmp ne i32 0, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %87 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %77
  %92 = load i32, i32* %14, align 4
  %93 = and i32 %92, 64
  %94 = icmp ne i32 0, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %97 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %91
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, 14
  %104 = icmp ne i32 0, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @V4L2_IN_ST_MACROVISION, align 4
  %107 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %101
  br label %112

112:                                              ; preds = %111, %71
  %113 = load i32, i32* @SAA7134_NORMS, align 4
  %114 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %37, %23
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @saa_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
