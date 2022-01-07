; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i64, i64, i32, i32 }
%struct.vfe_line = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)* @vfe_enum_mbus_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %8 = alloca %struct.vfe_line*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.vfe_line* %11, %struct.vfe_line** %8, align 8
  %12 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %22 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %67

28:                                               ; preds = %17
  %29 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %30 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %66

40:                                               ; preds = %3
  %41 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %42 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %43 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %44 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.v4l2_mbus_framefmt* @__vfe_get_format(%struct.vfe_line* %41, %struct.v4l2_subdev_pad_config* %42, i64 %43, i32 %46)
  store %struct.v4l2_mbus_framefmt* %47, %struct.v4l2_mbus_framefmt** %9, align 8
  %48 = load %struct.vfe_line*, %struct.vfe_line** %8, align 8
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @vfe_src_pad_code(%struct.vfe_line* %48, i32 %51, i64 %54, i32 0)
  %56 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %40
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65, %28
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %62, %25
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__vfe_get_format(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local i32 @vfe_src_pad_code(%struct.vfe_line*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
