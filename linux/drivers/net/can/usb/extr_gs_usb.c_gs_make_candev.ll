; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_make_candev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_make_candev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_can = type { i32, %struct.net_device*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__*, i32, i32, i32, %struct.usb_interface*, i32 }
%struct.net_device = type { i32*, i32, i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.gs_can* }
%struct.usb_interface = type { i32 }
%struct.gs_device_config = type { i32 }
%struct.gs_device_bt_const = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GS_USB_BREQ_BT_CONST = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Couldn't get bit timing const for channel (err=%d)\0A\00", align 1
@GS_MAX_TX_URBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't allocate candev\0A\00", align 1
@gs_usb_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"gs_usb\00", align 1
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@gs_usb_set_bittiming = common dso_local global i32 0, align 4
@GS_CAN_FEATURE_LISTEN_ONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@GS_CAN_FEATURE_LOOP_BACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@GS_CAN_FEATURE_TRIPLE_SAMPLE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@GS_CAN_FEATURE_ONE_SHOT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@GS_CAN_FEATURE_IDENTIFY = common dso_local global i32 0, align 4
@gs_usb_ethtool_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Couldn't register candev (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gs_can* (i32, %struct.usb_interface*, %struct.gs_device_config*)* @gs_make_candev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gs_can* @gs_make_candev(i32 %0, %struct.usb_interface* %1, %struct.gs_device_config* %2) #0 {
  %4 = alloca %struct.gs_can*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.gs_device_config*, align 8
  %8 = alloca %struct.gs_can*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gs_device_bt_const*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.gs_device_config* %2, %struct.gs_device_config** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gs_device_bt_const* @kmalloc(i32 40, i32 %12)
  store %struct.gs_device_bt_const* %13, %struct.gs_device_bt_const** %11, align 8
  %14 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %15 = icmp ne %struct.gs_device_bt_const* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.gs_can* @ERR_PTR(i32 %18)
  store %struct.gs_can* %19, %struct.gs_can** %4, align 8
  br label %290

20:                                               ; preds = %3
  %21 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %22 = call i32 @interface_to_usbdev(%struct.usb_interface* %21)
  %23 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %24 = call i32 @interface_to_usbdev(%struct.usb_interface* %23)
  %25 = call i32 @usb_rcvctrlpipe(i32 %24, i32 0)
  %26 = load i32, i32* @GS_USB_BREQ_BT_CONST, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %34 = call i32 @usb_control_msg(i32 %22, i32 %25, i32 %26, i32 %31, i32 %32, i32 0, %struct.gs_device_bt_const* %33, i32 40, i32 1000)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %20
  %38 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %43 = call i32 @kfree(%struct.gs_device_bt_const* %42)
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.gs_can* @ERR_PTR(i32 %44)
  store %struct.gs_can* %45, %struct.gs_can** %4, align 8
  br label %290

