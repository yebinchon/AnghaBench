; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_mbus_build_fmts_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_mbus_build_fmts_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_format_xlate = type { i64 }
%struct.v4l2_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa_camera_format_xlate* (%struct.v4l2_device*, %struct.v4l2_subdev*, i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)*)* @pxa_mbus_build_fmts_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa_camera_format_xlate* @pxa_mbus_build_fmts_xlate(%struct.v4l2_device* %0, %struct.v4l2_subdev* %1, i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)* %2) #0 {
  %4 = alloca %struct.pxa_camera_format_xlate*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %13 = alloca %struct.pxa_camera_format_xlate*, align 8
  store %struct.v4l2_device* %0, %struct.v4l2_device** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)* %2, i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %12, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %12, i32 0, i32 1
  %16 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %16, i32* %15, align 4
  br label %17

17:                                               ; preds = %24, %3
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = load i32, i32* @pad, align 4
  %20 = load i32, i32* @enum_mbus_code, align 4
  %21 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %18, i32 %19, i32 %20, i32* null, %struct.v4l2_subdev_mbus_code_enum* %12)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %17

30:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)*, i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)** %7, align 8
  %37 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 %36(%struct.v4l2_device* %37, i32 %38, %struct.pxa_camera_format_xlate* null)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.pxa_camera_format_xlate* @ERR_PTR(i32 %43)
  store %struct.pxa_camera_format_xlate* %44, %struct.pxa_camera_format_xlate** %4, align 8
  br label %106

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.pxa_camera_format_xlate* @ERR_PTR(i32 %57)
  store %struct.pxa_camera_format_xlate* %58, %struct.pxa_camera_format_xlate** %4, align 8
  br label %106

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.pxa_camera_format_xlate* @kcalloc(i32 %61, i32 8, i32 %62)
  store %struct.pxa_camera_format_xlate* %63, %struct.pxa_camera_format_xlate** %13, align 8
  %64 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %13, align 8
  %65 = icmp ne %struct.pxa_camera_format_xlate* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.pxa_camera_format_xlate* @ERR_PTR(i32 %68)
  store %struct.pxa_camera_format_xlate* %69, %struct.pxa_camera_format_xlate** %4, align 8
  br label %106

70:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)*, i32 (%struct.v4l2_device*, i32, %struct.pxa_camera_format_xlate*)** %7, align 8
  %77 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %13, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %79, i64 %81
  %83 = call i32 %76(%struct.v4l2_device* %77, i32 %78, %struct.pxa_camera_format_xlate* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %101

87:                                               ; preds = %75
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %71

94:                                               ; preds = %71
  %95 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %13, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %95, i64 %97
  %99 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %13, align 8
  store %struct.pxa_camera_format_xlate* %100, %struct.pxa_camera_format_xlate** %4, align 8
  br label %106

101:                                              ; preds = %86
  %102 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %13, align 8
  %103 = call i32 @kfree(%struct.pxa_camera_format_xlate* %102)
  %104 = load i32, i32* %11, align 4
  %105 = call %struct.pxa_camera_format_xlate* @ERR_PTR(i32 %104)
  store %struct.pxa_camera_format_xlate* %105, %struct.pxa_camera_format_xlate** %4, align 8
  br label %106

106:                                              ; preds = %101, %94, %66, %55, %42
  %107 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %4, align 8
  ret %struct.pxa_camera_format_xlate* %107
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

declare dso_local %struct.pxa_camera_format_xlate* @ERR_PTR(i32) #1

declare dso_local %struct.pxa_camera_format_xlate* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.pxa_camera_format_xlate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
