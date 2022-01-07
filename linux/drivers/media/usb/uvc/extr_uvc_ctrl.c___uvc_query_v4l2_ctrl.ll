; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_query_v4l2_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_query_v4l2_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.uvc_control = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_control_mapping = type { i32, i64, i32 (%struct.uvc_control_mapping*, i32, i32)*, i32, %struct.uvc_menu_info*, i64, i32, i32 }
%struct.uvc_menu_info = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@UVC_CTRL_FLAG_GET_CUR = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_SET_CUR = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_DEF = common dso_local global i32 0, align 4
@UVC_GET_DEF = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_DEF = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_MIN = common dso_local global i32 0, align 4
@UVC_GET_MIN = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MIN = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_MAX = common dso_local global i32 0, align 4
@UVC_GET_MAX = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MAX = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_RES = common dso_local global i32 0, align 4
@UVC_GET_RES = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_control*, %struct.uvc_control_mapping*, %struct.v4l2_queryctrl*)* @__uvc_query_v4l2_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uvc_query_v4l2_ctrl(%struct.uvc_video_chain* %0, %struct.uvc_control* %1, %struct.uvc_control_mapping* %2, %struct.v4l2_queryctrl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_video_chain*, align 8
  %7 = alloca %struct.uvc_control*, align 8
  %8 = alloca %struct.uvc_control_mapping*, align 8
  %9 = alloca %struct.v4l2_queryctrl*, align 8
  %10 = alloca %struct.uvc_control_mapping*, align 8
  %11 = alloca %struct.uvc_control*, align 8
  %12 = alloca %struct.uvc_menu_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %6, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %7, align 8
  store %struct.uvc_control_mapping* %2, %struct.uvc_control_mapping** %8, align 8
  store %struct.v4l2_queryctrl* %3, %struct.v4l2_queryctrl** %9, align 8
  store %struct.uvc_control_mapping* null, %struct.uvc_control_mapping** %10, align 8
  store %struct.uvc_control* null, %struct.uvc_control** %11, align 8
  %17 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %18 = call i32 @memset(%struct.v4l2_queryctrl* %17, i32 0, i32 32)
  %19 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %20 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %25 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %28 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %33 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strscpy(i32 %31, i32 %34, i32 4)
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %36, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %39 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UVC_CTRL_FLAG_GET_CUR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %47 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %4
  %52 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %53 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @UVC_CTRL_FLAG_SET_CUR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %61 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %67 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %72 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %75 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @__uvc_find_control(i32 %73, i64 %76, %struct.uvc_control_mapping** %10, %struct.uvc_control** %11, i32 0)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.uvc_control*, %struct.uvc_control** %11, align 8
  %80 = icmp ne %struct.uvc_control* %79, null
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load %struct.uvc_control*, %struct.uvc_control** %11, align 8
  %83 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @UVC_CTRL_FLAG_GET_CUR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %81
  %90 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %6, align 8
  %91 = load %struct.uvc_control*, %struct.uvc_control** %11, align 8
  %92 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %10, align 8
  %93 = call i32 @__uvc_ctrl_get(%struct.uvc_video_chain* %90, %struct.uvc_control* %91, %struct.uvc_control_mapping* %92, i64* %14)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %5, align 4
  br label %264

98:                                               ; preds = %89
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %101 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %106 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %107 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %81, %78
  %112 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %113 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  %117 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %6, align 8
  %118 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %119 = call i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain* %117, %struct.uvc_control* %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %5, align 4
  br label %264

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %111
  %126 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %127 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @UVC_CTRL_FLAG_GET_DEF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %125
  %134 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %135 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %134, i32 0, i32 2
  %136 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %135, align 8
  %137 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %138 = load i32, i32* @UVC_GET_DEF, align 4
  %139 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %140 = load i32, i32* @UVC_CTRL_DATA_DEF, align 4
  %141 = call i32 @uvc_ctrl_data(%struct.uvc_control* %139, i32 %140)
  %142 = call i32 %136(%struct.uvc_control_mapping* %137, i32 %138, i32 %141)
  %143 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %144 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %133, %125
  %146 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %147 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %202 [
    i32 128, label %149
    i32 130, label %188
    i32 129, label %195
  ]

149:                                              ; preds = %145
  %150 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %151 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %150, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %153 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = sub i32 %154, 1
  %156 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %157 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %159 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %158, i32 0, i32 4
  store i32 1, i32* %159, align 4
  %160 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %161 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %160, i32 0, i32 4
  %162 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %161, align 8
  store %struct.uvc_menu_info* %162, %struct.uvc_menu_info** %12, align 8
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %182, %149
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %166 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = icmp ult i32 %164, %167
  br i1 %168, label %169, label %187

169:                                              ; preds = %163
  %170 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %12, align 8
  %171 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %174 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %180 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  br label %187

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %13, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %13, align 4
  %185 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %12, align 8
  %186 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %185, i32 1
  store %struct.uvc_menu_info* %186, %struct.uvc_menu_info** %12, align 8
  br label %163

187:                                              ; preds = %177, %163
  store i32 0, i32* %5, align 4
  br label %264

188:                                              ; preds = %145
  %189 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %190 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %189, i32 0, i32 2
  store i32 0, i32* %190, align 4
  %191 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %192 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %191, i32 0, i32 3
  store i32 1, i32* %192, align 4
  %193 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %194 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %193, i32 0, i32 4
  store i32 1, i32* %194, align 4
  store i32 0, i32* %5, align 4
  br label %264

195:                                              ; preds = %145
  %196 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %197 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %196, i32 0, i32 2
  store i32 0, i32* %197, align 4
  %198 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %199 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %198, i32 0, i32 3
  store i32 0, i32* %199, align 4
  %200 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %201 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %200, i32 0, i32 4
  store i32 0, i32* %201, align 4
  store i32 0, i32* %5, align 4
  br label %264

202:                                              ; preds = %145
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %205 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @UVC_CTRL_FLAG_GET_MIN, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %203
  %212 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %213 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %212, i32 0, i32 2
  %214 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %213, align 8
  %215 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %216 = load i32, i32* @UVC_GET_MIN, align 4
  %217 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %218 = load i32, i32* @UVC_CTRL_DATA_MIN, align 4
  %219 = call i32 @uvc_ctrl_data(%struct.uvc_control* %217, i32 %218)
  %220 = call i32 %214(%struct.uvc_control_mapping* %215, i32 %216, i32 %219)
  %221 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %222 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %211, %203
  %224 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %225 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @UVC_CTRL_FLAG_GET_MAX, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %223
  %232 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %233 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %232, i32 0, i32 2
  %234 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %233, align 8
  %235 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %236 = load i32, i32* @UVC_GET_MAX, align 4
  %237 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %238 = load i32, i32* @UVC_CTRL_DATA_MAX, align 4
  %239 = call i32 @uvc_ctrl_data(%struct.uvc_control* %237, i32 %238)
  %240 = call i32 %234(%struct.uvc_control_mapping* %235, i32 %236, i32 %239)
  %241 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %242 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %241, i32 0, i32 3
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %231, %223
  %244 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %245 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @UVC_CTRL_FLAG_GET_RES, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %243
  %252 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %253 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %252, i32 0, i32 2
  %254 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %253, align 8
  %255 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %256 = load i32, i32* @UVC_GET_RES, align 4
  %257 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %258 = load i32, i32* @UVC_CTRL_DATA_RES, align 4
  %259 = call i32 @uvc_ctrl_data(%struct.uvc_control* %257, i32 %258)
  %260 = call i32 %254(%struct.uvc_control_mapping* %255, i32 %256, i32 %259)
  %261 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %262 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %251, %243
  store i32 0, i32* %5, align 4
  br label %264

264:                                              ; preds = %263, %195, %188, %187, %122, %96
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i32 @memset(%struct.v4l2_queryctrl*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @__uvc_find_control(i32, i64, %struct.uvc_control_mapping**, %struct.uvc_control**, i32) #1

declare dso_local i32 @__uvc_ctrl_get(%struct.uvc_video_chain*, %struct.uvc_control*, %struct.uvc_control_mapping*, i64*) #1

declare dso_local i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain*, %struct.uvc_control*) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
