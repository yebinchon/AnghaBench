; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_init_mbus_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_init_mbus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_device = type { %struct.ceu_subdev* }
%struct.ceu_subdev = type { %struct.v4l2_subdev*, %struct.ceu_mbus_fmt }
%struct.v4l2_subdev = type { i32 }
%struct.ceu_mbus_fmt = type { i32, i32, i32, i32, i8*, i8* }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CEU_CAMCR_DTARY_8_YUYV = common dso_local global i8* null, align 8
@CEU_CAMCR_DTARY_8_YVYU = common dso_local global i8* null, align 8
@CEU_CAMCR_DTARY_8_UYVY = common dso_local global i8* null, align 8
@CEU_CAMCR_DTARY_8_VYUY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceu_device*)* @ceu_init_mbus_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_init_mbus_fmt(%struct.ceu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceu_device*, align 8
  %4 = alloca %struct.ceu_subdev*, align 8
  %5 = alloca %struct.ceu_mbus_fmt*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  store %struct.ceu_device* %0, %struct.ceu_device** %3, align 8
  %9 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %10 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %9, i32 0, i32 0
  %11 = load %struct.ceu_subdev*, %struct.ceu_subdev** %10, align 8
  store %struct.ceu_subdev* %11, %struct.ceu_subdev** %4, align 8
  %12 = load %struct.ceu_subdev*, %struct.ceu_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %12, i32 0, i32 1
  store %struct.ceu_mbus_fmt* %13, %struct.ceu_mbus_fmt** %5, align 8
  %14 = load %struct.ceu_subdev*, %struct.ceu_subdev** %4, align 8
  %15 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %14, i32 0, i32 0
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  store %struct.v4l2_subdev* %16, %struct.v4l2_subdev** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %8, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %8, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %8, i32 0, i32 2
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %20, i32* %19, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = load i32, i32* @pad, align 4
  %27 = load i32, i32* @enum_mbus_code, align 4
  %28 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %25, i32 %26, i32 %27, i32* null, %struct.v4l2_subdev_mbus_code_enum* %8)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %37 [
    i32 129, label %36
    i32 128, label %36
    i32 131, label %36
    i32 130, label %36
  ]

36:                                               ; preds = %33, %33, %33, %33
  store i32 1, i32* %7, align 4
  br label %38

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %36
  %39 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %21

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %102

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %52 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %54 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %53, i32 0, i32 1
  store i32 8, i32* %54, align 4
  %55 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %101 [
    i32 129, label %57
    i32 128, label %68
    i32 131, label %79
    i32 130, label %90
  ]

57:                                               ; preds = %48
  %58 = load i8*, i8** @CEU_CAMCR_DTARY_8_YUYV, align 8
  %59 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %60 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @CEU_CAMCR_DTARY_8_YVYU, align 8
  %62 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %63 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %65 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %67 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %66, i32 0, i32 3
  store i32 16, i32* %67, align 4
  br label %101

68:                                               ; preds = %48
  %69 = load i8*, i8** @CEU_CAMCR_DTARY_8_YVYU, align 8
  %70 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %71 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @CEU_CAMCR_DTARY_8_YUYV, align 8
  %73 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %74 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %76 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %78 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %77, i32 0, i32 3
  store i32 16, i32* %78, align 4
  br label %101

79:                                               ; preds = %48
  %80 = load i8*, i8** @CEU_CAMCR_DTARY_8_UYVY, align 8
  %81 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %82 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @CEU_CAMCR_DTARY_8_VYUY, align 8
  %84 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %85 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %87 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  %88 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %89 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %88, i32 0, i32 3
  store i32 16, i32* %89, align 4
  br label %101

90:                                               ; preds = %48
  %91 = load i8*, i8** @CEU_CAMCR_DTARY_8_VYUY, align 8
  %92 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %93 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @CEU_CAMCR_DTARY_8_UYVY, align 8
  %95 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %96 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %98 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %5, align 8
  %100 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %99, i32 0, i32 3
  store i32 16, i32* %100, align 4
  br label %101

101:                                              ; preds = %48, %90, %79, %68, %57
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %45
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
