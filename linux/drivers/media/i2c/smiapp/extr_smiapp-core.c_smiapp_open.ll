; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.smiapp_subdev = type { i32, %struct.smiapp_sensor* }
%struct.smiapp_sensor = type { i32, %struct.smiapp_subdev*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @smiapp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_fh*, align 8
  %5 = alloca %struct.smiapp_subdev*, align 8
  %6 = alloca %struct.smiapp_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev* %11)
  store %struct.smiapp_subdev* %12, %struct.smiapp_subdev** %5, align 8
  %13 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %13, i32 0, i32 1
  %15 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %14, align 8
  store %struct.smiapp_sensor* %15, %struct.smiapp_sensor** %6, align 8
  %16 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %78, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %5, align 8
  %22 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %19
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %26, i32 %29, i32 %30)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev* %32, i32 %35, i32 %36)
  store %struct.v4l2_rect* %37, %struct.v4l2_rect** %9, align 8
  %38 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %5, align 8
  %39 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %40 = call i32 @smiapp_get_native_size(%struct.smiapp_subdev* %38, %struct.v4l2_rect* %39)
  %41 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %52 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %5, align 8
  %62 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %63 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %62, i32 0, i32 1
  %64 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %63, align 8
  %65 = icmp ne %struct.smiapp_subdev* %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %25
  br label %78

67:                                               ; preds = %25
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %69 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev* %68, i32 %71, i32 %72)
  store %struct.v4l2_rect* %73, %struct.v4l2_rect** %10, align 8
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %76 = bitcast %struct.v4l2_rect* %74 to i8*
  %77 = bitcast %struct.v4l2_rect* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  br label %78

78:                                               ; preds = %67, %66
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %19

81:                                               ; preds = %19
  %82 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %83 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  ret i32 0
}

declare dso_local %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @smiapp_get_native_size(%struct.smiapp_subdev*, %struct.v4l2_rect*) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev*, i32, i32) #1

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
