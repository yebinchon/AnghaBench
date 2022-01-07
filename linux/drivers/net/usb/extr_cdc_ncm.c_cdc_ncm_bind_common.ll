; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_bind_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_bind_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64*, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32*, i32**, i32*, i32 }
%struct.usb_interface = type { i32, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i64* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.cdc_ncm_ctx = type { i32, i32, %struct.usb_interface*, %struct.usb_interface*, i8*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.usb_driver = type { i32 }
%struct.usb_cdc_parsed_header = type { %struct.TYPE_9__*, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@cdc_ncm_tx_timer_cb = common dso_local global i32 0, align 4
@cdc_ncm_txpath_bh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CDC Union missing - got slave from IAD\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"CDC Union missing and no IAD found\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"MBIM functional descriptor missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"NCM or ECM functional descriptors missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to claim data intf\0A\00", align 1
@CDC_MBIM_FLAG_AVOID_ALTSETTING_TOGGLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"set interface failed\0A\00", align 1
@CDC_NCM_FLAG_RESET_NTB16 = common dso_local global i32 0, align 4
@USB_CDC_GET_NTB_FORMAT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CDC_NCM_NTB32_FORMAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"resetting NTB format to 16-bit\00", align 1
@USB_CDC_SET_NTB_FORMAT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_CDC_NCM_NTB16_FORMAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to collect endpoints\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to get mac address\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"MAC-Address: %pM\0A\00", align 1
@CDC_NCM_FLAG_NDP_TO_END = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"NDP will be placed at end of frame for this device.\00", align 1
@cdc_ncm_ethtool_ops = common dso_local global i32 0, align 4
@cdc_ncm_sysfs_attr_group = common dso_local global i32 0, align 4
@cdc_ncm_netdev_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"bind() failure\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_bind_common(%struct.usbnet* %0, %struct.usb_interface* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdc_ncm_ctx*, align 8
  %11 = alloca %struct.usb_driver*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.usb_cdc_parsed_header, align 8
  %18 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 72, i32 %19)
  %21 = bitcast i8* %20 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %21, %struct.cdc_ncm_ctx** %10, align 8
  %22 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %23 = icmp ne %struct.cdc_ncm_ctx* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %457

27:                                               ; preds = %4
  %28 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %28, i32 0, i32 12
  %30 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %31 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %32 = call i32 @hrtimer_init(%struct.TYPE_13__* %29, i32 %30, i32 %31)
  %33 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32* @cdc_ncm_tx_timer_cb, i32** %35, align 8
  %36 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %36, i32 0, i32 11
  %38 = load i32, i32* @cdc_ncm_txpath_bh, align 4
  %39 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %40 = ptrtoint %struct.usbnet* %39 to i64
  %41 = call i32 @tasklet_init(i32* %37, i32 %38, i64 %40)
  %42 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %42, i32 0, i32 10
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %45, i32 0, i32 9
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %49 = ptrtoint %struct.cdc_ncm_ctx* %48 to i64
  %50 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 %49, i64* %53, align 8
  %54 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %55 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %55, i32 0, i32 3
  store %struct.usb_interface* %54, %struct.usb_interface** %56, align 8
  %57 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %58 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %57)
  store %struct.usb_driver* %58, %struct.usb_driver** %11, align 8
  %59 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  store i64* %63, i64** %12, align 8
  %64 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %13, align 4
  %69 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header* %17, %struct.usb_interface* %69, i64* %70, i32 %71)
  %73 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %17, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %27
  %77 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %17, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @usb_ifnum_to_if(i32 %79, i64 %83)
  %85 = bitcast i8* %84 to %struct.usb_interface*
  %86 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %87 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %86, i32 0, i32 2
  store %struct.usb_interface* %85, %struct.usb_interface** %87, align 8
  br label %88

88:                                               ; preds = %76, %27
  %89 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %17, i32 0, i32 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %91, i32 0, i32 5
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %92, align 8
  %93 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %17, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %17, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %100 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %17, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %104 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %17, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = icmp ne %struct.TYPE_9__* %106, null
  br i1 %107, label %138, label %108

108:                                              ; preds = %88
  %109 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %110 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %138

113:                                              ; preds = %108
  %114 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %115 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %138

