; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, %struct.v4l2_rect, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vsp1_histogram = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@HISTO_PAD_SINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @histo_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histo_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.vsp1_histogram*, align 8
  %9 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev* %13)
  store %struct.vsp1_histogram* %14, %struct.vsp1_histogram** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HISTO_PAD_SINK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %117

23:                                               ; preds = %3
  %24 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %25 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %29 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %28, i32 0, i32 0
  %30 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %31 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_4__* %29, %struct.v4l2_subdev_pad_config* %30, i32 %33)
  store %struct.v4l2_subdev_pad_config* %34, %struct.v4l2_subdev_pad_config** %9, align 8
  %35 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %36 = icmp ne %struct.v4l2_subdev_pad_config* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %111

40:                                               ; preds = %23
  %41 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %107 [
    i32 132, label %44
    i32 131, label %44
    i32 129, label %68
    i32 128, label %68
    i32 133, label %92
    i32 130, label %92
  ]

44:                                               ; preds = %40, %40
  %45 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %46 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %45, i32 0, i32 0
  %47 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %48 = load i64, i64* @HISTO_PAD_SINK, align 8
  %49 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.TYPE_4__* %46, %struct.v4l2_subdev_pad_config* %47, i64 %48, i32 130)
  store %struct.v4l2_rect* %49, %struct.v4l2_rect** %11, align 8
  %50 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  %53 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %54, i32 0, i32 2
  store i32 0, i32* %55, align 4
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %63 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %110

68:                                               ; preds = %40, %40
  %69 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %70 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %69, i32 0, i32 0
  %71 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %72 = load i64, i64* @HISTO_PAD_SINK, align 8
  %73 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__* %70, %struct.v4l2_subdev_pad_config* %71, i64 %72)
  store %struct.v4l2_mbus_framefmt* %73, %struct.v4l2_mbus_framefmt** %10, align 8
  %74 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 2
  store i32 0, i32* %79, align 4
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  br label %110

92:                                               ; preds = %40, %40
  %93 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %93, i32 0, i32 2
  %95 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %96 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %95, i32 0, i32 0
  %97 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %98 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.TYPE_4__* %96, %struct.v4l2_subdev_pad_config* %97, i64 %100, i32 %103)
  %105 = bitcast %struct.v4l2_rect* %94 to i8*
  %106 = bitcast %struct.v4l2_rect* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 16, i1 false)
  br label %110

107:                                              ; preds = %40
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %107, %92, %68, %44
  br label %111

111:                                              ; preds = %110, %37
  %112 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %113 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %111, %20
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_4__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.TYPE_4__*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__*, %struct.v4l2_subdev_pad_config*, i64) #1

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
