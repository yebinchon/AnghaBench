; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.vsp1_sru = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SRU_PAD_SINK = common dso_local global i32 0, align 4
@SRU_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @sru_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sru_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.vsp1_sru*, align 8
  %8 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.vsp1_sru* @to_sru(%struct.v4l2_subdev* %11)
  store %struct.vsp1_sru* %12, %struct.vsp1_sru** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.vsp1_sru*, %struct.vsp1_sru** %7, align 8
  %14 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.vsp1_sru*, %struct.vsp1_sru** %7, align 8
  %18 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %17, i32 0, i32 0
  %19 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__* %18, %struct.v4l2_subdev_pad_config* %19, i32 %22)
  store %struct.v4l2_subdev_pad_config* %23, %struct.v4l2_subdev_pad_config** %8, align 8
  %24 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %25 = icmp ne %struct.v4l2_subdev_pad_config* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %72

29:                                               ; preds = %3
  %30 = load %struct.vsp1_sru*, %struct.vsp1_sru** %7, align 8
  %31 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %35, i32 0, i32 0
  %37 = call i32 @sru_try_format(%struct.vsp1_sru* %30, %struct.v4l2_subdev_pad_config* %31, i32 %34, %struct.v4l2_mbus_framefmt* %36)
  %38 = load %struct.vsp1_sru*, %struct.vsp1_sru** %7, align 8
  %39 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %38, i32 0, i32 0
  %40 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__* %39, %struct.v4l2_subdev_pad_config* %40, i32 %43)
  store %struct.v4l2_mbus_framefmt* %44, %struct.v4l2_mbus_framefmt** %9, align 8
  %45 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %46 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %46, i32 0, i32 0
  %48 = bitcast %struct.v4l2_mbus_framefmt* %45 to i8*
  %49 = bitcast %struct.v4l2_mbus_framefmt* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SRU_PAD_SINK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %29
  %56 = load %struct.vsp1_sru*, %struct.vsp1_sru** %7, align 8
  %57 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %56, i32 0, i32 0
  %58 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %59 = load i32, i32* @SRU_PAD_SOURCE, align 4
  %60 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__* %57, %struct.v4l2_subdev_pad_config* %58, i32 %59)
  store %struct.v4l2_mbus_framefmt* %60, %struct.v4l2_mbus_framefmt** %9, align 8
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %62, i32 0, i32 0
  %64 = bitcast %struct.v4l2_mbus_framefmt* %61 to i8*
  %65 = bitcast %struct.v4l2_mbus_framefmt* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load %struct.vsp1_sru*, %struct.vsp1_sru** %7, align 8
  %67 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %68 = load i32, i32* @SRU_PAD_SOURCE, align 4
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %70 = call i32 @sru_try_format(%struct.vsp1_sru* %66, %struct.v4l2_subdev_pad_config* %67, i32 %68, %struct.v4l2_mbus_framefmt* %69)
  br label %71

71:                                               ; preds = %55, %29
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.vsp1_sru*, %struct.vsp1_sru** %7, align 8
  %74 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local %struct.vsp1_sru* @to_sru(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @sru_try_format(%struct.vsp1_sru*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__*, %struct.v4l2_subdev_pad_config*, i32) #1

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
