; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c___smiapp_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c___smiapp_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.smiapp_subdev = type { i64, %struct.v4l2_rect, %struct.v4l2_rect* }
%struct.v4l2_rect = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @__smiapp_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smiapp_get_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.smiapp_subdev*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev* %9)
  store %struct.smiapp_subdev* %10, %struct.smiapp_subdev** %7, align 8
  %11 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.TYPE_2__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %19, %struct.v4l2_subdev_pad_config* %20, i64 %23)
  %25 = bitcast %struct.TYPE_2__* %18 to i8*
  %26 = bitcast %struct.TYPE_2__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 16, i1 false)
  br label %71

27:                                               ; preds = %3
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %32 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %37 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %36, i32 0, i32 2
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %37, align 8
  %39 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %40 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i64 %41
  store %struct.v4l2_rect* %42, %struct.v4l2_rect** %8, align 8
  br label %46

43:                                               ; preds = %27
  %44 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %45 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %44, i32 0, i32 1
  store %struct.v4l2_rect* %45, %struct.v4l2_rect** %8, align 8
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %48 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @__smiapp_get_mbus_code(%struct.v4l2_subdev* %47, i64 %50)
  %52 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %68 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %46, %16
  ret i32 0
}

declare dso_local %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev*) #1

declare dso_local %struct.TYPE_2__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__smiapp_get_mbus_code(%struct.v4l2_subdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
