; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgt.c_hgt_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgt.c_hgt_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32, i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_hgt = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@HISTO_PAD_SINK = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i32 0, align 4
@VI6_HGT_REGRST = common dso_local global i32 0, align 4
@VI6_HGT_REGRST_RCLEA = common dso_local global i32 0, align 4
@VI6_HGT_OFFSET = common dso_local global i32 0, align 4
@VI6_HGT_OFFSET_HOFFSET_SHIFT = common dso_local global i32 0, align 4
@VI6_HGT_OFFSET_VOFFSET_SHIFT = common dso_local global i32 0, align 4
@VI6_HGT_SIZE = common dso_local global i32 0, align 4
@VI6_HGT_SIZE_HSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_HGT_SIZE_VSIZE_SHIFT = common dso_local global i32 0, align 4
@HGT_NUM_HUE_AREAS = common dso_local global i32 0, align 4
@VI6_HGT_HUE_AREA_LOWER_SHIFT = common dso_local global i32 0, align 4
@VI6_HGT_HUE_AREA_UPPER_SHIFT = common dso_local global i32 0, align 4
@VI6_HGT_MODE = common dso_local global i32 0, align 4
@VI6_HGT_MODE_HRATIO_SHIFT = common dso_local global i32 0, align 4
@VI6_HGT_MODE_VRATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @hgt_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgt_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_hgt*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %17 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %18 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %17, i32 0, i32 1
  %19 = call %struct.vsp1_hgt* @to_hgt(i32* %18)
  store %struct.vsp1_hgt* %19, %struct.vsp1_hgt** %9, align 8
  %20 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %21 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %22 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HISTO_PAD_SINK, align 4
  %25 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  %26 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity* %20, i32 %23, i32 %24, i32 %25)
  store %struct.v4l2_rect* %26, %struct.v4l2_rect** %11, align 8
  %27 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %28 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %29 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HISTO_PAD_SINK, align 4
  %32 = load i32, i32* @V4L2_SEL_TGT_COMPOSE, align 4
  %33 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity* %27, i32 %30, i32 %31, i32 %32)
  store %struct.v4l2_rect* %33, %struct.v4l2_rect** %10, align 8
  %34 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %35 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %36 = load i32, i32* @VI6_HGT_REGRST, align 4
  %37 = load i32, i32* @VI6_HGT_REGRST_RCLEA, align 4
  %38 = call i32 @vsp1_hgt_write(%struct.vsp1_hgt* %34, %struct.vsp1_dl_body* %35, i32 %36, i32 %37)
  %39 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %40 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %41 = load i32, i32* @VI6_HGT_OFFSET, align 4
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VI6_HGT_OFFSET_HOFFSET_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VI6_HGT_OFFSET_VOFFSET_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %46, %51
  %53 = call i32 @vsp1_hgt_write(%struct.vsp1_hgt* %39, %struct.vsp1_dl_body* %40, i32 %41, i32 %52)
  %54 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %55 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %56 = load i32, i32* @VI6_HGT_SIZE, align 4
  %57 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %58 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VI6_HGT_SIZE_HSIZE_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %63 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VI6_HGT_SIZE_VSIZE_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %61, %66
  %68 = call i32 @vsp1_hgt_write(%struct.vsp1_hgt* %54, %struct.vsp1_dl_body* %55, i32 %56, i32 %67)
  %69 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %70 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mutex_lock(i32 %72)
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %109, %4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @HGT_NUM_HUE_AREAS, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %74
  %79 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %80 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = mul i32 %82, 2
  %84 = add i32 %83, 0
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  %88 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %89 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = mul i32 %91, 2
  %93 = add i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %15, align 4
  %97 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %98 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @VI6_HGT_HUE_AREA(i32 %99)
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @VI6_HGT_HUE_AREA_LOWER_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @VI6_HGT_HUE_AREA_UPPER_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  %108 = call i32 @vsp1_hgt_write(%struct.vsp1_hgt* %97, %struct.vsp1_dl_body* %98, i32 %100, i32 %107)
  br label %109

109:                                              ; preds = %78
  %110 = load i32, i32* %16, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %74

112:                                              ; preds = %74
  %113 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %114 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mutex_unlock(i32 %116)
  %118 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %119 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %120, 2
  %122 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = udiv i32 %121, %124
  %126 = udiv i32 %125, 3
  store i32 %126, i32* %12, align 4
  %127 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %128 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = mul i32 %129, 2
  %131 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %132 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = udiv i32 %130, %133
  %135 = udiv i32 %134, 3
  store i32 %135, i32* %13, align 4
  %136 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %9, align 8
  %137 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %138 = load i32, i32* @VI6_HGT_MODE, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @VI6_HGT_MODE_HRATIO_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @VI6_HGT_MODE_VRATIO_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = or i32 %141, %144
  %146 = call i32 @vsp1_hgt_write(%struct.vsp1_hgt* %136, %struct.vsp1_dl_body* %137, i32 %138, i32 %145)
  ret void
}

declare dso_local %struct.vsp1_hgt* @to_hgt(i32*) #1

declare dso_local %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity*, i32, i32, i32) #1

declare dso_local i32 @vsp1_hgt_write(%struct.vsp1_hgt*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @VI6_HGT_HUE_AREA(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
