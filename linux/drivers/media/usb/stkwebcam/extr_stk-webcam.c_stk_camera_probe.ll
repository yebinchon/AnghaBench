; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_camera_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_camera_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface*, i32 }
%struct.usb_host_interface = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.stk_camera = type { i32, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__, i64, i64, %struct.usb_interface*, %struct.usb_device*, i32, i32, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_9__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Out of memory !\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@stk_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"couldn't register control\0A\00", align 1
@hflip = common dso_local global i32 0, align 4
@stk_upside_down_dmi_table = common dso_local global i32 0, align 4
@vflip = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not find isoc-in endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@MODE_VGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @stk_camera_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_camera_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stk_camera*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_host_interface*, align 8
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.stk_camera* null, %struct.stk_camera** %9, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.stk_camera* @kzalloc(i32 88, i32 %15)
  store %struct.stk_camera* %16, %struct.stk_camera** %9, align 8
  %17 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %18 = icmp eq %struct.stk_camera* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %212

23:                                               ; preds = %2
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1
  %26 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %27 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %26, i32 0, i32 2
  %28 = call i32 @v4l2_device_register(i32* %25, %struct.TYPE_9__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %36 = call i32 @kfree(%struct.stk_camera* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %212

38:                                               ; preds = %23
  %39 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %40 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %39, i32 0, i32 13
  store %struct.v4l2_ctrl_handler* %40, %struct.v4l2_ctrl_handler** %6, align 8
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %42 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %41, i32 3)
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %44 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %45 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %43, i32* @stk_ctrl_ops, i32 %44, i32 0, i32 255, i32 1, i32 96)
  %46 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %47 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %48 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %46, i32* @stk_ctrl_ops, i32 %47, i32 0, i32 1, i32 1, i32 1)
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %50 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %51 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %49, i32* @stk_ctrl_ops, i32 %50, i32 0, i32 1, i32 1, i32 1)
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %38
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %203

63:                                               ; preds = %38
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %65 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %66 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %64, %struct.v4l2_ctrl_handler** %67, align 8
  %68 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %69 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %68, i32 0, i32 12
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %72 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %71, i32 0, i32 11
  %73 = call i32 @mutex_init(i32* %72)
  %74 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %75 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %74, i32 0, i32 10
  %76 = call i32 @init_waitqueue_head(i32* %75)
  %77 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %78 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %80 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %81 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %80, i32 0, i32 9
  store %struct.usb_device* %79, %struct.usb_device** %81, align 8
  %82 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %83 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %84 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %83, i32 0, i32 8
  store %struct.usb_interface* %82, %struct.usb_interface** %84, align 8
  %85 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %86 = call i32 @usb_get_intf(%struct.usb_interface* %85)
  %87 = load i32, i32* @hflip, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %94

89:                                               ; preds = %63
  %90 = load i32, i32* @hflip, align 4
  %91 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %92 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %107

94:                                               ; preds = %63
  %95 = load i32, i32* @stk_upside_down_dmi_table, align 4
  %96 = call i64 @dmi_check_system(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %100 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  br label %106

102:                                              ; preds = %94
  %103 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %104 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i32, i32* @vflip, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @vflip, align 4
  %112 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %113 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  br label %128

115:                                              ; preds = %107
  %116 = load i32, i32* @stk_upside_down_dmi_table, align 4
  %117 = call i64 @dmi_check_system(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %121 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  br label %127

123:                                              ; preds = %115
  %124 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %125 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %110
  %129 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %130 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %129, i32 0, i32 7
  store i64 0, i64* %130, align 8
  %131 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %132 = call i32 @set_present(%struct.stk_camera* %131)
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 0
  %135 = load %struct.usb_host_interface*, %struct.usb_host_interface** %134, align 8
  store %struct.usb_host_interface* %135, %struct.usb_host_interface** %11, align 8
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %165, %128
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %139 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %137, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %136
  %144 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %145 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %150, %struct.usb_endpoint_descriptor** %12, align 8
  %151 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %152 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %143
  %156 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %157 = call i64 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %161 = call i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %160)
  %162 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %163 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %162, i32 0, i32 6
  store i64 %161, i64* %163, align 8
  br label %168

164:                                              ; preds = %155, %143
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %136

168:                                              ; preds = %159, %136
  %169 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %170 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @ENODEV, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %203

177:                                              ; preds = %168
  %178 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %179 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %180 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* @MODE_VGA, align 4
  %183 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %184 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  store i32 %182, i32* %185, align 8
  %186 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %187 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %186, i32 0, i32 1
  store i32 614400, i32* %187, align 4
  %188 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %189 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %188, i32 0, i32 4
  %190 = call i32 @INIT_LIST_HEAD(i32* %189)
  %191 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %192 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %191, i32 0, i32 3
  %193 = call i32 @INIT_LIST_HEAD(i32* %192)
  %194 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %195 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %196 = call i32 @usb_set_intfdata(%struct.usb_interface* %194, %struct.stk_camera* %195)
  %197 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %198 = call i32 @stk_register_video_device(%struct.stk_camera* %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %177
  br label %203

202:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %212

203:                                              ; preds = %201, %173, %56
  %204 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %205 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %204)
  %206 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %207 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %206, i32 0, i32 2
  %208 = call i32 @v4l2_device_unregister(%struct.TYPE_9__* %207)
  %209 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %210 = call i32 @kfree(%struct.stk_camera* %209)
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %203, %202, %31, %19
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.stk_camera* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.stk_camera*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @set_present(%struct.stk_camera*) #1

declare dso_local i64 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.stk_camera*) #1

declare dso_local i32 @stk_register_video_device(%struct.stk_camera*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
