; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.vsp1_brx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @brx_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brx_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.vsp1_brx*, align 8
  %8 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.vsp1_brx* @to_brx(%struct.v4l2_subdev* %13)
  store %struct.vsp1_brx* %14, %struct.vsp1_brx** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %16 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %20 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %19, i32 0, i32 0
  %21 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %22 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__* %20, %struct.v4l2_subdev_pad_config* %21, i32 %24)
  store %struct.v4l2_subdev_pad_config* %25, %struct.v4l2_subdev_pad_config** %8, align 8
  %26 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %27 = icmp ne %struct.v4l2_subdev_pad_config* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %116

31:                                               ; preds = %3
  %32 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %33 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 1
  %39 = call i32 @brx_try_format(%struct.vsp1_brx* %32, %struct.v4l2_subdev_pad_config* %33, i32 %36, %struct.v4l2_mbus_framefmt* %38)
  %40 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %41 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %40, i32 0, i32 0
  %42 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__* %41, %struct.v4l2_subdev_pad_config* %42, i32 %45)
  store %struct.v4l2_mbus_framefmt* %46, %struct.v4l2_mbus_framefmt** %9, align 8
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %48 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %48, i32 0, i32 1
  %50 = bitcast %struct.v4l2_mbus_framefmt* %47 to i8*
  %51 = bitcast %struct.v4l2_mbus_framefmt* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  %52 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %57 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %31
  %62 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %63 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %64 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  %68 = call %struct.v4l2_rect* @brx_get_compose(%struct.vsp1_brx* %62, %struct.v4l2_subdev_pad_config* %63, i64 %67)
  store %struct.v4l2_rect* %68, %struct.v4l2_rect** %11, align 8
  %69 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %70 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %82 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %61, %31
  %84 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  %88 = call i64 @BRX_PAD_SINK(i32 0)
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %111, %90
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %95 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sle i64 %93, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %91
  %100 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %101 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %100, i32 0, i32 0
  %102 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__* %101, %struct.v4l2_subdev_pad_config* %102, i32 %103)
  store %struct.v4l2_mbus_framefmt* %104, %struct.v4l2_mbus_framefmt** %9, align 8
  %105 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %110 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %12, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %91

114:                                              ; preds = %91
  br label %115

115:                                              ; preds = %114, %83
  br label %116

116:                                              ; preds = %115, %28
  %117 = load %struct.vsp1_brx*, %struct.vsp1_brx** %7, align 8
  %118 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local %struct.vsp1_brx* @to_brx(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @brx_try_format(%struct.vsp1_brx*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.v4l2_rect* @brx_get_compose(%struct.vsp1_brx*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i64 @BRX_PAD_SINK(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
