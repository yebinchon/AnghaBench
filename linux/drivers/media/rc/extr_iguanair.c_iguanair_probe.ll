; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.iguanair = type { i32, i32, i8*, i32, i8*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.usb_device*, i32, i32, i32, i32, i32*, %struct.rc_dev* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.rc_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32, i32, %struct.iguanair*, i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_IN_PACKET = common dso_local global i32 0, align 4
@MAX_OUT_PACKET = common dso_local global i32 0, align 4
@iguanair_irq_out = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@iguanair_rx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to submit urb: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"IguanaWorks USB IR Transceiver version 0x%04x\00", align 1
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@iguanair_open = common dso_local global i32 0, align 4
@iguanair_close = common dso_local global i32 0, align 4
@iguanair_tx = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i32 0, align 4
@IR_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@RX_RESOLUTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to register rc device %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @iguanair_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iguanair_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.iguanair*, align 8
  %8 = alloca %struct.rc_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %16, align 8
  store %struct.usb_host_interface* %17, %struct.usb_host_interface** %12, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %19 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %344

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.iguanair* @kzalloc(i32 88, i32 %27)
  store %struct.iguanair* %28, %struct.iguanair** %7, align 8
  %29 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %30 = call %struct.rc_dev* @rc_allocate_device(i32 %29)
  store %struct.rc_dev* %30, %struct.rc_dev** %8, align 8
  %31 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %32 = icmp ne %struct.iguanair* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %35 = icmp ne %struct.rc_dev* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %308

39:                                               ; preds = %33
  %40 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %41 = load i32, i32* @MAX_IN_PACKET, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %44 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %43, i32 0, i32 3
  %45 = call i8* @usb_alloc_coherent(%struct.usb_device* %40, i32 %41, i32 %42, i32* %44)
  %46 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %47 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = load i32, i32* @MAX_OUT_PACKET, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %52 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %51, i32 0, i32 1
  %53 = call i8* @usb_alloc_coherent(%struct.usb_device* %48, i32 %49, i32 %50, i32* %52)
  %54 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %55 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @usb_alloc_urb(i32 0, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_13__*
  %59 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %60 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %59, i32 0, i32 6
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @usb_alloc_urb(i32 0, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_13__*
  %64 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %65 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %64, i32 0, i32 5
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %65, align 8
  %66 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %67 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %101

70:                                               ; preds = %39
  %71 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %72 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %70
  %76 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %77 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %76, i32 0, i32 6
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %82 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %81, i32 0, i32 5
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = icmp ne %struct.TYPE_13__* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %87 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %86, i32 0, i32 0
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = call i32 @usb_endpoint_is_int_in(%struct.TYPE_14__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %95 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = call i32 @usb_endpoint_is_int_out(%struct.TYPE_14__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %93, %85, %80, %75, %70, %39
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %308

104:                                              ; preds = %93
  %105 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %106 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %107 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %106, i32 0, i32 13
  store %struct.rc_dev* %105, %struct.rc_dev** %107, align 8
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 0
  %110 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %111 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %110, i32 0, i32 12
  store i32* %109, i32** %111, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %114 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %113, i32 0, i32 7
  store %struct.usb_device* %112, %struct.usb_device** %114, align 8
  %115 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %116 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %115, i32 0, i32 11
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %119 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %118, i32 0, i32 10
  %120 = call i32 @init_completion(i32* %119)
  %121 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %122 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %123 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @usb_sndintpipe(%struct.usb_device* %121, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %131 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %130, i32 0, i32 5
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %136 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* @MAX_OUT_PACKET, align 4
  %139 = load i32, i32* @iguanair_irq_out, align 4
  %140 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %141 = call i32 @usb_fill_int_urb(%struct.TYPE_13__* %132, %struct.usb_device* %133, i32 %134, i8* %137, i32 %138, i32 %139, %struct.iguanair* %140, i32 1)
  %142 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %143 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %146 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %145, i32 0, i32 5
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %150 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %151 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %150, i32 0, i32 5
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %149
  store i32 %155, i32* %153, align 4
  %156 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %157 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %158 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @usb_rcvintpipe(%struct.usb_device* %156, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %166 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %165, i32 0, i32 6
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %171 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* @MAX_IN_PACKET, align 4
  %174 = load i32, i32* @iguanair_rx, align 4
  %175 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %176 = call i32 @usb_fill_int_urb(%struct.TYPE_13__* %167, %struct.usb_device* %168, i32 %169, i8* %172, i32 %173, i32 %174, %struct.iguanair* %175, i32 1)
  %177 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %178 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %181 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %180, i32 0, i32 6
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 4
  %184 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %185 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %186 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %185, i32 0, i32 6
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %184
  store i32 %190, i32* %188, align 4
  %191 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %192 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %191, i32 0, i32 6
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = call i32 @usb_submit_urb(%struct.TYPE_13__* %193, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %104
  %199 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %200 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %199, i32 0, i32 0
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @dev_warn(i32* %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %201)
  br label %308

203:                                              ; preds = %104
  %204 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %205 = call i32 @iguanair_get_features(%struct.iguanair* %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %299

209:                                              ; preds = %203
  %210 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %211 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %214 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @snprintf(i32 %212, i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %215)
  %217 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %218 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %217, i32 0, i32 7
  %219 = load %struct.usb_device*, %struct.usb_device** %218, align 8
  %220 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %221 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @usb_make_path(%struct.usb_device* %219, i32 %222, i32 4)
  %224 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %225 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %228 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %227, i32 0, i32 16
  store i32 %226, i32* %228, align 8
  %229 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %230 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %233 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %232, i32 0, i32 15
  store i32 %231, i32* %233, align 4
  %234 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %235 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %234, i32 0, i32 7
  %236 = load %struct.usb_device*, %struct.usb_device** %235, align 8
  %237 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %238 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %237, i32 0, i32 14
  %239 = call i32 @usb_to_input_id(%struct.usb_device* %236, i32* %238)
  %240 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %241 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %240, i32 0, i32 0
  %242 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %243 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %242, i32 0, i32 13
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  store i32* %241, i32** %244, align 8
  %245 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %246 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %247 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %246, i32 0, i32 12
  store i32 %245, i32* %247, align 8
  %248 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %249 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %250 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %249, i32 0, i32 11
  store %struct.iguanair* %248, %struct.iguanair** %250, align 8
  %251 = load i32, i32* @iguanair_open, align 4
  %252 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %253 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %252, i32 0, i32 10
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @iguanair_close, align 4
  %255 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %256 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %255, i32 0, i32 9
  store i32 %254, i32* %256, align 8
  %257 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %258 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %257, i32 0, i32 8
  store i32 (%struct.rc_dev*, i32)* @iguanair_set_tx_mask, i32 (%struct.rc_dev*, i32)** %258, align 8
  %259 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %260 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %259, i32 0, i32 7
  store i32 (%struct.rc_dev*, i32)* @iguanair_set_tx_carrier, i32 (%struct.rc_dev*, i32)** %260, align 8
  %261 = load i32, i32* @iguanair_tx, align 4
  %262 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %263 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 8
  %264 = load i32, i32* @DRIVER_NAME, align 4
  %265 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %266 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %265, i32 0, i32 5
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* @RC_MAP_RC6_MCE, align 4
  %268 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %269 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 8
  %270 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %271 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %270, i32 0, i32 0
  store i32 1, i32* %271, align 8
  %272 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %273 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %274 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %276 = mul nsw i32 10, %275
  %277 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %278 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* @RX_RESOLUTION, align 4
  %280 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %281 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  %282 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %283 = call i32 @iguanair_set_tx_carrier(%struct.rc_dev* %282, i32 38000)
  %284 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %285 = call i32 @iguanair_set_tx_mask(%struct.rc_dev* %284, i32 0)
  %286 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %287 = call i32 @rc_register_device(%struct.rc_dev* %286)
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* %9, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %209
  %291 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %292 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %291, i32 0, i32 0
  %293 = load i32, i32* %9, align 4
  %294 = call i32 @dev_err(i32* %292, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %293)
  br label %299

295:                                              ; preds = %209
  %296 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %297 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %298 = call i32 @usb_set_intfdata(%struct.usb_interface* %296, %struct.iguanair* %297)
  store i32 0, i32* %3, align 4
  br label %344

299:                                              ; preds = %290, %208
  %300 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %301 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %300, i32 0, i32 6
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = call i32 @usb_kill_urb(%struct.TYPE_13__* %302)
  %304 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %305 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %304, i32 0, i32 5
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %305, align 8
  %307 = call i32 @usb_kill_urb(%struct.TYPE_13__* %306)
  br label %308

308:                                              ; preds = %299, %198, %101, %36
  %309 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %310 = icmp ne %struct.iguanair* %309, null
  br i1 %310, label %311, label %338

311:                                              ; preds = %308
  %312 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %313 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %312, i32 0, i32 6
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = call i32 @usb_free_urb(%struct.TYPE_13__* %314)
  %316 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %317 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %316, i32 0, i32 5
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  %319 = call i32 @usb_free_urb(%struct.TYPE_13__* %318)
  %320 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %321 = load i32, i32* @MAX_IN_PACKET, align 4
  %322 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %323 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %322, i32 0, i32 4
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %326 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @usb_free_coherent(%struct.usb_device* %320, i32 %321, i8* %324, i32 %327)
  %329 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %330 = load i32, i32* @MAX_OUT_PACKET, align 4
  %331 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %332 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %331, i32 0, i32 2
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %335 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @usb_free_coherent(%struct.usb_device* %329, i32 %330, i8* %333, i32 %336)
  br label %338

338:                                              ; preds = %311, %308
  %339 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %340 = call i32 @rc_free_device(%struct.rc_dev* %339)
  %341 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %342 = call i32 @kfree(%struct.iguanair* %341)
  %343 = load i32, i32* %9, align 4
  store i32 %343, i32* %3, align 4
  br label %344

344:                                              ; preds = %338, %295, %23
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.iguanair* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.TYPE_14__*) #1

declare dso_local i32 @usb_endpoint_is_int_out(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_13__*, %struct.usb_device*, i32, i8*, i32, i32, %struct.iguanair*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @iguanair_get_features(%struct.iguanair*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @iguanair_set_tx_mask(%struct.rc_dev*, i32) #1

declare dso_local i32 @iguanair_set_tx_carrier(%struct.rc_dev*, i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.iguanair*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_13__*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_13__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.iguanair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
