; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.vfe_line = type { i32 }
%struct.vfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to enable vfe outputs\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to disable vfe outputs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @vfe_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfe_line*, align 8
  %6 = alloca %struct.vfe_device*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.vfe_line* %9, %struct.vfe_line** %5, align 8
  %10 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %11 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %10)
  store %struct.vfe_device* %11, %struct.vfe_device** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %16 = call i32 @vfe_enable(%struct.vfe_line* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.vfe_device*, %struct.vfe_device** %6, align 8
  %21 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19, %14
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %29 = call i32 @vfe_disable(%struct.vfe_line* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.vfe_device*, %struct.vfe_device** %6, align 8
  %34 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @vfe_enable(%struct.vfe_line*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vfe_disable(%struct.vfe_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
