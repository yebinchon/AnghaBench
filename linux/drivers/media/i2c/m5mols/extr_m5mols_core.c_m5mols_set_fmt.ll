; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.m5mols_info = type { i32, i32, i32 }

@m5mols_default_ffmt = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @m5mols_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.m5mols_info*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %14)
  store %struct.m5mols_info* %15, %struct.m5mols_info** %8, align 8
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %17, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %20 = call i32 @__find_resolution(%struct.v4l2_subdev* %18, %struct.v4l2_mbus_framefmt* %19, i32* %11, i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %4, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %27 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.v4l2_mbus_framefmt* @__find_format(%struct.m5mols_info* %26, %struct.v4l2_subdev_pad_config* %27, i32 %30, i32 %31)
  store %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt** %10, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %34 = icmp ne %struct.v4l2_mbus_framefmt* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %75

36:                                               ; preds = %25
  %37 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %38 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m5mols_default_ffmt, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %36
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = bitcast %struct.v4l2_mbus_framefmt* %60 to i8*
  %63 = bitcast %struct.v4l2_mbus_framefmt* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 12, i1 false)
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %66 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %69 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %36
  %71 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %72 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %35, %23
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @__find_resolution(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*, i32*, i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__find_format(%struct.m5mols_info*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

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
