; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_pipeline_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_pipeline_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_6__, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.media_pad = type { i32, i32 }

@EPIPE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_dev*)* @camif_pipeline_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camif_pipeline_validate(%struct.camif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca %struct.v4l2_subdev_format, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %3, align 8
  %7 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %8 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = call %struct.media_pad* @media_entity_remote_pad(i32* %10)
  store %struct.media_pad* %11, %struct.media_pad** %5, align 8
  %12 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %13 = icmp ne %struct.media_pad* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %16 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @is_media_entity_v4l2_subdev(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @EPIPE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %14
  %24 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %25 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %31 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %35 = load i32, i32* @get_fmt, align 4
  %36 = call i32 @v4l2_subdev_call(i32 %33, %struct.media_pad* %34, i32 %35, i32* null, %struct.v4l2_subdev_format* %4)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ENOIOCTLCMD, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EPIPE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %78

47:                                               ; preds = %39, %23
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %52 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %61 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %70 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65, %56, %47
  %75 = load i32, i32* @EPIPE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %74, %44, %20
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, %struct.media_pad*, i32, i32*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
