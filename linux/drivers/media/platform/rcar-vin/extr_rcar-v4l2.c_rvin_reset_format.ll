; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_reset_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_reset_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*)* @rvin_reset_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_reset_format(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 1
  %8 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %8, i32 0, i32 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 2
  %14 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %16 = call i32 @vin_to_source(%struct.rvin_dev* %15)
  %17 = load i32, i32* @pad, align 4
  %18 = load i32, i32* @get_fmt, align 4
  %19 = call i32 @v4l2_subdev_call(i32 %16, i32 %17, i32 %18, i32* null, %struct.v4l2_subdev_format* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %28 = call i32 @v4l2_fill_pix_format(%struct.TYPE_7__* %26, i32* %27)
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %30 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %30, i32 0, i32 3
  %32 = call i32 @rvin_format_align(%struct.rvin_dev* %29, %struct.TYPE_7__* %31)
  %33 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %37 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %40 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %47 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %54 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %53, i32 0, i32 2
  %55 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %56 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %55, i32 0, i32 0
  %57 = bitcast %struct.TYPE_6__* %54 to i8*
  %58 = bitcast %struct.TYPE_6__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 24, i1 false)
  %59 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %59, i32 0, i32 1
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %61, i32 0, i32 0
  %63 = bitcast %struct.TYPE_6__* %60 to i8*
  %64 = bitcast %struct.TYPE_6__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %24, %22
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @vin_to_source(%struct.rvin_dev*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @rvin_format_align(%struct.rvin_dev*, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
