; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_mc_validate_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_mc_validate_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.media_pad = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*, %struct.v4l2_subdev*, %struct.media_pad*)* @rvin_mc_validate_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_mc_validate_format(%struct.rvin_dev* %0, %struct.v4l2_subdev* %1, %struct.media_pad* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvin_dev*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.v4l2_subdev_format, align 8
  store %struct.rvin_dev* %0, %struct.rvin_dev** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.media_pad* %2, %struct.media_pad** %7, align 8
  %9 = bitcast %struct.v4l2_subdev_format* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 2
  %11 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %13 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %18 = load i32, i32* @get_fmt, align 4
  %19 = call i64 @v4l2_subdev_call(%struct.v4l2_subdev* %16, %struct.media_pad* %17, i32 %18, i32* null, %struct.v4l2_subdev_format* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EPIPE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %91

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %34 [
    i32 137, label %28
    i32 139, label %28
    i32 138, label %28
    i32 140, label %28
    i32 141, label %28
  ]

28:                                               ; preds = %24, %24, %24, %24, %24
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %33 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EPIPE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %91

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %57 [
    i32 128, label %41
    i32 135, label %41
    i32 131, label %41
    i32 132, label %41
    i32 133, label %41
    i32 134, label %41
    i32 129, label %41
    i32 130, label %41
    i32 136, label %42
  ]

41:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  br label %60

42:                                               ; preds = %37
  %43 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %44 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %53 [
    i32 128, label %47
    i32 135, label %47
    i32 131, label %47
    i32 132, label %48
    i32 133, label %48
    i32 134, label %48
    i32 129, label %48
    i32 130, label %48
  ]

47:                                               ; preds = %42, %42, %42
  br label %56

48:                                               ; preds = %42, %42, %42, %42, %42
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* %50, align 8
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EPIPE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %48, %47
  br label %60

57:                                               ; preds = %37
  %58 = load i32, i32* @EPIPE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %91

60:                                               ; preds = %56, %41
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %65 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %87, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %75 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %84 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79, %69, %60
  %88 = load i32, i32* @EPIPE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %87, %57, %53, %34, %21
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.media_pad*, i32, i32*, %struct.v4l2_subdev_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
