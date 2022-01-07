; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_valid_cvt_gtf_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_valid_cvt_gtf_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fract = type { i32, i32 }

@vivid_dv_timings_cap = common dso_local global i32 0, align 4
@V4L2_DV_BT_STD_CVT = common dso_local global i32 0, align 4
@V4L2_DV_BT_STD_GTF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_dv_timings*)* @valid_cvt_gtf_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_cvt_gtf_timings(%struct.v4l2_dv_timings* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_dv_timings*, align 8
  %4 = alloca %struct.v4l2_bt_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_fract, align 4
  store %struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings** %3, align 8
  %9 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %9, i32 0, i32 0
  store %struct.v4l2_bt_timings* %10, %struct.v4l2_bt_timings** %4, align 8
  %11 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %12 = call i32 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %11, i32* @vivid_dv_timings_cap, i32* null, i32* null)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

15:                                               ; preds = %1
  %16 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %17 = call i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %19 = call i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %15
  %31 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @V4L2_DV_BT_STD_CVT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %30, %15
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %53 = call i64 @v4l2_detect_cvt(i32 %38, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, %struct.v4l2_dv_timings* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %98

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @V4L2_DV_BT_STD_GTF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %62, %57
  %70 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %8, i32 0, i32 1
  %77 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %8, i32 0, i32 0
  %78 = call i32 @find_aspect_ratio(i32 %72, i32 %75, i32* %76, i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %82 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %85 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %88 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %91 = bitcast %struct.v4l2_fract* %8 to i64*
  %92 = load i64, i64* %91, align 4
  %93 = call i64 @v4l2_detect_gtf(i32 %79, i32 %80, i32 %83, i32 %86, i32 %89, i64 %92, %struct.v4l2_dv_timings* %90)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %98

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %62
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %95, %55, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings*, i32*, i32*, i32*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings*) #1

declare dso_local i64 @v4l2_detect_cvt(i32, i32, i32, i32, i32, i32, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @find_aspect_ratio(i32, i32, i32*, i32*) #1

declare dso_local i64 @v4l2_detect_gtf(i32, i32, i32, i32, i32, i64, %struct.v4l2_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
