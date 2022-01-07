; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, %struct.dcmi_framesize, %struct.dcmi_format*, %struct.v4l2_format, i32 }
%struct.dcmi_framesize = type { i32, i32 }
%struct.dcmi_format = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i8*, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Sensor format set to 0x%x %ux%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Buffer format set to %4.4s %ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dcmi*, %struct.v4l2_format*)* @dcmi_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_set_fmt(%struct.stm32_dcmi* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dcmi*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 8
  %7 = alloca %struct.dcmi_format*, align 8
  %8 = alloca %struct.dcmi_framesize, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %12 = bitcast %struct.v4l2_subdev_format* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  %14 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %15, %struct.v4l2_mbus_framefmt** %9, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.v4l2_pix_format* %18, %struct.v4l2_pix_format** %10, align 8
  %19 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %21 = call i32 @dcmi_try_fmt(%struct.stm32_dcmi* %19, %struct.v4l2_format* %20, %struct.dcmi_format** %7, %struct.dcmi_framesize* %8)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %2
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %38 = load %struct.dcmi_format*, %struct.dcmi_format** %7, align 8
  %39 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %36, %struct.v4l2_pix_format* %37, i32 %40)
  %42 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %51 = call i32 @dcmi_pipeline_s_fmt(%struct.stm32_dcmi* %50, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %95

56:                                               ; preds = %35
  %57 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %58 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %65, i32 %68)
  %70 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %71 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 0
  %75 = bitcast i64* %74 to i8*
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %78, i32 %81)
  %83 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %84 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %83, i32 0, i32 3
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %86 = bitcast %struct.v4l2_format* %84 to i8*
  %87 = bitcast %struct.v4l2_format* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = load %struct.dcmi_format*, %struct.dcmi_format** %7, align 8
  %89 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %90 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %89, i32 0, i32 2
  store %struct.dcmi_format* %88, %struct.dcmi_format** %90, align 8
  %91 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %92 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %91, i32 0, i32 1
  %93 = bitcast %struct.dcmi_framesize* %92 to i8*
  %94 = bitcast %struct.dcmi_framesize* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %56, %54, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dcmi_try_fmt(%struct.stm32_dcmi*, %struct.v4l2_format*, %struct.dcmi_format**, %struct.dcmi_framesize*) #2

declare dso_local i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*, i32) #2

declare dso_local i32 @dcmi_pipeline_s_fmt(%struct.stm32_dcmi*, i32*, %struct.v4l2_subdev_format*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
