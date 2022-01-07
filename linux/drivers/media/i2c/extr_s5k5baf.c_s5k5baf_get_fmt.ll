; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf_pixfmt = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }
%struct.s5k5baf = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@PAD_CIS = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@s5k5baf_formats = common dso_local global %struct.s5k5baf_pixfmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5k5baf_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.s5k5baf*, align 8
  %9 = alloca %struct.s5k5baf_pixfmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %11)
  store %struct.s5k5baf* %12, %struct.s5k5baf** %8, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %19, %struct.v4l2_subdev_pad_config* %20, i64 %23)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %10, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 2
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %28 = bitcast %struct.v4l2_mbus_framefmt* %26 to i8*
  %29 = bitcast %struct.v4l2_mbus_framefmt* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 20, i1 false)
  store i32 0, i32* %4, align 4
  br label %78

30:                                               ; preds = %3
  %31 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %31, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt** %10, align 8
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PAD_CIS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %40 = call i32 @s5k5baf_try_cis_format(%struct.v4l2_mbus_framefmt* %39)
  store i32 0, i32* %4, align 4
  br label %78

41:                                               ; preds = %30
  %42 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.s5k5baf*, %struct.s5k5baf** %8, align 8
  %46 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.s5k5baf_pixfmt*, %struct.s5k5baf_pixfmt** @s5k5baf_formats, align 8
  %49 = load %struct.s5k5baf*, %struct.s5k5baf** %8, align 8
  %50 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.s5k5baf_pixfmt, %struct.s5k5baf_pixfmt* %48, i64 %51
  store %struct.s5k5baf_pixfmt* %52, %struct.s5k5baf_pixfmt** %9, align 8
  %53 = load %struct.s5k5baf*, %struct.s5k5baf** %8, align 8
  %54 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.s5k5baf*, %struct.s5k5baf** %8, align 8
  %60 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.s5k5baf_pixfmt*, %struct.s5k5baf_pixfmt** %9, align 8
  %66 = getelementptr inbounds %struct.s5k5baf_pixfmt, %struct.s5k5baf_pixfmt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.s5k5baf_pixfmt*, %struct.s5k5baf_pixfmt** %9, align 8
  %71 = getelementptr inbounds %struct.s5k5baf_pixfmt, %struct.s5k5baf_pixfmt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.s5k5baf*, %struct.s5k5baf** %8, align 8
  %76 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %41, %38, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @s5k5baf_try_cis_format(%struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
