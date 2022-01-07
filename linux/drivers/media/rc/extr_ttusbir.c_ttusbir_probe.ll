; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.usb_interface_descriptor }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.ttusbir = type { i32, i32, i32*, i32, i32, %struct.urb*, i32, %struct.urb**, %struct.TYPE_11__, i32*, i32, i32, %struct.rc_dev* }
%struct.urb = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_7__*, i32, i32, %struct.ttusbir*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i32, i32 }
%struct.rc_dev = type { i32, i32, i32, i32, i32, i32, %struct.ttusbir*, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot find expected altsetting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NUM_URBS = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@ttusbir_urb_complete = common dso_local global i32 0, align 4
@ttusbir_bulk_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ttusbir:green:power\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rc-feedback\00", align 1
@ttusbir_brightness_set = common dso_local global i32 0, align 4
@ttusbir_brightness_get = common dso_local global i32 0, align 4
@DRIVER_DESC = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_TT_1500 = common dso_local global i32 0, align 4
@IR_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@NS_PER_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register rc device %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to submit urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ttusbir_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusbir_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.ttusbir*, align 8
  %7 = alloca %struct.usb_interface_descriptor*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.rc_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.urb*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.urb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 -1, i32* %13, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ttusbir* @kzalloc(i32 96, i32 %20)
  store %struct.ttusbir* %21, %struct.ttusbir** %6, align 8
  %22 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %23 = call %struct.rc_dev* @rc_allocate_device(i32 %22)
  store %struct.rc_dev* %23, %struct.rc_dev** %9, align 8
  %24 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %25 = icmp ne %struct.ttusbir* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %28 = icmp ne %struct.rc_dev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %426

32:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %120, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, -1
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ]
  br i1 %43, label %44, label %123

44:                                               ; preds = %42
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store %struct.usb_interface_descriptor* %51, %struct.usb_interface_descriptor** %7, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %116, %44
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %55 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %52
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %70, %struct.usb_endpoint_descriptor** %8, align 8
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %72 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %76 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %58
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %80 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %16, align 4
  br label %101

87:                                               ; preds = %82, %78, %58
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %89 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %93 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %98, %95, %91, %87
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %110 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %113 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %13, align 4
  br label %119

115:                                              ; preds = %104, %101
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %52

119:                                              ; preds = %107, %52
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %33

123:                                              ; preds = %42
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %128 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %127, i32 0, i32 1
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %12, align 4
  br label %426

