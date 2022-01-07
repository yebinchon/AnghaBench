; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.v4l2_format, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@HIST_INIT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"New ISC configuration in place\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*, %struct.v4l2_format*)* @isc_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_set_fmt(%struct.isc_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isc_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  %11 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %14 = call i32 @isc_try_fmt(%struct.isc_device* %12, %struct.v4l2_format* %13, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @v4l2_fill_mbus_format(i32* %20, i32* %23, i32 %24)
  %26 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %27 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @pad, align 4
  %32 = load i32, i32* @set_fmt, align 4
  %33 = call i32 @v4l2_subdev_call(i32 %30, i32 %31, i32 %32, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %83

38:                                               ; preds = %19
  %39 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %40 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %39, i32 0, i32 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %42 = bitcast %struct.v4l2_format* %40 to i8*
  %43 = bitcast %struct.v4l2_format* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %45 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %38
  %50 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %51 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %57 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %61 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load i32, i32* @HIST_INIT, align 4
  %67 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %68 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %71 = call i32 @isc_reset_awb_ctrls(%struct.isc_device* %70)
  br label %72

72:                                               ; preds = %65, %55, %49, %38
  %73 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %74 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %73, i32 0, i32 2
  %75 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %76 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %75, i32 0, i32 1
  %77 = bitcast %struct.TYPE_8__* %74 to i8*
  %78 = bitcast %struct.TYPE_8__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 8, i1 false)
  %79 = load i32, i32* @debug, align 4
  %80 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %81 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %80, i32 0, i32 0
  %82 = call i32 @v4l2_dbg(i32 1, i32 %79, i32* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %72, %36, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @isc_try_fmt(%struct.isc_device*, %struct.v4l2_format*, i32*) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @isc_reset_awb_ctrls(%struct.isc_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
