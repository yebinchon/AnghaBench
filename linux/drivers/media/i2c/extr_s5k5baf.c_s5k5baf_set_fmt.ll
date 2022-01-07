; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf_pixfmt = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }
%struct.s5k5baf = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@PAD_CIS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@s5k5baf_formats = common dso_local global %struct.s5k5baf_pixfmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5k5baf_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.s5k5baf*, align 8
  %10 = alloca %struct.s5k5baf_pixfmt*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %8, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %14)
  store %struct.s5k5baf* %15, %struct.s5k5baf** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %26 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %27 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %25, %struct.v4l2_subdev_pad_config* %26, i64 %29)
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = bitcast %struct.v4l2_mbus_framefmt* %30 to i8*
  %33 = bitcast %struct.v4l2_mbus_framefmt* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 20, i1 false)
  store i32 0, i32* %4, align 4
  br label %93

34:                                               ; preds = %3
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PAD_CIS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %42 = call i32 @s5k5baf_try_cis_format(%struct.v4l2_mbus_framefmt* %41)
  store i32 0, i32* %4, align 4
  br label %93

43:                                               ; preds = %34
  %44 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %45 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %48 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %53 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %93

57:                                               ; preds = %43
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %59 = call i64 @s5k5baf_try_isp_format(%struct.v4l2_mbus_framefmt* %58)
  %60 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %61 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.s5k5baf_pixfmt*, %struct.s5k5baf_pixfmt** @s5k5baf_formats, align 8
  %63 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %64 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.s5k5baf_pixfmt, %struct.s5k5baf_pixfmt* %62, i64 %65
  store %struct.s5k5baf_pixfmt* %66, %struct.s5k5baf_pixfmt** %10, align 8
  %67 = load %struct.s5k5baf_pixfmt*, %struct.s5k5baf_pixfmt** %10, align 8
  %68 = getelementptr inbounds %struct.s5k5baf_pixfmt, %struct.s5k5baf_pixfmt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.s5k5baf_pixfmt*, %struct.s5k5baf_pixfmt** %10, align 8
  %73 = getelementptr inbounds %struct.s5k5baf_pixfmt, %struct.s5k5baf_pixfmt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %78 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %84 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %88 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.s5k5baf*, %struct.s5k5baf** %9, align 8
  %90 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %57, %51, %40, %24
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @s5k5baf_try_cis_format(%struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @s5k5baf_try_isp_format(%struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
