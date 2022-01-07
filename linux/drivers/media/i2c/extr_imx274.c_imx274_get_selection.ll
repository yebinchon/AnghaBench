; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.v4l2_subdev_selection = type { i64, i32, i64, %struct.v4l2_rect }
%struct.stimx274 = type { i32, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP_BOUNDS = common dso_local global i32 0, align 4
@IMX274_MAX_WIDTH = common dso_local global i32 0, align 4
@IMX274_MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @imx274_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx274_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.stimx274*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.stimx274* @to_imx274(%struct.v4l2_subdev* %12)
  store %struct.stimx274* %13, %struct.stimx274** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %117

21:                                               ; preds = %3
  %22 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @V4L2_SEL_TGT_CROP_BOUNDS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @IMX274_MAX_WIDTH, align 4
  %35 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @IMX274_MAX_HEIGHT, align 4
  %39 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %117

42:                                               ; preds = %21
  %43 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %49, i32 0, i32 1
  store %struct.v4l2_rect* %50, %struct.v4l2_rect** %9, align 8
  %51 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %51, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %52, %struct.v4l2_mbus_framefmt** %10, align 8
  br label %58

53:                                               ; preds = %42
  %54 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %55 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %54, i32 0, i32 2
  store %struct.v4l2_rect* %55, %struct.v4l2_rect** %9, align 8
  %56 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %57 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %56, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %57, %struct.v4l2_mbus_framefmt** %10, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %60 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %109 [
    i32 128, label %65
    i32 129, label %71
    i32 130, label %90
  ]

65:                                               ; preds = %58
  %66 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %66, i32 0, i32 3
  %68 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %69 = bitcast %struct.v4l2_rect* %67 to i8*
  %70 = bitcast %struct.v4l2_rect* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 24, i1 false)
  br label %112

71:                                               ; preds = %58
  %72 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  br label %112

90:                                               ; preds = %58
  %91 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %98 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %104 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %112

109:                                              ; preds = %58
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109, %90, %71, %65
  %113 = load %struct.stimx274*, %struct.stimx274** %8, align 8
  %114 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %27, %18
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.stimx274* @to_imx274(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

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
