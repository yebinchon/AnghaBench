; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.s5k6aa = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_mbus_framefmt }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5k6aa_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.s5k6aa*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %10)
  store %struct.s5k6aa* %11, %struct.s5k6aa** %8, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %24 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %22, %struct.v4l2_subdev_pad_config* %23, i32 0)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %9, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 1
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %28 = bitcast %struct.v4l2_mbus_framefmt* %26 to i8*
  %29 = bitcast %struct.v4l2_mbus_framefmt* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

30:                                               ; preds = %3
  %31 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %32 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 1
  %36 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %37 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast %struct.v4l2_mbus_framefmt* %35 to i8*
  %41 = bitcast %struct.v4l2_mbus_framefmt* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %43 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %30, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
