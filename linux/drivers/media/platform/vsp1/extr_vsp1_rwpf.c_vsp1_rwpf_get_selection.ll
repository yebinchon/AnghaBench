; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rwpf.c_vsp1_rwpf_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rwpf.c_vsp1_rwpf_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.vsp1_rwpf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@VSP1_ENTITY_WPF = common dso_local global i64 0, align 8
@RWPF_PAD_SINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @vsp1_rwpf_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_rwpf_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.vsp1_rwpf*, align 8
  %9 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev* %12)
  store %struct.vsp1_rwpf* %13, %struct.vsp1_rwpf** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %15 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VSP1_ENTITY_WPF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RWPF_PAD_SINK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %92

29:                                               ; preds = %20
  %30 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %31 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %35 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %34, i32 0, i32 0
  %36 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %37 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_5__* %35, %struct.v4l2_subdev_pad_config* %36, i32 %39)
  store %struct.v4l2_subdev_pad_config* %40, %struct.v4l2_subdev_pad_config** %9, align 8
  %41 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %42 = icmp ne %struct.v4l2_subdev_pad_config* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %86

46:                                               ; preds = %29
  %47 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %82 [
    i32 129, label %50
    i32 128, label %58
  ]

50:                                               ; preds = %46
  %51 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %51, i32 0, i32 2
  %53 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %54 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %55 = call %struct.TYPE_4__* @vsp1_rwpf_get_crop(%struct.vsp1_rwpf* %53, %struct.v4l2_subdev_pad_config* %54)
  %56 = bitcast %struct.TYPE_4__* %52 to i8*
  %57 = bitcast %struct.TYPE_4__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 16, i1 false)
  br label %85

58:                                               ; preds = %46
  %59 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %60 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %59, i32 0, i32 0
  %61 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %62 = load i64, i64* @RWPF_PAD_SINK, align 8
  %63 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_5__* %60, %struct.v4l2_subdev_pad_config* %61, i64 %62)
  store %struct.v4l2_mbus_framefmt* %63, %struct.v4l2_mbus_framefmt** %10, align 8
  %64 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  %67 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  br label %85

82:                                               ; preds = %46
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %58, %50
  br label %86

86:                                               ; preds = %85, %43
  %87 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %88 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %26
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_5__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.TYPE_4__* @vsp1_rwpf_get_crop(%struct.vsp1_rwpf*, %struct.v4l2_subdev_pad_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_5__*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
