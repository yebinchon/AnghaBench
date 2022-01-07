; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.csis_state = type { i32, %struct.csis_pix_format* }
%struct.csis_pix_format = type { i32 }

@CSIS_PAD_SOURCE = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5pcsis_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcsis_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.csis_state*, align 8
  %9 = alloca %struct.csis_pix_format*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.csis_state* @sd_to_csis_state(%struct.v4l2_subdev* %11)
  store %struct.csis_state* %12, %struct.csis_state** %8, align 8
  %13 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %14 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.v4l2_mbus_framefmt* @__s5pcsis_get_format(%struct.csis_state* %13, %struct.v4l2_subdev_pad_config* %14, i32 %17)
  store %struct.v4l2_mbus_framefmt* %18, %struct.v4l2_mbus_framefmt** %10, align 8
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CSIS_PAD_SOURCE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %3
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %26 = icmp ne %struct.v4l2_mbus_framefmt* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %29 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %31, i32 0, i32 2
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %34 = bitcast %struct.v4l2_mbus_framefmt* %32 to i8*
  %35 = bitcast %struct.v4l2_mbus_framefmt* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %37 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %27, %24
  store i32 0, i32* %4, align 4
  br label %69

40:                                               ; preds = %3
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 2
  %43 = call %struct.csis_pix_format* @s5pcsis_try_format(%struct.v4l2_mbus_framefmt* %42)
  store %struct.csis_pix_format* %43, %struct.csis_pix_format** %9, align 8
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %45 = icmp ne %struct.v4l2_mbus_framefmt* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %48 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %51 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %51, i32 0, i32 2
  %53 = bitcast %struct.v4l2_mbus_framefmt* %50 to i8*
  %54 = bitcast %struct.v4l2_mbus_framefmt* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.csis_pix_format*, %struct.csis_pix_format** %9, align 8
  %62 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %63 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %62, i32 0, i32 1
  store %struct.csis_pix_format* %61, %struct.csis_pix_format** %63, align 8
  br label %64

64:                                               ; preds = %60, %46
  %65 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %66 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %40
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.csis_state* @sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__s5pcsis_get_format(%struct.csis_state*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.csis_pix_format* @s5pcsis_try_format(%struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
