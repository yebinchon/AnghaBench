; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i32, i32 }
%struct.vpbe_layer = type { %struct.TYPE_3__, i32, %struct.vpbe_display* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, %struct.osd_layer_config }
%struct.osd_layer_config = type { i32 }
%struct.vpbe_display = type { %struct.osd_state*, %struct.vpbe_device* }
%struct.osd_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)*, i32 (%struct.osd_state*, i64, i64)*, i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32, i64, i64)*, i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)* }
%struct.vpbe_device = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"VIDIOC_S_SELECTION, layer id = %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error in set layer config:\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error in set vid expansion:\0A\00", align 1
@ZOOM_X1 = common dso_local global i64 0, align 8
@H_EXP_OFF = common dso_local global i64 0, align 8
@V_EXP_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vpbe_display_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  %9 = alloca %struct.vpbe_display*, align 8
  %10 = alloca %struct.vpbe_device*, align 8
  %11 = alloca %struct.osd_layer_config*, align 8
  %12 = alloca %struct.osd_state*, align 8
  %13 = alloca %struct.v4l2_rect, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %15)
  store %struct.vpbe_layer* %16, %struct.vpbe_layer** %8, align 8
  %17 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %18 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %17, i32 0, i32 2
  %19 = load %struct.vpbe_display*, %struct.vpbe_display** %18, align 8
  store %struct.vpbe_display* %19, %struct.vpbe_display** %9, align 8
  %20 = load %struct.vpbe_display*, %struct.vpbe_display** %9, align 8
  %21 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %20, i32 0, i32 1
  %22 = load %struct.vpbe_device*, %struct.vpbe_device** %21, align 8
  store %struct.vpbe_device* %22, %struct.vpbe_device** %10, align 8
  %23 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %24 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store %struct.osd_layer_config* %25, %struct.osd_layer_config** %11, align 8
  %26 = load %struct.vpbe_display*, %struct.vpbe_display** %9, align 8
  %27 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %26, i32 0, i32 0
  %28 = load %struct.osd_state*, %struct.osd_state** %27, align 8
  store %struct.osd_state* %28, %struct.osd_state** %12, align 8
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 2
  %31 = bitcast %struct.v4l2_rect* %13 to i8*
  %32 = bitcast %struct.v4l2_rect* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  %33 = load i32, i32* @debug, align 4
  %34 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %35 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %34, i32 0, i32 0
  %36 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %37 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @v4l2_dbg(i32 1, i32 %33, i32* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %3
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %201

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.vpbe_display*, %struct.vpbe_display** %9, align 8
  %68 = call i32 @vpbe_disp_check_window_params(%struct.vpbe_display* %67, %struct.v4l2_rect* %13)
  %69 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %70 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)*, i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)** %71, align 8
  %73 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %74 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %75 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %79 = call i32 %72(%struct.osd_state* %73, i32 %77, %struct.osd_layer_config* %78)
  %80 = load %struct.vpbe_display*, %struct.vpbe_display** %9, align 8
  %81 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @vpbe_disp_calculate_scale_factor(%struct.vpbe_display* %80, %struct.vpbe_layer* %81, i32 %83, i32 %85)
  %87 = load %struct.vpbe_display*, %struct.vpbe_display** %9, align 8
  %88 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @vpbe_disp_adj_position(%struct.vpbe_display* %87, %struct.vpbe_layer* %88, i64 %90, i64 %92)
  %94 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %95 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)*, i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)** %96, align 8
  %98 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %99 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %100 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %104 = call i32 %97(%struct.osd_state* %98, i32 %102, %struct.osd_layer_config* %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %66
  %108 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %109 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %108, i32 0, i32 0
  %110 = call i32 @v4l2_err(i32* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %201

113:                                              ; preds = %66
  %114 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %115 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32 (%struct.osd_state*, i32, i64, i64)*, i32 (%struct.osd_state*, i32, i64, i64)** %116, align 8
  %118 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %119 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %120 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %124 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %128 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 %117(%struct.osd_state* %118, i32 %122, i64 %126, i64 %130)
  %132 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %133 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32 (%struct.osd_state*, i64, i64)*, i32 (%struct.osd_state*, i64, i64)** %134, align 8
  %136 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %137 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %138 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %142 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call i32 %135(%struct.osd_state* %136, i64 %140, i64 %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %113
  %149 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %150 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %149, i32 0, i32 0
  %151 = call i32 @v4l2_err(i32* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %201

154:                                              ; preds = %113
  %155 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %156 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @ZOOM_X1, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %182, label %161

161:                                              ; preds = %154
  %162 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %163 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @ZOOM_X1, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %182, label %168

168:                                              ; preds = %161
  %169 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %170 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @H_EXP_OFF, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %182, label %175

175:                                              ; preds = %168
  %176 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %177 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @V_EXP_OFF, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %175, %168, %161, %154
  %183 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %184 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %185, align 8
  %187 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %188 = call i32 %186(%struct.osd_state* %187, i32 1)
  br label %196

189:                                              ; preds = %175
  %190 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %191 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %192, align 8
  %194 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %195 = call i32 %193(%struct.osd_state* %194, i32 0)
  br label %196

196:                                              ; preds = %189, %182
  %197 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %198 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %197, i32 0, i32 2
  %199 = bitcast %struct.v4l2_rect* %198 to i8*
  %200 = bitcast %struct.v4l2_rect* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %196, %148, %107, %51
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @vpbe_disp_check_window_params(%struct.vpbe_display*, %struct.v4l2_rect*) #1

declare dso_local i32 @vpbe_disp_calculate_scale_factor(%struct.vpbe_display*, %struct.vpbe_layer*, i32, i32) #1

declare dso_local i32 @vpbe_disp_adj_position(%struct.vpbe_display*, %struct.vpbe_layer*, i64, i64) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
