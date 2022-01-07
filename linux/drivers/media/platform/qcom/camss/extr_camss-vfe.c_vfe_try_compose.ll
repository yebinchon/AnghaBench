; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_try_compose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_try_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@MSM_VFE_PAD_SINK = common dso_local global i32 0, align 4
@SCALER_RATIO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect*, i32)* @vfe_try_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_try_compose(%struct.vfe_line* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_rect* %2, i32 %3) #0 {
  %5 = alloca %struct.vfe_line*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.vfe_line* %0, %struct.vfe_line** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %11 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %12 = load i32, i32* @MSM_VFE_PAD_SINK, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.v4l2_mbus_framefmt* @__vfe_get_format(%struct.vfe_line* %10, %struct.v4l2_subdev_pad_config* %11, i32 %12, i32 %13)
  store %struct.v4l2_mbus_framefmt* %14, %struct.v4l2_mbus_framefmt** %9, align 8
  %15 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %4
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %28
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SCALER_RATIO_MAX, align 4
  %50 = mul nsw i32 %48, %49
  %51 = icmp sgt i32 %45, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SCALER_RATIO_MAX, align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @SCALER_RATIO_MAX, align 4
  %60 = sdiv i32 %58, %59
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %52, %42
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -2
  store i32 %67, i32* %65, align 4
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SCALER_RATIO_MAX, align 4
  %75 = mul nsw i32 %73, %74
  %76 = icmp sgt i32 %70, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %63
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SCALER_RATIO_MAX, align 4
  %82 = add nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @SCALER_RATIO_MAX, align 4
  %85 = sdiv i32 %83, %84
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %63
  %89 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 16
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %94, i32 0, i32 0
  store i32 16, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 1
  store i32 4, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %96
  ret void
}

declare dso_local %struct.v4l2_mbus_framefmt* @__vfe_get_format(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