46:                                               ; preds = %20
  %47 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %48 = call %struct.net_device* @alloc_candev(i32 120, i32 %47)
  store %struct.net_device* %48, %struct.net_device** %9, align 8
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %56 = call i32 @kfree(%struct.gs_device_bt_const* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.gs_can* @ERR_PTR(i32 %58)
  store %struct.gs_can* %59, %struct.gs_can** %4, align 8
  br label %290

60:                                               ; preds = %46
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = call %struct.gs_can* @netdev_priv(%struct.net_device* %61)
  store %struct.gs_can* %62, %struct.gs_can** %8, align 8
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 2
  store i32* @gs_usb_netdev_ops, i32** %64, align 8
  %65 = load i32, i32* @IFF_ECHO, align 4
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %71 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @strcpy(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %76 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %79 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  store i32 %77, i32* %80, align 4
  %81 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %82 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %85 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 8
  %87 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %88 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %91 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 5
  store i32 %89, i32* %92, align 4
  %93 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %94 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %97 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 8
  %99 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %100 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %103 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %106 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %109 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %112 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %115 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %118 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %121 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %124 = call i32 @interface_to_usbdev(%struct.usb_interface* %123)
  %125 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %126 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 8
  %127 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %128 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %129 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %128, i32 0, i32 8
  store %struct.usb_interface* %127, %struct.usb_interface** %129, align 8
  %130 = load %struct.net_device*, %struct.net_device** %9, align 8
  %131 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %132 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %131, i32 0, i32 1
  store %struct.net_device* %130, %struct.net_device** %132, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %135 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %137 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %136, i32 0, i32 7
  %138 = call i32 @init_usb_anchor(i32* %137)
  %139 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %140 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %139, i32 0, i32 6
  %141 = call i32 @atomic_set(i32* %140, i32 0)
  %142 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %143 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %142, i32 0, i32 5
  %144 = call i32 @spin_lock_init(i32* %143)
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %166, %60
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %145
  %150 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %151 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %152 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %151, i32 0, i32 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store %struct.gs_can* %150, %struct.gs_can** %157, align 8
  %158 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %159 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %160 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %159, i32 0, i32 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i32 %158, i32* %165, align 8
  br label %166

166:                                              ; preds = %149
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %145

169:                                              ; preds = %145
  %170 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %171 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %172 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  store i32 %170, i32* %173, align 4
  %174 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %175 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %178 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 8
  %181 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %182 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %181, i32 0, i32 3
  %183 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %184 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %185, align 8
  %186 = load i32, i32* @gs_usb_set_bittiming, align 4
  %187 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %188 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %191 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  %193 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %194 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @GS_CAN_FEATURE_LISTEN_ONLY, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %169
  %200 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %201 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %202 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %199, %169
  %207 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %208 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @GS_CAN_FEATURE_LOOP_BACK, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %215 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %216 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %214
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %213, %206
  %221 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %222 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @GS_CAN_FEATURE_TRIPLE_SAMPLE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %220
  %228 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %229 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %230 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %228
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %227, %220
  %235 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %236 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @GS_CAN_FEATURE_ONE_SHOT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %234
  %242 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %243 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %244 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %242
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %241, %234
  %249 = load %struct.net_device*, %struct.net_device** %9, align 8
  %250 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %251 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %250, i32 0, i32 0
  %252 = call i32 @SET_NETDEV_DEV(%struct.net_device* %249, i32* %251)
  %253 = load %struct.gs_device_config*, %struct.gs_device_config** %7, align 8
  %254 = getelementptr inbounds %struct.gs_device_config, %struct.gs_device_config* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 1
  br i1 %256, label %257, label %268

257:                                              ; preds = %248
  %258 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %259 = getelementptr inbounds %struct.gs_device_bt_const, %struct.gs_device_bt_const* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @GS_CAN_FEATURE_IDENTIFY, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.net_device*, %struct.net_device** %9, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  store i32* @gs_usb_ethtool_ops, i32** %266, align 8
  br label %267

267:                                              ; preds = %264, %257
  br label %268

268:                                              ; preds = %267, %248
  %269 = load %struct.gs_device_bt_const*, %struct.gs_device_bt_const** %11, align 8
  %270 = call i32 @kfree(%struct.gs_device_bt_const* %269)
  %271 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %272 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %271, i32 0, i32 1
  %273 = load %struct.net_device*, %struct.net_device** %272, align 8
  %274 = call i32 @register_candev(%struct.net_device* %273)
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %10, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %268
  %278 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  %279 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %278, i32 0, i32 1
  %280 = load %struct.net_device*, %struct.net_device** %279, align 8
  %281 = call i32 @free_candev(%struct.net_device* %280)
  %282 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %283 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %282, i32 0, i32 0
  %284 = load i32, i32* %10, align 4
  %285 = call i32 (i32*, i8*, ...) @dev_err(i32* %283, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %10, align 4
  %287 = call %struct.gs_can* @ERR_PTR(i32 %286)
  store %struct.gs_can* %287, %struct.gs_can** %4, align 8
  br label %290

288:                                              ; preds = %268
  %289 = load %struct.gs_can*, %struct.gs_can** %8, align 8
  store %struct.gs_can* %289, %struct.gs_can** %4, align 8
  br label %290

290:                                              ; preds = %288, %277, %51, %37, %16
  %291 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  ret %struct.gs_can* %291
}

declare dso_local %struct.gs_device_bt_const* @kmalloc(i32, i32) #1

declare dso_local %struct.gs_can* @ERR_PTR(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.gs_device_bt_const*, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.gs_device_bt_const*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local %struct.gs_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
