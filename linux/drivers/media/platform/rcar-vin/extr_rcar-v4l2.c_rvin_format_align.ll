; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32 }

@RVIN_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@RVIN_DEFAULT_FIELD = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Format %ux%u bpl: %u size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvin_dev*, %struct.v4l2_pix_format*)* @rvin_format_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_format_align(%struct.rvin_dev* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %6 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %7 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rvin_format_from_pixel(%struct.rvin_dev* %6, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @RVIN_DEFAULT_FORMAT, align 4
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
    i32 133, label %20
    i32 129, label %20
    i32 130, label %20
    i32 131, label %20
    i32 132, label %20
    i32 134, label %21
  ]

20:                                               ; preds = %16, %16, %16, %16, %16, %16
  br label %32

21:                                               ; preds = %16
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  store i32 132, i32* %23, align 4
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %25, align 4
  br label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @RVIN_DEFAULT_FIELD, align 4
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %21, %20
  %33 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_PIX_FMT_NV16, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 5, i32 1
  store i32 %40, i32* %5, align 4
  %41 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %41, i32 0, i32 4
  %43 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 1
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @v4l_bound_align_image(i32* %42, i32 2, i32 %47, i32 %48, i32* %50, i32 4, i32 %55, i32 2, i32 0)
  %57 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %59 = call i32 @rvin_format_bytesperline(%struct.rvin_dev* %57, %struct.v4l2_pix_format* %58)
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %63 = call i32 @rvin_format_sizeimage(%struct.v4l2_pix_format* %62)
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @vin_dbg(%struct.rvin_dev* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72, i32 %75, i32 %78)
  ret void
}

declare dso_local i32 @rvin_format_from_pixel(%struct.rvin_dev*, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rvin_format_bytesperline(%struct.rvin_dev*, %struct.v4l2_pix_format*) #1

declare dso_local i32 @rvin_format_sizeimage(%struct.v4l2_pix_format*) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