120:                                              ; preds = %113
  %121 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %122 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %125 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  %131 = call i8* @usb_ifnum_to_if(i32 %123, i64 %130)
  %132 = bitcast i8* %131 to %struct.usb_interface*
  %133 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %134 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %133, i32 0, i32 2
  store %struct.usb_interface* %132, %struct.usb_interface** %134, align 8
  %135 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %136 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %135, i32 0, i32 0
  %137 = call i32 @dev_dbg(i32* %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %120, %113, %108, %88
  %139 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %140 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %139, i32 0, i32 2
  %141 = load %struct.usb_interface*, %struct.usb_interface** %140, align 8
  %142 = icmp ne %struct.usb_interface* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %145 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %144, i32 0, i32 0
  %146 = call i32 @dev_dbg(i32* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %440

147:                                              ; preds = %138
  %148 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %149 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %148, i32 0, i32 1
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = call i64 @cdc_ncm_comm_intf_is_mbim(%struct.TYPE_14__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %155 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %160 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %159, i32 0, i32 0
  %161 = call i32 @dev_dbg(i32* %160, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %440

162:                                              ; preds = %153
  br label %178

163:                                              ; preds = %147
  %164 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %165 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %164, i32 0, i32 5
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = icmp ne %struct.TYPE_11__* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %170 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %175 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %174, i32 0, i32 0
  %176 = call i32 @dev_dbg(i32* %175, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %440

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %162
  %179 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %180 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %179, i32 0, i32 2
  %181 = load %struct.usb_interface*, %struct.usb_interface** %180, align 8
  %182 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %183 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %182, i32 0, i32 3
  %184 = load %struct.usb_interface*, %struct.usb_interface** %183, align 8
  %185 = icmp ne %struct.usb_interface* %181, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %178
  %187 = load %struct.usb_driver*, %struct.usb_driver** %11, align 8
  %188 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %189 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %188, i32 0, i32 2
  %190 = load %struct.usb_interface*, %struct.usb_interface** %189, align 8
  %191 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %192 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %187, %struct.usb_interface* %190, %struct.usbnet* %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %186
  %196 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %197 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %196, i32 0, i32 0
  %198 = call i32 @dev_dbg(i32* %197, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %440

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %178
  %201 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %202 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %201, i32 0, i32 2
  %203 = load %struct.usb_interface*, %struct.usb_interface** %202, align 8
  %204 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %203, i32 0, i32 1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %16, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %211 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %213 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CDC_MBIM_FLAG_AVOID_ALTSETTING_TOGGLE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %200
  %219 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %220 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = load i64, i64* %16, align 8
  %223 = load i64, i64* %8, align 8
  %224 = call i32 @usb_set_interface(i32 %221, i64 %222, i64 %223)
  br label %225

225:                                              ; preds = %218, %200
  %226 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %227 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load i64, i64* %16, align 8
  %230 = call i32 @usb_set_interface(i32 %228, i64 %229, i64 0)
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %235 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %234, i32 0, i32 0
  %236 = call i32 @dev_dbg(i32* %235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %417

237:                                              ; preds = %225
  %238 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %239 = call i64 @cdc_ncm_init(%struct.usbnet* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %417

242:                                              ; preds = %237
  %243 = call i32 @usleep_range(i32 10000, i32 20000)
  %244 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %245 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load i64, i64* %16, align 8
  %248 = load i64, i64* %8, align 8
  %249 = call i32 @usb_set_interface(i32 %246, i64 %247, i64 %248)
  store i32 %249, i32* %14, align 4
  %250 = load i32, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %242
  %253 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %254 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %253, i32 0, i32 0
  %255 = call i32 @dev_dbg(i32* %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %417

256:                                              ; preds = %242
  %257 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %258 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @CDC_NCM_FLAG_RESET_NTB16, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %300

263:                                              ; preds = %256
  %264 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %265 = load i32, i32* @USB_CDC_GET_NTB_FORMAT, align 4
  %266 = load i32, i32* @USB_TYPE_CLASS, align 4
  %267 = load i32, i32* @USB_DIR_IN, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %270 = or i32 %268, %269
  %271 = load i64, i64* %16, align 8
  %272 = call i32 @usbnet_read_cmd(%struct.usbnet* %264, i32 %265, i32 %270, i32 0, i64 %271, i64* %18, i32 2)
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %263
  br label %417

276:                                              ; preds = %263
  %277 = load i64, i64* %18, align 8
  %278 = load i32, i32* @USB_CDC_NCM_NTB32_FORMAT, align 4
  %279 = call i64 @cpu_to_le16(i32 %278)
  %280 = icmp eq i64 %277, %279
  br i1 %280, label %281, label %299

281:                                              ; preds = %276
  %282 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %283 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %282, i32 0, i32 0
  %284 = call i32 (i32*, i8*, ...) @dev_info(i32* %283, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %285 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %286 = load i32, i32* @USB_CDC_SET_NTB_FORMAT, align 4
  %287 = load i32, i32* @USB_TYPE_CLASS, align 4
  %288 = load i32, i32* @USB_DIR_OUT, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @USB_CDC_NCM_NTB16_FORMAT, align 4
  %293 = load i64, i64* %16, align 8
  %294 = call i32 @usbnet_write_cmd(%struct.usbnet* %285, i32 %286, i32 %291, i32 %292, i64 %293, i32* null, i32 0)
  store i32 %294, i32* %15, align 4
  %295 = load i32, i32* %15, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %281
  br label %417

298:                                              ; preds = %281
  br label %299

299:                                              ; preds = %298, %276
  br label %300

300:                                              ; preds = %299, %256
  %301 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %302 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %303 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %302, i32 0, i32 2
  %304 = load %struct.usb_interface*, %struct.usb_interface** %303, align 8
  %305 = call i32 @cdc_ncm_find_endpoints(%struct.usbnet* %301, %struct.usb_interface* %304)
  %306 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %307 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %308 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %307, i32 0, i32 3
  %309 = load %struct.usb_interface*, %struct.usb_interface** %308, align 8
  %310 = call i32 @cdc_ncm_find_endpoints(%struct.usbnet* %306, %struct.usb_interface* %309)
  %311 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %312 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %300
  %316 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %317 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %322 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %320, %315, %300
  %326 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %327 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %326, i32 0, i32 0
  %328 = call i32 @dev_dbg(i32* %327, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %417

329:                                              ; preds = %320
  %330 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %331 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %330, i32 0, i32 2
  %332 = load %struct.usb_interface*, %struct.usb_interface** %331, align 8
  %333 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %334 = call i32 @usb_set_intfdata(%struct.usb_interface* %332, %struct.usbnet* %333)
  %335 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %336 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %335, i32 0, i32 3
  %337 = load %struct.usb_interface*, %struct.usb_interface** %336, align 8
  %338 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %339 = call i32 @usb_set_intfdata(%struct.usb_interface* %337, %struct.usbnet* %338)
  %340 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %341 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %340, i32 0, i32 5
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %341, align 8
  %343 = icmp ne %struct.TYPE_11__* %342, null
  br i1 %343, label %344, label %367

344:                                              ; preds = %329
  %345 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %346 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %347 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %346, i32 0, i32 5
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @usbnet_get_ethernet_addr(%struct.usbnet* %345, i32 %350)
  store i32 %351, i32* %14, align 4
  %352 = load i32, i32* %14, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %344
  %355 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %356 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %355, i32 0, i32 0
  %357 = call i32 @dev_dbg(i32* %356, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %417

358:                                              ; preds = %344
  %359 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %360 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %359, i32 0, i32 0
  %361 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %362 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %361, i32 0, i32 1
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = call i32 (i32*, i8*, ...) @dev_info(i32* %360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %365)
  br label %367

367:                                              ; preds = %358, %329
  %368 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %369 = call i32 @cdc_ncm_setup(%struct.usbnet* %368)
  %370 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %371 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %393

376:                                              ; preds = %367
  %377 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %378 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @GFP_KERNEL, align 4
  %381 = call i8* @kzalloc(i32 %379, i32 %380)
  %382 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %383 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %382, i32 0, i32 4
  store i8* %381, i8** %383, align 8
  %384 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %385 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %384, i32 0, i32 4
  %386 = load i8*, i8** %385, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %389, label %388

388:                                              ; preds = %376
  br label %417

389:                                              ; preds = %376
  %390 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %391 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %390, i32 0, i32 0
  %392 = call i32 (i32*, i8*, ...) @dev_info(i32* %391, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %393

393:                                              ; preds = %389, %367
  %394 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %395 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %394, i32 0, i32 1
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 3
  store i32* @cdc_ncm_ethtool_ops, i32** %397, align 8
  %398 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %399 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %398, i32 0, i32 1
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 2
  %402 = load i32**, i32*** %401, align 8
  %403 = getelementptr inbounds i32*, i32** %402, i64 0
  store i32* @cdc_ncm_sysfs_attr_group, i32** %403, align 8
  %404 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %405 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %404, i32 0, i32 1
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 1
  store i32* @cdc_ncm_netdev_ops, i32** %407, align 8
  %408 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %409 = call i64 @cdc_ncm_max_dgram_size(%struct.usbnet* %408)
  %410 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %411 = call i64 @cdc_ncm_eth_hlen(%struct.usbnet* %410)
  %412 = sub nsw i64 %409, %411
  %413 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %414 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %413, i32 0, i32 1
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 0
  store i64 %412, i64* %416, align 8
  store i32 0, i32* %5, align 4
  br label %457

417:                                              ; preds = %388, %354, %325, %297, %275, %252, %241, %233
  %418 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %419 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %418, i32 0, i32 3
  %420 = load %struct.usb_interface*, %struct.usb_interface** %419, align 8
  %421 = call i32 @usb_set_intfdata(%struct.usb_interface* %420, %struct.usbnet* null)
  %422 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %423 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %422, i32 0, i32 2
  %424 = load %struct.usb_interface*, %struct.usb_interface** %423, align 8
  %425 = call i32 @usb_set_intfdata(%struct.usb_interface* %424, %struct.usbnet* null)
  %426 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %427 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %426, i32 0, i32 2
  %428 = load %struct.usb_interface*, %struct.usb_interface** %427, align 8
  %429 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %430 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %429, i32 0, i32 3
  %431 = load %struct.usb_interface*, %struct.usb_interface** %430, align 8
  %432 = icmp ne %struct.usb_interface* %428, %431
  br i1 %432, label %433, label %439

433:                                              ; preds = %417
  %434 = load %struct.usb_driver*, %struct.usb_driver** %11, align 8
  %435 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %436 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %435, i32 0, i32 2
  %437 = load %struct.usb_interface*, %struct.usb_interface** %436, align 8
  %438 = call i32 @usb_driver_release_interface(%struct.usb_driver* %434, %struct.usb_interface* %437)
  br label %439

439:                                              ; preds = %433, %417
  br label %440

440:                                              ; preds = %439, %195, %173, %158, %143
  %441 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %442 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %441, i32 0, i32 0
  %443 = load i64*, i64** %442, align 8
  %444 = getelementptr inbounds i64, i64* %443, i64 0
  %445 = load i64, i64* %444, align 8
  %446 = inttoptr i64 %445 to %struct.cdc_ncm_ctx*
  %447 = call i32 @cdc_ncm_free(%struct.cdc_ncm_ctx* %446)
  %448 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %449 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %448, i32 0, i32 0
  %450 = load i64*, i64** %449, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 0
  store i64 0, i64* %451, align 8
  %452 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %453 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %452, i32 0, i32 0
  %454 = call i32 (i32*, i8*, ...) @dev_info(i32* %453, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %455 = load i32, i32* @ENODEV, align 4
  %456 = sub nsw i32 0, %455
  store i32 %456, i32* %5, align 4
  br label %457

457:                                              ; preds = %440, %393, %24
  %458 = load i32, i32* %5, align 4
  ret i32 %458
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header*, %struct.usb_interface*, i64*, i32) #1

declare dso_local i8* @usb_ifnum_to_if(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @cdc_ncm_comm_intf_is_mbim(%struct.TYPE_14__*) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, %struct.usbnet*) #1

declare dso_local i32 @usb_set_interface(i32, i64, i64) #1

declare dso_local i64 @cdc_ncm_init(%struct.usbnet*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @usbnet_read_cmd(%struct.usbnet*, i32, i32, i32, i64, i64*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @usbnet_write_cmd(%struct.usbnet*, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @cdc_ncm_find_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usbnet*) #1

declare dso_local i32 @usbnet_get_ethernet_addr(%struct.usbnet*, i32) #1

declare dso_local i32 @cdc_ncm_setup(%struct.usbnet*) #1

declare dso_local i64 @cdc_ncm_max_dgram_size(%struct.usbnet*) #1

declare dso_local i64 @cdc_ncm_eth_hlen(%struct.usbnet*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @cdc_ncm_free(%struct.cdc_ncm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