132:                                              ; preds = %123
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 1
  %135 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %136 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %135, i32 0, i32 9
  store i32* %134, i32** %136, align 8
  %137 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %138 = call i32 @interface_to_usbdev(%struct.usb_interface* %137)
  %139 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %140 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %142 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %143 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %142, i32 0, i32 12
  store %struct.rc_dev* %141, %struct.rc_dev** %143, align 8
  %144 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %145 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @usb_set_interface(i32 %146, i32 0, i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %132
  br label %426

152:                                              ; preds = %132
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %247, %152
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @NUM_URBS, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %250

157:                                              ; preds = %153
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i8* @usb_alloc_urb(i32 8, i32 %158)
  %160 = bitcast i8* %159 to %struct.urb*
  store %struct.urb* %160, %struct.urb** %17, align 8
  %161 = load %struct.urb*, %struct.urb** %17, align 8
  %162 = icmp ne %struct.urb* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %12, align 4
  br label %426

166:                                              ; preds = %157
  %167 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %168 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.urb*, %struct.urb** %17, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 10
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %173 = load %struct.urb*, %struct.urb** %17, align 8
  %174 = getelementptr inbounds %struct.urb, %struct.urb* %173, i32 0, i32 9
  store %struct.ttusbir* %172, %struct.ttusbir** %174, align 8
  %175 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %176 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %179 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @usb_rcvisocpipe(i32 %177, i32 %180)
  %182 = load %struct.urb*, %struct.urb** %17, align 8
  %183 = getelementptr inbounds %struct.urb, %struct.urb* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 4
  %184 = load %struct.urb*, %struct.urb** %17, align 8
  %185 = getelementptr inbounds %struct.urb, %struct.urb* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %187 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = load %struct.urb*, %struct.urb** %17, align 8
  %191 = getelementptr inbounds %struct.urb, %struct.urb* %190, i32 0, i32 4
  %192 = call i8* @usb_alloc_coherent(i32 %188, i32 128, i32 %189, i32* %191)
  store i8* %192, i8** %18, align 8
  %193 = load i8*, i8** %18, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %166
  %196 = load %struct.urb*, %struct.urb** %17, align 8
  %197 = call i32 @usb_free_urb(%struct.urb* %196)
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %12, align 4
  br label %426

200:                                              ; preds = %166
  %201 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %202 = load i32, i32* @URB_ISO_ASAP, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.urb*, %struct.urb** %17, align 8
  %205 = getelementptr inbounds %struct.urb, %struct.urb* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i8*, i8** %18, align 8
  %207 = load %struct.urb*, %struct.urb** %17, align 8
  %208 = getelementptr inbounds %struct.urb, %struct.urb* %207, i32 0, i32 5
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* @ttusbir_urb_complete, align 4
  %210 = load %struct.urb*, %struct.urb** %17, align 8
  %211 = getelementptr inbounds %struct.urb, %struct.urb* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 8
  %212 = load %struct.urb*, %struct.urb** %17, align 8
  %213 = getelementptr inbounds %struct.urb, %struct.urb* %212, i32 0, i32 2
  store i32 8, i32* %213, align 8
  %214 = load %struct.urb*, %struct.urb** %17, align 8
  %215 = getelementptr inbounds %struct.urb, %struct.urb* %214, i32 0, i32 3
  store i32 128, i32* %215, align 4
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %236, %200
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %217, 8
  br i1 %218, label %219, label %239

219:                                              ; preds = %216
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 %220, 16
  %222 = load %struct.urb*, %struct.urb** %17, align 8
  %223 = getelementptr inbounds %struct.urb, %struct.urb* %222, i32 0, i32 6
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  store i32 %221, i32* %228, align 4
  %229 = load %struct.urb*, %struct.urb** %17, align 8
  %230 = getelementptr inbounds %struct.urb, %struct.urb* %229, i32 0, i32 6
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  store i32 16, i32* %235, align 4
  br label %236

236:                                              ; preds = %219
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %216

239:                                              ; preds = %216
  %240 = load %struct.urb*, %struct.urb** %17, align 8
  %241 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %242 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %241, i32 0, i32 7
  %243 = load %struct.urb**, %struct.urb*** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.urb*, %struct.urb** %243, i64 %245
  store %struct.urb* %240, %struct.urb** %246, align 8
  br label %247

247:                                              ; preds = %239
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %153

250:                                              ; preds = %153
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call i8* @usb_alloc_urb(i32 0, i32 %251)
  %253 = bitcast i8* %252 to %struct.urb*
  %254 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %255 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %254, i32 0, i32 5
  store %struct.urb* %253, %struct.urb** %255, align 8
  %256 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %257 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %256, i32 0, i32 5
  %258 = load %struct.urb*, %struct.urb** %257, align 8
  %259 = icmp ne %struct.urb* %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %250
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %12, align 4
  br label %426

263:                                              ; preds = %250
  %264 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %265 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  store i32 170, i32* %267, align 4
  %268 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %269 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  store i32 1, i32* %271, align 4
  %272 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %273 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  store i32 5, i32* %275, align 4
  %276 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %277 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 3
  store i32 1, i32* %279, align 4
  %280 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %281 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %280, i32 0, i32 5
  %282 = load %struct.urb*, %struct.urb** %281, align 8
  %283 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %284 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %287 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %290 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @usb_sndbulkpipe(i32 %288, i32 %291)
  %293 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %294 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* @ttusbir_bulk_complete, align 4
  %297 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %298 = call i32 @usb_fill_bulk_urb(%struct.urb* %282, i32 %285, i32 %292, i32* %295, i32 8, i32 %296, %struct.ttusbir* %297)
  %299 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %300 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %299, i32 0, i32 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %301, align 8
  %302 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %303 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %302, i32 0, i32 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %304, align 8
  %305 = load i32, i32* @ttusbir_brightness_set, align 4
  %306 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %307 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %306, i32 0, i32 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 3
  store i32 %305, i32* %308, align 4
  %309 = load i32, i32* @ttusbir_brightness_get, align 4
  %310 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %311 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %310, i32 0, i32 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  store i32 %309, i32* %312, align 8
  %313 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %314 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %313, i32 0, i32 4
  store i32 1, i32* %314, align 4
  %315 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %316 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %315, i32 0, i32 3
  store i32 1, i32* %316, align 8
  %317 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %318 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %317, i32 0, i32 11
  %319 = call i32 @atomic_set(i32* %318, i32 0)
  %320 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %321 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %320, i32 0, i32 1
  %322 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %323 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %322, i32 0, i32 8
  %324 = call i32 @led_classdev_register(i32* %321, %struct.TYPE_11__* %323)
  store i32 %324, i32* %12, align 4
  %325 = load i32, i32* %12, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %263
  br label %426

328:                                              ; preds = %263
  %329 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %330 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %333 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %332, i32 0, i32 10
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @usb_make_path(i32 %331, i32 %334, i32 4)
  %336 = load i32, i32* @DRIVER_DESC, align 4
  %337 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %338 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %337, i32 0, i32 11
  store i32 %336, i32* %338, align 8
  %339 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %340 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %339, i32 0, i32 10
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %343 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %342, i32 0, i32 10
  store i32 %341, i32* %343, align 4
  %344 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %345 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %348 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %347, i32 0, i32 9
  %349 = call i32 @usb_to_input_id(i32 %346, i32* %348)
  %350 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %351 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %350, i32 0, i32 1
  %352 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %353 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %352, i32 0, i32 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  store i32* %351, i32** %354, align 8
  %355 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %356 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %357 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %356, i32 0, i32 7
  store i32 %355, i32* %357, align 8
  %358 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %359 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %360 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %359, i32 0, i32 6
  store %struct.ttusbir* %358, %struct.ttusbir** %360, align 8
  %361 = load i32, i32* @DRIVER_NAME, align 4
  %362 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %363 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 4
  %364 = load i32, i32* @RC_MAP_TT_1500, align 4
  %365 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %366 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 8
  %367 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %368 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %367, i32 0, i32 0
  store i32 1, i32* %368, align 8
  %369 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %370 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %371 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %370, i32 0, i32 1
  store i32 %369, i32* %371, align 4
  %372 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %373 = mul nsw i32 10, %372
  %374 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %375 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %374, i32 0, i32 2
  store i32 %373, i32* %375, align 8
  %376 = load i32, i32* @NS_PER_BIT, align 4
  %377 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %378 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %377, i32 0, i32 3
  store i32 %376, i32* %378, align 4
  %379 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %380 = call i32 @rc_register_device(%struct.rc_dev* %379)
  store i32 %380, i32* %12, align 4
  %381 = load i32, i32* %12, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %328
  %384 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %385 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %384, i32 0, i32 1
  %386 = load i32, i32* %12, align 4
  %387 = call i32 (i32*, i8*, ...) @dev_err(i32* %385, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %386)
  br label %422

388:                                              ; preds = %328
  %389 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %390 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %391 = call i32 @usb_set_intfdata(%struct.usb_interface* %389, %struct.ttusbir* %390)
  store i32 0, i32* %10, align 4
  br label %392

392:                                              ; preds = %415, %388
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* @NUM_URBS, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %418

396:                                              ; preds = %392
  %397 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %398 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %397, i32 0, i32 7
  %399 = load %struct.urb**, %struct.urb*** %398, align 8
  %400 = load i32, i32* %10, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.urb*, %struct.urb** %399, i64 %401
  %403 = load %struct.urb*, %struct.urb** %402, align 8
  %404 = load i32, i32* @GFP_KERNEL, align 4
  %405 = call i32 @usb_submit_urb(%struct.urb* %403, i32 %404)
  store i32 %405, i32* %12, align 4
  %406 = load i32, i32* %12, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %396
  %409 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %410 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %409, i32 0, i32 9
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %12, align 4
  %413 = call i32 (i32*, i8*, ...) @dev_err(i32* %411, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %412)
  br label %419

414:                                              ; preds = %396
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %10, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %10, align 4
  br label %392

418:                                              ; preds = %392
  store i32 0, i32* %3, align 4
  br label %485

419:                                              ; preds = %408
  %420 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %421 = call i32 @rc_unregister_device(%struct.rc_dev* %420)
  store %struct.rc_dev* null, %struct.rc_dev** %9, align 8
  br label %422

422:                                              ; preds = %419, %383
  %423 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %424 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %423, i32 0, i32 8
  %425 = call i32 @led_classdev_unregister(%struct.TYPE_11__* %424)
  br label %426

426:                                              ; preds = %422, %327, %260, %195, %163, %151, %126, %29
  %427 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %428 = icmp ne %struct.ttusbir* %427, null
  br i1 %428, label %429, label %481

429:                                              ; preds = %426
  store i32 0, i32* %10, align 4
  br label %430

430:                                              ; preds = %467, %429
  %431 = load i32, i32* %10, align 4
  %432 = load i32, i32* @NUM_URBS, align 4
  %433 = icmp slt i32 %431, %432
  br i1 %433, label %434, label %443

434:                                              ; preds = %430
  %435 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %436 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %435, i32 0, i32 7
  %437 = load %struct.urb**, %struct.urb*** %436, align 8
  %438 = load i32, i32* %10, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.urb*, %struct.urb** %437, i64 %439
  %441 = load %struct.urb*, %struct.urb** %440, align 8
  %442 = icmp ne %struct.urb* %441, null
  br label %443

443:                                              ; preds = %434, %430
  %444 = phi i1 [ false, %430 ], [ %442, %434 ]
  br i1 %444, label %445, label %470

445:                                              ; preds = %443
  %446 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %447 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %446, i32 0, i32 7
  %448 = load %struct.urb**, %struct.urb*** %447, align 8
  %449 = load i32, i32* %10, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.urb*, %struct.urb** %448, i64 %450
  %452 = load %struct.urb*, %struct.urb** %451, align 8
  store %struct.urb* %452, %struct.urb** %19, align 8
  %453 = load %struct.urb*, %struct.urb** %19, align 8
  %454 = call i32 @usb_kill_urb(%struct.urb* %453)
  %455 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %456 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.urb*, %struct.urb** %19, align 8
  %459 = getelementptr inbounds %struct.urb, %struct.urb* %458, i32 0, i32 5
  %460 = load i8*, i8** %459, align 8
  %461 = load %struct.urb*, %struct.urb** %19, align 8
  %462 = getelementptr inbounds %struct.urb, %struct.urb* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @usb_free_coherent(i32 %457, i32 128, i8* %460, i32 %463)
  %465 = load %struct.urb*, %struct.urb** %19, align 8
  %466 = call i32 @usb_free_urb(%struct.urb* %465)
  br label %467

467:                                              ; preds = %445
  %468 = load i32, i32* %10, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %10, align 4
  br label %430

470:                                              ; preds = %443
  %471 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %472 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %471, i32 0, i32 5
  %473 = load %struct.urb*, %struct.urb** %472, align 8
  %474 = call i32 @usb_kill_urb(%struct.urb* %473)
  %475 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %476 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %475, i32 0, i32 5
  %477 = load %struct.urb*, %struct.urb** %476, align 8
  %478 = call i32 @usb_free_urb(%struct.urb* %477)
  %479 = load %struct.ttusbir*, %struct.ttusbir** %6, align 8
  %480 = call i32 @kfree(%struct.ttusbir* %479)
  br label %481

481:                                              ; preds = %470, %426
  %482 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %483 = call i32 @rc_free_device(%struct.rc_dev* %482)
  %484 = load i32, i32* %12, align 4
  store i32 %484, i32* %3, align 4
  br label %485

485:                                              ; preds = %481, %418
  %486 = load i32, i32* %3, align 4
  ret i32 %486
}

declare dso_local %struct.ttusbir* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.ttusbir*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

declare dso_local i32 @usb_to_input_id(i32, i32*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ttusbir*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @rc_unregister_device(%struct.rc_dev*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_11__*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ttusbir*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
