; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.go7007 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GO7007_SENSOR_SCALING = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @vidioc_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.go7007* @video_drvdata(%struct.file* %12)
  store %struct.go7007* %13, %struct.go7007** %8, align 8
  %14 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %93

21:                                               ; preds = %3
  %22 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @valid_pixelformat(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %93

30:                                               ; preds = %21
  %31 = load %struct.go7007*, %struct.go7007** %8, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GO7007_SENSOR_SCALING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %30
  %40 = load %struct.go7007*, %struct.go7007** %8, align 8
  %41 = call i32 @get_resolution(%struct.go7007* %40, i32* %9, i32* %10)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %65, %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp sle i32 %43, 2
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, -16
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %58, %59
  %61 = and i32 %60, -16
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %68

64:                                               ; preds = %54, %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %42

68:                                               ; preds = %63, %42
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %93

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %30
  %76 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %77 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = mul nsw i32 1001, %82
  %84 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.go7007*, %struct.go7007** %8, align 8
  %88 = getelementptr inbounds %struct.go7007, %struct.go7007* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %75, %71, %27, %18
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.go7007* @video_drvdata(%struct.file*) #1

declare dso_local i32 @valid_pixelformat(i32) #1

declare dso_local i32 @get_resolution(%struct.go7007*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
