; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.vfe_line = type { i32 }
%struct.vfe_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.vfe_device*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @vfe_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_set_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfe_line*, align 8
  %7 = alloca %struct.vfe_device*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.vfe_line* %10, %struct.vfe_line** %6, align 8
  %11 = load %struct.vfe_line*, %struct.vfe_line** %6, align 8
  %12 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %11)
  store %struct.vfe_device* %12, %struct.vfe_device** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %17 = call i32 @vfe_get(%struct.vfe_device* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %15
  %23 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %24 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32)** %26, align 8
  %28 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %29 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %30 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %27(%struct.vfe_device* %28, i32 %33)
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %37 = call i32 @vfe_put(%struct.vfe_device* %36)
  br label %38

38:                                               ; preds = %35, %22
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @vfe_get(%struct.vfe_device*) #1

declare dso_local i32 @vfe_put(%struct.vfe_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
