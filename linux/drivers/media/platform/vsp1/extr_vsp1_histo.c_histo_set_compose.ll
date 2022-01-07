; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_set_compose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_set_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { %struct.v4l2_rect, i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.vsp1_histogram = type { i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @histo_set_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histo_set_compose(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_selection*, align 8
  %7 = alloca %struct.vsp1_histogram*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev* %11)
  store %struct.vsp1_histogram* %12, %struct.vsp1_histogram** %7, align 8
  %13 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %7, align 8
  %20 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %19, i32 0, i32 0
  %21 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %22 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  %26 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(i32* %20, %struct.v4l2_subdev_pad_config* %21, i32 %24, i32 %25)
  store %struct.v4l2_rect* %26, %struct.v4l2_rect** %9, align 8
  %27 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 4
  %35 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @clamp(i32 %30, i32 %34, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  %47 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %46, %50
  %52 = sdiv i32 %51, 3
  %53 = shl i32 1, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = udiv i32 %56, %57
  %59 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 4
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @clamp(i32 %65, i32 %69, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 2
  %82 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %81, %85
  %87 = sdiv i32 %86, 3
  %88 = shl i32 1, %87
  store i32 %88, i32* %10, align 4
  %89 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %90 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = udiv i32 %91, %92
  %94 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %7, align 8
  %98 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %97, i32 0, i32 0
  %99 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %100 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @V4L2_SEL_TGT_COMPOSE, align 4
  %104 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(i32* %98, %struct.v4l2_subdev_pad_config* %99, i32 %102, i32 %103)
  store %struct.v4l2_rect* %104, %struct.v4l2_rect** %8, align 8
  %105 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %106 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %6, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %106, i32 0, i32 0
  %108 = bitcast %struct.v4l2_rect* %105 to i8*
  %109 = bitcast %struct.v4l2_rect* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 24, i1 false)
  ret i32 0
}

declare dso_local %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_rect* @vsp1_entity_get_pad_selection(i32*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
