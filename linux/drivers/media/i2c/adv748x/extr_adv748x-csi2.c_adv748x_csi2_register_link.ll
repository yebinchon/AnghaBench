; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_register_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_register_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_csi2 = type { %struct.v4l2_subdev*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.v4l2_subdev = type { i32, i32 }

@ADV748X_CSI2_SINK = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_csi2*, %struct.v4l2_device*, %struct.v4l2_subdev*, i32, i32)* @adv748x_csi2_register_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_csi2_register_link(%struct.adv748x_csi2* %0, %struct.v4l2_device* %1, %struct.v4l2_subdev* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adv748x_csi2*, align 8
  %8 = alloca %struct.v4l2_device*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adv748x_csi2* %0, %struct.adv748x_csi2** %7, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %8, align 8
  store %struct.v4l2_subdev* %2, %struct.v4l2_subdev** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %5
  %18 = load %struct.v4l2_device*, %struct.v4l2_device** %8, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %20 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %18, %struct.v4l2_subdev* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %54

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %5
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 0
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %7, align 8
  %31 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @ADV748X_CSI2_SINK, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  br label %39

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = call i32 @media_create_pad_link(i32* %28, i32 %29, i32* %32, i32 %33, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %51 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %7, align 8
  %52 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %51, i32 0, i32 0
  store %struct.v4l2_subdev* %50, %struct.v4l2_subdev** %52, align 8
  br label %53

53:                                               ; preds = %49, %46
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %44, %23
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
