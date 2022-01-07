; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.stimx274 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @imx274_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx274_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.stimx274*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.stimx274* @to_imx274(%struct.v4l2_subdev* %10)
  store %struct.stimx274* %11, %struct.stimx274** %8, align 8
  %12 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %27 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = call i32 @imx274_set_selection_crop(%struct.stimx274* %26, %struct.v4l2_subdev_pad_config* %27, %struct.v4l2_subdev_selection* %28)
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %19
  %31 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %38 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %41 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %42 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @__imx274_change_compose(%struct.stimx274* %40, %struct.v4l2_subdev_pad_config* %41, i32 %44, i32* %47, i32* %50, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %56 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %36
  %61 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %36
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %72

69:                                               ; preds = %30
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %67, %25, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.stimx274* @to_imx274(%struct.v4l2_subdev*) #1

declare dso_local i32 @imx274_set_selection_crop(%struct.stimx274*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__imx274_change_compose(%struct.stimx274*, %struct.v4l2_subdev_pad_config*, i32, i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
