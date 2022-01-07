; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.pwc_device = type { i64, i32 }

@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_PWC1 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_PWC2 = common dso_local global i64 0, align 8
@PSZ_MAX = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_DISCRETE = common dso_local global i32 0, align 4
@pwc_image_sizes = common dso_local global i8*** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @pwc_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.pwc_device* @video_drvdata(%struct.file* %11)
  store %struct.pwc_device* %12, %struct.pwc_device** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %3
  %22 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_PIX_FMT_PWC1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %29 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @DEVICE_USE_CODEC1(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_PIX_FMT_PWC2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %33
  %40 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %41 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @DEVICE_USE_CODEC23(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %39, %27, %3
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %89, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PSZ_MAX, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %52 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 1, %55
  %57 = and i64 %53, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %89

60:                                               ; preds = %50
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %10, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @V4L2_FRMSIZE_TYPE_DISCRETE, align 4
  %66 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i8***, i8**** @pwc_image_sizes, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8**, i8*** %68, i64 %70
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load i8***, i8**** @pwc_image_sizes, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8**, i8*** %78, i64 %80
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  store i32 0, i32* %4, align 4
  br label %96

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %46

92:                                               ; preds = %46
  br label %93

93:                                               ; preds = %92, %39, %33
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %64
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.pwc_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i64 @DEVICE_USE_CODEC23(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
