; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgo.c_hgo_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgo.c_hgo_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32, i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_hgo = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@HISTO_PAD_SINK = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i32 0, align 4
@VI6_HGO_REGRST = common dso_local global i32 0, align 4
@VI6_HGO_REGRST_RCLEA = common dso_local global i32 0, align 4
@VI6_HGO_OFFSET = common dso_local global i32 0, align 4
@VI6_HGO_OFFSET_HOFFSET_SHIFT = common dso_local global i32 0, align 4
@VI6_HGO_OFFSET_VOFFSET_SHIFT = common dso_local global i32 0, align 4
@VI6_HGO_SIZE = common dso_local global i32 0, align 4
@VI6_HGO_SIZE_HSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_HGO_SIZE_VSIZE_SHIFT = common dso_local global i32 0, align 4
@hgo_num_bins = common dso_local global i32* null, align 8
@VI6_HGO_MODE = common dso_local global i32 0, align 4
@VI6_HGO_MODE_STEP = common dso_local global i32 0, align 4
@VI6_HGO_MODE_MAXRGB = common dso_local global i32 0, align 4
@VI6_HGO_MODE_HRATIO_SHIFT = common dso_local global i32 0, align 4
@VI6_HGO_MODE_VRATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @hgo_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgo_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_hgo*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %14 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %15 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %14, i32 0, i32 1
  %16 = call %struct.vsp1_hgo* @to_hgo(i32* %15)
  store %struct.vsp1_hgo* %16, %struct.vsp1_hgo** %9, align 8
  %17 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %18 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %19 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HISTO_PAD_SINK, align 4
  %22 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  %23 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity* %17, i32 %20, i32 %21, i32 %22)
  store %struct.v4l2_rect* %23, %struct.v4l2_rect** %11, align 8
  %24 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %25 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %26 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HISTO_PAD_SINK, align 4
  %29 = load i32, i32* @V4L2_SEL_TGT_COMPOSE, align 4
  %30 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity* %24, i32 %27, i32 %28, i32 %29)
  store %struct.v4l2_rect* %30, %struct.v4l2_rect** %10, align 8
  %31 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %32 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %33 = load i32, i32* @VI6_HGO_REGRST, align 4
  %34 = load i32, i32* @VI6_HGO_REGRST_RCLEA, align 4
  %35 = call i32 @vsp1_hgo_write(%struct.vsp1_hgo* %31, %struct.vsp1_dl_body* %32, i32 %33, i32 %34)
  %36 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %37 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %38 = load i32, i32* @VI6_HGO_OFFSET, align 4
  %39 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %40 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VI6_HGO_OFFSET_HOFFSET_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VI6_HGO_OFFSET_VOFFSET_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %43, %48
  %50 = call i32 @vsp1_hgo_write(%struct.vsp1_hgo* %36, %struct.vsp1_dl_body* %37, i32 %38, i32 %49)
  %51 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %52 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %53 = load i32, i32* @VI6_HGO_SIZE, align 4
  %54 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VI6_HGO_SIZE_HSIZE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VI6_HGO_SIZE_VSIZE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %58, %63
  %65 = call i32 @vsp1_hgo_write(%struct.vsp1_hgo* %51, %struct.vsp1_dl_body* %52, i32 %53, i32 %64)
  %66 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %67 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mutex_lock(i32 %70)
  %72 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %73 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %80 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %82 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %4
  %87 = load i32*, i32** @hgo_num_bins, align 8
  %88 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %89 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %87, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %98 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %86, %4
  %100 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %101 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @mutex_unlock(i32 %104)
  %106 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = mul i32 %108, 2
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = udiv i32 %109, %112
  %114 = udiv i32 %113, 3
  store i32 %114, i32* %12, align 4
  %115 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %116 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = mul i32 %117, 2
  %119 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %120 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = udiv i32 %118, %121
  %123 = udiv i32 %122, 3
  store i32 %123, i32* %13, align 4
  %124 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %125 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %126 = load i32, i32* @VI6_HGO_MODE, align 4
  %127 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %128 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 256
  br i1 %130, label %131, label %133

131:                                              ; preds = %99
  %132 = load i32, i32* @VI6_HGO_MODE_STEP, align 4
  br label %134

133:                                              ; preds = %99
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i32 [ %132, %131 ], [ 0, %133 ]
  %136 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %9, align 8
  %137 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @VI6_HGO_MODE_MAXRGB, align 4
  br label %143

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = or i32 %135, %144
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @VI6_HGO_MODE_HRATIO_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = or i32 %145, %148
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @VI6_HGO_MODE_VRATIO_SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = or i32 %149, %152
  %154 = call i32 @vsp1_hgo_write(%struct.vsp1_hgo* %124, %struct.vsp1_dl_body* %125, i32 %126, i32 %153)
  ret void
}

declare dso_local %struct.vsp1_hgo* @to_hgo(i32*) #1

declare dso_local %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity*, i32, i32, i32) #1

declare dso_local i32 @vsp1_hgo_write(%struct.vsp1_hgo*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
