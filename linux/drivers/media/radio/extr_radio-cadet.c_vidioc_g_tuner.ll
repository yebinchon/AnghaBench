; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.cadet = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.cadet*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cadet* @video_drvdata(%struct.file* %9)
  store %struct.cadet* %10, %struct.cadet** %8, align 8
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %109

18:                                               ; preds = %3
  %19 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %29, %33
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.cadet*, %struct.cadet** %8, align 8
  %50 = getelementptr inbounds %struct.cadet, %struct.cadet* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %18
  %54 = load %struct.cadet*, %struct.cadet** %8, align 8
  %55 = call i32 @cadet_getstereo(%struct.cadet* %54)
  %56 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cadet*, %struct.cadet** %8, align 8
  %59 = getelementptr inbounds %struct.cadet, %struct.cadet* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @outb(i32 3, i64 %60)
  %62 = load %struct.cadet*, %struct.cadet** %8, align 8
  %63 = getelementptr inbounds %struct.cadet, %struct.cadet* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @inb(i64 %65)
  %67 = and i32 %66, 127
  %68 = load %struct.cadet*, %struct.cadet** %8, align 8
  %69 = getelementptr inbounds %struct.cadet, %struct.cadet* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  %72 = call i32 @outb(i32 %67, i64 %71)
  %73 = call i32 @mdelay(i32 100)
  %74 = load %struct.cadet*, %struct.cadet** %8, align 8
  %75 = getelementptr inbounds %struct.cadet, %struct.cadet* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @outb(i32 3, i64 %76)
  %78 = load %struct.cadet*, %struct.cadet** %8, align 8
  %79 = getelementptr inbounds %struct.cadet, %struct.cadet* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  %82 = call i32 @inb(i64 %81)
  %83 = and i32 %82, 128
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %53
  %86 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %87 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %53
  br label %100

92:                                               ; preds = %18
  %93 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %93, i32 0, i32 1
  store i32 8320, i32* %94, align 4
  %95 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %95, i32 0, i32 2
  store i32 26400, i32* %96, align 8
  %97 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %98 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %92, %91
  %101 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %102 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.cadet*, %struct.cadet** %8, align 8
  %105 = getelementptr inbounds %struct.cadet, %struct.cadet* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %100, %15
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.cadet* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @cadet_getstereo(%struct.cadet*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
