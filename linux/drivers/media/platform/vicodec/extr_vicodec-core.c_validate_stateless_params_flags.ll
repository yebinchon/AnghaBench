; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_validate_stateless_params_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_validate_stateless_params_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_fwht_params = type { i32, i32 }
%struct.v4l2_fwht_pixfmt_info = type { i32 }

@FWHT_FL_CHROMA_FULL_WIDTH = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_HEIGHT = common dso_local global i32 0, align 4
@FWHT_FL_COMPONENTS_NUM_MSK = common dso_local global i32 0, align 4
@FWHT_FL_COMPONENTS_NUM_OFFSET = common dso_local global i32 0, align 4
@FWHT_FL_PIXENC_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl_fwht_params*, %struct.v4l2_fwht_pixfmt_info*)* @validate_stateless_params_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_stateless_params_flags(%struct.v4l2_ctrl_fwht_params* %0, %struct.v4l2_fwht_pixfmt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl_fwht_params*, align 8
  %5 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_ctrl_fwht_params* %0, %struct.v4l2_ctrl_fwht_params** %4, align 8
  store %struct.v4l2_fwht_pixfmt_info* %1, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %10 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FWHT_FL_CHROMA_FULL_WIDTH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 2
  store i32 %17, i32* %6, align 4
  %18 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FWHT_FL_CHROMA_FULL_HEIGHT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 2
  store i32 %25, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

31:                                               ; preds = %2
  %32 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FWHT_FL_COMPONENTS_NUM_MSK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @FWHT_FL_COMPONENTS_NUM_OFFSET, align 4
  %38 = ashr i32 %36, %37
  %39 = add nsw i32 1, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FWHT_FL_PIXENC_MSK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @v4l2_fwht_validate_fmt(%struct.v4l2_fwht_pixfmt_info* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %30
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @v4l2_fwht_validate_fmt(%struct.v4l2_fwht_pixfmt_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
