; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { i32, %struct.TYPE_4__, %struct.isi_format** }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32 }
%struct.isi_format = type { i32, i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@MAX_SUPPORT_WIDTH = common dso_local global i32 0, align 4
@MAX_SUPPORT_HEIGHT = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_isi*, %struct.v4l2_format*, %struct.isi_format**)* @isi_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isi_try_fmt(%struct.atmel_isi* %0, %struct.v4l2_format* %1, %struct.isi_format** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_isi*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.isi_format**, align 8
  %8 = alloca %struct.isi_format*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.v4l2_subdev_pad_config, align 4
  %11 = alloca %struct.v4l2_subdev_format, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_isi* %0, %struct.atmel_isi** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store %struct.isi_format** %2, %struct.isi_format*** %7, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format* %15, %struct.v4l2_pix_format** %9, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  %18 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.isi_format* @find_format_by_fourcc(%struct.atmel_isi* %19, i32 %22)
  store %struct.isi_format* %23, %struct.isi_format** %8, align 8
  %24 = load %struct.isi_format*, %struct.isi_format** %8, align 8
  %25 = icmp ne %struct.isi_format* %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %3
  %27 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %28 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %27, i32 0, i32 2
  %29 = load %struct.isi_format**, %struct.isi_format*** %28, align 8
  %30 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.isi_format*, %struct.isi_format** %29, i64 %34
  %36 = load %struct.isi_format*, %struct.isi_format** %35, align 8
  store %struct.isi_format* %36, %struct.isi_format** %8, align 8
  %37 = load %struct.isi_format*, %struct.isi_format** %8, align 8
  %38 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %26, %3
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAX_SUPPORT_WIDTH, align 4
  %47 = call i8* @clamp(i32 %45, i32 0, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAX_SUPPORT_HEIGHT, align 4
  %55 = call i8* @clamp(i32 %53, i32 0, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %61 = load %struct.isi_format*, %struct.isi_format** %8, align 8
  %62 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @v4l2_fill_mbus_format(i32* %59, %struct.v4l2_pix_format* %60, i32 %63)
  %65 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %66 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @pad, align 4
  %70 = load i32, i32* @set_fmt, align 4
  %71 = call i32 @v4l2_subdev_call(i32 %68, i32 %69, i32 %70, %struct.v4l2_subdev_pad_config* %10, %struct.v4l2_subdev_format* %11)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %42
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %107

76:                                               ; preds = %42
  %77 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %79 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %77, i32* %78)
  %80 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.isi_format*, %struct.isi_format** %8, align 8
  %87 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %94, %97
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.isi_format**, %struct.isi_format*** %7, align 8
  %102 = icmp ne %struct.isi_format** %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %76
  %104 = load %struct.isi_format*, %struct.isi_format** %8, align 8
  %105 = load %struct.isi_format**, %struct.isi_format*** %7, align 8
  store %struct.isi_format* %104, %struct.isi_format** %105, align 8
  br label %106

106:                                              ; preds = %103, %76
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %74
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.isi_format* @find_format_by_fourcc(%struct.atmel_isi*, i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
