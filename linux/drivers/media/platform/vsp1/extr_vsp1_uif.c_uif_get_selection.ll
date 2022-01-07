; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uif.c_uif_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uif.c_uif_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.vsp1_uif = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@UIF_PAD_SINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @uif_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uif_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.vsp1_uif*, align 8
  %9 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.vsp1_uif* @to_uif(%struct.v4l2_subdev* %12)
  store %struct.vsp1_uif* %13, %struct.vsp1_uif** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UIF_PAD_SINK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %92

22:                                               ; preds = %3
  %23 = load %struct.vsp1_uif*, %struct.vsp1_uif** %8, align 8
  %24 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.vsp1_uif*, %struct.vsp1_uif** %8, align 8
  %28 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %27, i32 0, i32 0
  %29 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %30 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_6__* %28, %struct.v4l2_subdev_pad_config* %29, i32 %32)
  store %struct.v4l2_subdev_pad_config* %33, %struct.v4l2_subdev_pad_config** %9, align 8
  %34 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %35 = icmp ne %struct.v4l2_subdev_pad_config* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %86

39:                                               ; preds = %22
  %40 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %82 [
    i32 129, label %43
    i32 128, label %43
    i32 130, label %67
  ]

43:                                               ; preds = %39, %39
  %44 = load %struct.vsp1_uif*, %struct.vsp1_uif** %8, align 8
  %45 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %44, i32 0, i32 0
  %46 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %47 = load i64, i64* @UIF_PAD_SINK, align 8
  %48 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_6__* %45, %struct.v4l2_subdev_pad_config* %46, i64 %47)
  store %struct.v4l2_mbus_framefmt* %48, %struct.v4l2_mbus_framefmt** %10, align 8
  %49 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %85

67:                                               ; preds = %39
  %68 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %68, i32 0, i32 2
  %70 = load %struct.vsp1_uif*, %struct.vsp1_uif** %8, align 8
  %71 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %70, i32 0, i32 0
  %72 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %73 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_5__* @vsp1_entity_get_pad_selection(%struct.TYPE_6__* %71, %struct.v4l2_subdev_pad_config* %72, i64 %75, i32 %78)
  %80 = bitcast %struct.TYPE_5__* %69 to i8*
  %81 = bitcast %struct.TYPE_5__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 16, i1 false)
  br label %85

82:                                               ; preds = %39
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %67, %43
  br label %86

86:                                               ; preds = %85, %36
  %87 = load %struct.vsp1_uif*, %struct.vsp1_uif** %8, align 8
  %88 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.vsp1_uif* @to_uif(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_6__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_6__*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local %struct.TYPE_5__* @vsp1_entity_get_pad_selection(%struct.TYPE_6__*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

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
