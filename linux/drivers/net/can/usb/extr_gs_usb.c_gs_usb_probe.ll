; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.gs_usb = type { i32, i32, %struct.TYPE_9__**, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.gs_usb* }
%struct.gs_host_config = type { i32, i32, %struct.TYPE_9__**, i32, i32, i32 }
%struct.gs_device_config = type { i32, i32, %struct.TYPE_9__**, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GS_USB_BREQ_HOST_FORMAT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't send data format (err=%d)\0A\00", align 1
@GS_USB_BREQ_DEVICE_CONFIG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't get device config: (err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Configuring for %d interfaces\0A\00", align 1
@GS_MAX_INTF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Driver cannot handle more that %d CAN interfaces\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @gs_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.gs_usb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gs_host_config*, align 8
  %11 = alloca %struct.gs_device_config*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.gs_usb* @kmalloc(i32 32, i32 %14)
  %16 = bitcast %struct.gs_usb* %15 to %struct.gs_host_config*
  store %struct.gs_host_config* %16, %struct.gs_host_config** %10, align 8
  %17 = load %struct.gs_host_config*, %struct.gs_host_config** %10, align 8
  %18 = icmp ne %struct.gs_host_config* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %224

22:                                               ; preds = %2
  %23 = load %struct.gs_host_config*, %struct.gs_host_config** %10, align 8
  %24 = getelementptr inbounds %struct.gs_host_config, %struct.gs_host_config* %23, i32 0, i32 0
  store i32 48879, i32* %24, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = call i32 @interface_to_usbdev(%struct.usb_interface* %25)
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = call i32 @interface_to_usbdev(%struct.usb_interface* %27)
  %29 = call i32 @usb_sndctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* @GS_USB_BREQ_HOST_FORMAT, align 4
  %31 = load i32, i32* @USB_DIR_OUT, align 4
  %32 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gs_host_config*, %struct.gs_host_config** %10, align 8
  %44 = bitcast %struct.gs_host_config* %43 to %struct.gs_usb*
  %45 = call i32 @usb_control_msg(i32 %26, i32 %29, i32 %30, i32 %35, i32 1, i32 %42, %struct.gs_usb* %44, i32 32, i32 1000)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.gs_host_config*, %struct.gs_host_config** %10, align 8
  %47 = bitcast %struct.gs_host_config* %46 to %struct.gs_usb*
  %48 = call i32 @kfree(%struct.gs_usb* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %22
  %52 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %224

57:                                               ; preds = %22
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.gs_usb* @kmalloc(i32 32, i32 %58)
  %60 = bitcast %struct.gs_usb* %59 to %struct.gs_device_config*
  store %struct.gs_device_config* %60, %struct.gs_device_config** %11, align 8
  %61 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %62 = icmp ne %struct.gs_device_config* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %224

66:                                               ; preds = %57
  %67 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %68 = call i32 @interface_to_usbdev(%struct.usb_interface* %67)
  %69 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %70 = call i32 @interface_to_usbdev(%struct.usb_interface* %69)
  %71 = call i32 @usb_rcvctrlpipe(i32 %70, i32 0)
  %72 = load i32, i32* @GS_USB_BREQ_DEVICE_CONFIG, align 4
  %73 = load i32, i32* @USB_DIR_IN, align 4
  %74 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %79 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %86 = bitcast %struct.gs_device_config* %85 to %struct.gs_usb*
  %87 = call i32 @usb_control_msg(i32 %68, i32 %71, i32 %72, i32 %77, i32 1, i32 %84, %struct.gs_usb* %86, i32 32, i32 1000)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %66
  %91 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %92 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %96 = bitcast %struct.gs_device_config* %95 to %struct.gs_usb*
  %97 = call i32 @kfree(%struct.gs_usb* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %224

99:                                               ; preds = %66
  %100 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %101 = getelementptr inbounds %struct.gs_device_config, %struct.gs_device_config* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  %104 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %105 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %104, i32 0, i32 0
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @dev_info(i32* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @GS_MAX_INTF, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %99
  %112 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %113 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %112, i32 0, i32 0
  %114 = load i32, i32* @GS_MAX_INTF, align 4
  %115 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %117 = bitcast %struct.gs_device_config* %116 to %struct.gs_usb*
  %118 = call i32 @kfree(%struct.gs_usb* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %224

121:                                              ; preds = %99
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call %struct.gs_usb* @kzalloc(i32 32, i32 %122)
  store %struct.gs_usb* %123, %struct.gs_usb** %6, align 8
  %124 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %125 = icmp ne %struct.gs_usb* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %128 = bitcast %struct.gs_device_config* %127 to %struct.gs_usb*
  %129 = call i32 @kfree(%struct.gs_usb* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %224

132:                                              ; preds = %121
  %133 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %134 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %133, i32 0, i32 3
  %135 = call i32 @init_usb_anchor(i32* %134)
  %136 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %137 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %136, i32 0, i32 5
  %138 = call i32 @atomic_set(i32* %137, i32 0)
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %141 = call i32 @usb_set_intfdata(%struct.usb_interface* %139, %struct.gs_usb* %140)
  %142 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %143 = call i32 @interface_to_usbdev(%struct.usb_interface* %142)
  %144 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %145 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %217, %132
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %220

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %153 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %154 = bitcast %struct.gs_device_config* %153 to %struct.gs_usb*
  %155 = call %struct.TYPE_9__* @gs_make_candev(i32 %151, %struct.usb_interface* %152, %struct.gs_usb* %154)
  %156 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %157 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %158, i64 %160
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %161, align 8
  %162 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %163 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %162, i32 0, i32 2
  %164 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %164, i64 %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_9__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %207

171:                                              ; preds = %150
  %172 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %173 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %172, i32 0, i32 2
  %174 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %174, i64 %176
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = call i32 @PTR_ERR(%struct.TYPE_9__* %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %194, %171
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %187 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %188, i64 %190
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = call i32 @gs_destroy_candev(%struct.TYPE_9__* %192)
  br label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %9, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %181

197:                                              ; preds = %181
  %198 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %199 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %198, i32 0, i32 3
  %200 = call i32 @usb_kill_anchored_urbs(i32* %199)
  %201 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %202 = bitcast %struct.gs_device_config* %201 to %struct.gs_usb*
  %203 = call i32 @kfree(%struct.gs_usb* %202)
  %204 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %205 = call i32 @kfree(%struct.gs_usb* %204)
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %3, align 4
  br label %224

207:                                              ; preds = %150
  %208 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %209 = load %struct.gs_usb*, %struct.gs_usb** %6, align 8
  %210 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %209, i32 0, i32 2
  %211 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %211, i64 %213
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store %struct.gs_usb* %208, %struct.gs_usb** %216, align 8
  br label %217

217:                                              ; preds = %207
  %218 = load i32, i32* %9, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %146

220:                                              ; preds = %146
  %221 = load %struct.gs_device_config*, %struct.gs_device_config** %11, align 8
  %222 = bitcast %struct.gs_device_config* %221 to %struct.gs_usb*
  %223 = call i32 @kfree(%struct.gs_usb* %222)
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %220, %197, %126, %111, %90, %63, %51, %19
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.gs_usb* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.gs_usb*, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(%struct.gs_usb*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.gs_usb* @kzalloc(i32, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.gs_usb*) #1

declare dso_local %struct.TYPE_9__* @gs_make_candev(i32, %struct.usb_interface*, %struct.gs_usb*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @gs_destroy_candev(%struct.TYPE_9__*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
