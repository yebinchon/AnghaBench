; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }
%struct.vsp1_brx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BRX_MAX_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @brx_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brx_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.vsp1_brx*, align 8
  %9 = alloca %struct.v4l2_subdev_pad_config*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.vsp1_brx* @to_brx(%struct.v4l2_subdev* %10)
  store %struct.vsp1_brx* %11, %struct.vsp1_brx** %8, align 8
  %12 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vsp1_brx*, %struct.vsp1_brx** %8, align 8
  %16 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %74 [
    i32 128, label %27
    i32 129, label %42
  ]

27:                                               ; preds = %23
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load i8*, i8** @BRX_MAX_SIZE, align 8
  %35 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** @BRX_MAX_SIZE, align 8
  %39 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  store i32 0, i32* %4, align 4
  br label %77

42:                                               ; preds = %23
  %43 = load %struct.vsp1_brx*, %struct.vsp1_brx** %8, align 8
  %44 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %43, i32 0, i32 0
  %45 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %46 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__* %44, %struct.v4l2_subdev_pad_config* %45, i32 %48)
  store %struct.v4l2_subdev_pad_config* %49, %struct.v4l2_subdev_pad_config** %9, align 8
  %50 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %51 = icmp ne %struct.v4l2_subdev_pad_config* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %77

55:                                               ; preds = %42
  %56 = load %struct.vsp1_brx*, %struct.vsp1_brx** %8, align 8
  %57 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %60, i32 0, i32 2
  %62 = load %struct.vsp1_brx*, %struct.vsp1_brx** %8, align 8
  %63 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %64 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.TYPE_4__* @brx_get_compose(%struct.vsp1_brx* %62, %struct.v4l2_subdev_pad_config* %63, i64 %66)
  %68 = bitcast %struct.TYPE_4__* %61 to i8*
  %69 = bitcast %struct.TYPE_4__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  %70 = load %struct.vsp1_brx*, %struct.vsp1_brx** %8, align 8
  %71 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %4, align 4
  br label %77

74:                                               ; preds = %23
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %55, %52, %27, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.vsp1_brx* @to_brx(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @brx_get_compose(%struct.vsp1_brx*, %struct.v4l2_subdev_pad_config*, i64) #1

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
