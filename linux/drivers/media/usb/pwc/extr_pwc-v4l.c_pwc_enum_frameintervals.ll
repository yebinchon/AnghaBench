; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pwc_device = type { i32 }

@PSZ_MAX = common dso_local global i32 0, align 4
@pwc_image_sizes = common dso_local global i64** null, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @pwc_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.pwc_device* @video_drvdata(%struct.file* %11)
  store %struct.pwc_device* %12, %struct.pwc_device** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @PSZ_MAX, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i64**, i64*** @pwc_image_sizes, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64*, i64** %18, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %17
  %30 = load i64**, i64*** @pwc_image_sizes, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %30, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %9, align 4
  br label %47

43:                                               ; preds = %29, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %13

47:                                               ; preds = %41, %13
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %47
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %82

59:                                               ; preds = %50
  %60 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %61 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pwc_get_fps(%struct.pwc_device* %60, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %59
  %72 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %73 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %68, %56
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.pwc_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pwc_get_fps(%struct.pwc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
