; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_crop_compose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_crop_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_rect = type { i32 }
%struct.smiapp_subdev = type { %struct.v4l2_rect, %struct.v4l2_rect* }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@SMIAPP_PAD_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect**, %struct.v4l2_rect**, i32)* @smiapp_get_crop_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smiapp_get_crop_compose(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_rect** %2, %struct.v4l2_rect** %3, i32 %4) #0 {
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca %struct.v4l2_rect**, align 8
  %9 = alloca %struct.v4l2_rect**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smiapp_subdev*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store %struct.v4l2_rect** %2, %struct.v4l2_rect*** %8, align 8
  store %struct.v4l2_rect** %3, %struct.v4l2_rect*** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev* %13)
  store %struct.smiapp_subdev* %14, %struct.smiapp_subdev** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %5
  %19 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %20 = icmp ne %struct.v4l2_rect** %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %11, align 8
  %31 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %30, i32 0, i32 1
  %32 = load %struct.v4l2_rect*, %struct.v4l2_rect** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i64 %34
  %36 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %36, i64 %38
  store %struct.v4l2_rect* %35, %struct.v4l2_rect** %39, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %12, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %22

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %46 = icmp ne %struct.v4l2_rect** %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %11, align 8
  %49 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %48, i32 0, i32 0
  %50 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  store %struct.v4l2_rect* %49, %struct.v4l2_rect** %50, align 8
  br label %51

51:                                               ; preds = %47, %44
  br label %101

52:                                               ; preds = %5
  %53 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %54 = icmp ne %struct.v4l2_rect** %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %57, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %65 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev* %64, %struct.v4l2_subdev_pad_config* %65, i32 %66)
  %68 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %68, i64 %70
  store %struct.v4l2_rect* %67, %struct.v4l2_rect** %71, align 8
  %72 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %72, i64 %74
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %75, align 8
  %77 = icmp ne %struct.v4l2_rect* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %56

84:                                               ; preds = %56
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %87 = icmp ne %struct.v4l2_rect** %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %90 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %91 = load i32, i32* @SMIAPP_PAD_SINK, align 4
  %92 = call %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev* %89, %struct.v4l2_subdev_pad_config* %90, i32 %91)
  %93 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  store %struct.v4l2_rect* %92, %struct.v4l2_rect** %93, align 8
  %94 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %94, align 8
  %96 = icmp ne %struct.v4l2_rect* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  br label %100

100:                                              ; preds = %88, %85
  br label %101

101:                                              ; preds = %100, %51
  ret void
}

declare dso_local %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
