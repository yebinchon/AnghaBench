; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vimc_deb_device = type { %struct.TYPE_2__, i32, i32, %struct.v4l2_mbus_framefmt, i64 }
%struct.TYPE_2__ = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"%s: sink format update: old:%dx%d (0x%x, %d, %d, %d, %d) new:%dx%d (0x%x, %d, %d, %d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @vimc_deb_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_deb_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.vimc_deb_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.vimc_deb_device* %11, %struct.vimc_deb_device** %8, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %8, align 8
  %19 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %117

25:                                               ; preds = %17
  %26 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %8, align 8
  %27 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %26, i32 0, i32 3
  store %struct.v4l2_mbus_framefmt* %27, %struct.v4l2_mbus_framefmt** %9, align 8
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %30 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %31 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %29, %struct.v4l2_subdev_pad_config* %30, i32 0)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %9, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_SRC(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %39, i32 0, i32 1
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %42 = bitcast %struct.v4l2_mbus_framefmt* %40 to i8*
  %43 = bitcast %struct.v4l2_mbus_framefmt* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 28, i1 false)
  %44 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %8, align 8
  %45 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  br label %116

50:                                               ; preds = %32
  %51 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %51, i32 0, i32 1
  %53 = call i32 @vimc_deb_adjust_sink_fmt(%struct.v4l2_mbus_framefmt* %52)
  %54 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %8, align 8
  %55 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %8, align 8
  %58 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %85, i32 %89, i32 %93, i32 %97, i32 %101, i32 %105, i32 %109)
  %111 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %112 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %112, i32 0, i32 1
  %114 = bitcast %struct.v4l2_mbus_framefmt* %111 to i8*
  %115 = bitcast %struct.v4l2_mbus_framefmt* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 8 %115, i64 28, i1 false)
  br label %116

116:                                              ; preds = %50, %38
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %22
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i64 @IS_SRC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vimc_deb_adjust_sink_fmt(%struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
