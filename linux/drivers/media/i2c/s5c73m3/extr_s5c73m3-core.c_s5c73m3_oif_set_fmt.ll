; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.s5c73m3_frame_size = type { i32 }
%struct.s5c73m3 = type { i32, i32, i64, i32, %struct.s5c73m3_frame_size** }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@RES_ISP = common dso_local global i64 0, align 8
@RES_JPEG = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5c73m3_oif_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_oif_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.s5c73m3_frame_size*, align 8
  %8 = alloca %struct.s5c73m3*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  store %struct.s5c73m3_frame_size* null, %struct.s5c73m3_frame_size** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev* %11)
  store %struct.s5c73m3* %12, %struct.s5c73m3** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %14 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %17 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %19 = call i32 @s5c73m3_oif_try_format(%struct.s5c73m3* %16, %struct.v4l2_subdev_pad_config* %17, %struct.v4l2_subdev_format* %18, %struct.s5c73m3_frame_size** %7)
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %3
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %26, %struct.v4l2_subdev_pad_config* %27, i32 %30)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %9, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 2
  %35 = bitcast %struct.v4l2_mbus_framefmt* %32 to i8*
  %36 = bitcast %struct.v4l2_mbus_framefmt* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 130
  br i1 %40, label %41, label %57

41:                                               ; preds = %25
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %43 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %44 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %42, %struct.v4l2_subdev_pad_config* %43, i32 128)
  store %struct.v4l2_mbus_framefmt* %44, %struct.v4l2_mbus_framefmt** %9, align 8
  %45 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %41, %25
  br label %98

58:                                               ; preds = %3
  %59 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %83 [
    i32 130, label %62
    i32 129, label %69
    i32 128, label %76
  ]

62:                                               ; preds = %58
  %63 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %7, align 8
  %64 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %65 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %64, i32 0, i32 4
  %66 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %65, align 8
  %67 = load i64, i64* @RES_ISP, align 8
  %68 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %66, i64 %67
  store %struct.s5c73m3_frame_size* %63, %struct.s5c73m3_frame_size** %68, align 8
  br label %86

69:                                               ; preds = %58
  %70 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %7, align 8
  %71 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %72 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %71, i32 0, i32 4
  %73 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %72, align 8
  %74 = load i64, i64* @RES_JPEG, align 8
  %75 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %73, i64 %74
  store %struct.s5c73m3_frame_size* %70, %struct.s5c73m3_frame_size** %75, align 8
  br label %86

76:                                               ; preds = %58
  %77 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %82 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %86

83:                                               ; preds = %58
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %76, %69, %62
  %87 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %88 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %97

94:                                               ; preds = %86
  %95 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %96 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %57
  %99 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %100 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5c73m3_oif_try_format(%struct.s5c73m3*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.s5c73m3_frame_size**) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
