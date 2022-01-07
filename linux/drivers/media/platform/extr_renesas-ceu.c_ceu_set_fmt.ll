; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_device = type { i32, i32, %struct.ceu_subdev* }
%struct.ceu_subdev = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceu_device*, %struct.v4l2_format*)* @ceu_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_set_fmt(%struct.ceu_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceu_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.ceu_subdev*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.ceu_device* %0, %struct.ceu_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %11 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %12 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %11, i32 0, i32 2
  %13 = load %struct.ceu_subdev*, %struct.ceu_subdev** %12, align 8
  store %struct.ceu_subdev* %13, %struct.ceu_subdev** %6, align 8
  %14 = load %struct.ceu_subdev*, %struct.ceu_subdev** %6, align 8
  %15 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %14, i32 0, i32 0
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  store %struct.v4l2_subdev* %16, %struct.v4l2_subdev** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %23 = call i32 @__ceu_try_fmt(%struct.ceu_device* %21, %struct.v4l2_format* %22, i32* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @v4l2_fill_mbus_format_mplane(%struct.TYPE_4__* %32, i32* %35)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %38 = load i32, i32* @pad, align 4
  %39 = load i32, i32* @set_fmt, align 4
  %40 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %37, i32 %38, i32 %39, i32* null, %struct.v4l2_subdev_format* %10)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %28
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %51 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %53 = load %struct.ceu_device*, %struct.ceu_device** %4, align 8
  %54 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %43, %26
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__ceu_try_fmt(%struct.ceu_device*, %struct.v4l2_format*, i32*) #2

declare dso_local i32 @v4l2_fill_mbus_format_mplane(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
