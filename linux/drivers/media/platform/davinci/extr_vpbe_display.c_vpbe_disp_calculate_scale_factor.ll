; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_disp_calculate_scale_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_disp_calculate_scale_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vpbe_layer = type { %struct.display_layer_info, %struct.v4l2_pix_format }
%struct.display_layer_info = type { i32, i8*, i32, i8*, %struct.osd_layer_config }
%struct.osd_layer_config = type { i32, i32 }
%struct.v4l2_pix_format = type { i32, i32 }

@ZOOM_X1 = common dso_local global i8* null, align 8
@H_EXP_OFF = common dso_local global i32 0, align 4
@V_EXP_OFF = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@VPBE_DISPLAY_H_EXP_RATIO_N = common dso_local global i32 0, align 4
@VPBE_DISPLAY_H_EXP_RATIO_D = common dso_local global i32 0, align 4
@ZOOM_X2 = common dso_local global i8* null, align 8
@ZOOM_X4 = common dso_local global i8* null, align 8
@H_EXP_9_OVER_8 = common dso_local global i32 0, align 4
@VPBE_DISPLAY_V_EXP_RATIO_N = common dso_local global i32 0, align 4
@VPBE_DISPLAY_V_EXP_RATIO_D = common dso_local global i32 0, align 4
@V_EXP_6_OVER_5 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"crop display xsize = %d, ysize = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpbe_display*, %struct.vpbe_layer*, i32, i32)* @vpbe_disp_calculate_scale_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpbe_disp_calculate_scale_factor(%struct.vpbe_display* %0, %struct.vpbe_layer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vpbe_display*, align 8
  %6 = alloca %struct.vpbe_layer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.display_layer_info*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca %struct.osd_layer_config*, align 8
  %12 = alloca %struct.vpbe_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vpbe_display* %0, %struct.vpbe_display** %5, align 8
  store %struct.vpbe_layer* %1, %struct.vpbe_layer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.vpbe_layer*, %struct.vpbe_layer** %6, align 8
  %20 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %19, i32 0, i32 0
  store %struct.display_layer_info* %20, %struct.display_layer_info** %9, align 8
  %21 = load %struct.vpbe_layer*, %struct.vpbe_layer** %6, align 8
  %22 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %21, i32 0, i32 1
  store %struct.v4l2_pix_format* %22, %struct.v4l2_pix_format** %10, align 8
  %23 = load %struct.vpbe_layer*, %struct.vpbe_layer** %6, align 8
  %24 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %24, i32 0, i32 4
  store %struct.osd_layer_config* %25, %struct.osd_layer_config** %11, align 8
  %26 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %27 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %26, i32 0, i32 0
  %28 = load %struct.vpbe_device*, %struct.vpbe_device** %27, align 8
  store %struct.vpbe_device* %28, %struct.vpbe_device** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load %struct.vpbe_device*, %struct.vpbe_device** %12, align 8
  %30 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %37 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %42 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** @ZOOM_X1, align 8
  %44 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %45 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @ZOOM_X1, align 8
  %47 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %48 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @H_EXP_OFF, align 4
  %50 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %51 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @V_EXP_OFF, align 4
  %53 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %54 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %139

60:                                               ; preds = %4
  %61 = load %struct.vpbe_device*, %struct.vpbe_device** %12, align 8
  %62 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 1, i32* %16, align 4
  br label %78

72:                                               ; preds = %60
  %73 = load i32, i32* %16, align 4
  %74 = icmp sge i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 4, i32* %16, align 4
  br label %77

76:                                               ; preds = %72
  store i32 2, i32* %16, align 4
  br label %77

77:                                               ; preds = %76, %75
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %81 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %85 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %78
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @V4L2_STD_525_60, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* @V4L2_STD_625_50, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94, %89
  %100 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %101 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @VPBE_DISPLAY_H_EXP_RATIO_N, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* @VPBE_DISPLAY_H_EXP_RATIO_D, align 4
  %106 = sdiv i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  store i32 1, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %113 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %99
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %78
  %117 = load i32, i32* %16, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i8*, i8** @ZOOM_X2, align 8
  %121 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %122 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  br label %131

123:                                              ; preds = %116
  %124 = load i32, i32* %16, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i8*, i8** @ZOOM_X4, align 8
  %128 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %129 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %123
  br label %131

131:                                              ; preds = %130, %119
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* @H_EXP_9_OVER_8, align 4
  %136 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %137 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %131
  br label %143

139:                                              ; preds = %4
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %142 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %138
  %144 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %220

149:                                              ; preds = %143
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %152 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %150, %153
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp slt i32 %155, 2
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  store i32 1, i32* %17, align 4
  br label %164

158:                                              ; preds = %149
  %159 = load i32, i32* %17, align 4
  %160 = icmp sge i32 %159, 4
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 4, i32* %17, align 4
  br label %163

162:                                              ; preds = %158
  store i32 2, i32* %17, align 4
  br label %163

163:                                              ; preds = %162, %161
  br label %164

164:                                              ; preds = %163, %157
  %165 = load i32, i32* %17, align 4
  %166 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %167 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %171 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %164
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* @V4L2_STD_625_50, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %182 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @VPBE_DISPLAY_V_EXP_RATIO_N, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* @VPBE_DISPLAY_V_EXP_RATIO_D, align 4
  %187 = sdiv i32 %185, %186
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %180
  store i32 1, i32* %15, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %194 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %191, %180
  br label %196

196:                                              ; preds = %195, %175
  br label %197

197:                                              ; preds = %196, %164
  %198 = load i32, i32* %17, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i8*, i8** @ZOOM_X2, align 8
  %202 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %203 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %202, i32 0, i32 1
  store i8* %201, i8** %203, align 8
  br label %212

204:                                              ; preds = %197
  %205 = load i32, i32* %17, align 4
  %206 = icmp eq i32 %205, 4
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i8*, i8** @ZOOM_X4, align 8
  %209 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %210 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %209, i32 0, i32 1
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %207, %204
  br label %212

212:                                              ; preds = %211, %200
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* @V_EXP_6_OVER_5, align 4
  %217 = load %struct.display_layer_info*, %struct.display_layer_info** %9, align 8
  %218 = getelementptr inbounds %struct.display_layer_info, %struct.display_layer_info* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %215, %212
  br label %224

220:                                              ; preds = %143
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %223 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %220, %219
  %225 = load i32, i32* @debug, align 4
  %226 = load %struct.vpbe_device*, %struct.vpbe_device** %12, align 8
  %227 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %226, i32 0, i32 0
  %228 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %229 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %232 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @v4l2_dbg(i32 1, i32 %225, i32* %227, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %230, i32 %233)
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
