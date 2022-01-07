; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_generic_rndis_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_generic_rndis_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, i32, %struct.net_device*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i64 (%struct.usbnet*)* }
%struct.usb_interface = type { i32 }
%struct.cdc_state = type { i32* }
%union.anon = type { i8* }
%struct.rndis_init = type { i8*, i8*, i8*, i8*, i8* }
%struct.rndis_msg_hdr = type opaque
%struct.rndis_init_c = type { i32, i32 }
%struct.rndis_set = type { i8*, i8*, i8*, i8*, i8* }
%struct.rndis_halt = type { i8*, i8*, i8*, i8*, i8* }

@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RNDIS_MSG_INIT = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dev->maxpacket can't be 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rndis_netdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RNDIS init failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"dev can't take %u byte packets (max %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"dev can't take %u byte packets (max %u), adjusting MTU to %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"hard mtu %u (%u from dev), rx buflen %zu, align %d\0A\00", align 1
@RNDIS_OID_GEN_PHYSICAL_MEDIUM = common dso_local global i32 0, align 4
@RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED = common dso_local global i32 0, align 4
@FLAG_RNDIS_PHYM_WIRELESS = common dso_local global i32 0, align 4
@RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [61 x i8] c"driver requires wireless physical medium, but device is not\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@FLAG_RNDIS_PHYM_NOT_WIRELESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [71 x i8] c"driver requires non-wireless physical medium, but device is wireless.\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@RNDIS_OID_802_3_PERMANENT_ADDRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"rndis get ethaddr, %d\0A\00", align 1
@RNDIS_MSG_SET = common dso_local global i32 0, align 4
@RNDIS_OID_GEN_CURRENT_PACKET_FILTER = common dso_local global i32 0, align 4
@RNDIS_DEFAULT_FILTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"rndis set packet filter, %d\0A\00", align 1
@RNDIS_MSG_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_rndis_bind(%struct.usbnet* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.cdc_state*, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 7
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.cdc_state*
  store %struct.cdc_state* %23, %struct.cdc_state** %10, align 8
  %24 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  %27 = bitcast %union.anon* %11 to i8**
  store i8* %26, i8** %27, align 8
  %28 = bitcast %union.anon* %11 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %412

34:                                               ; preds = %3
  %35 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %37 = call i32 @usbnet_generic_cdc_bind(%struct.usbnet* %35, %struct.usb_interface* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %407

41:                                               ; preds = %34
  %42 = load i32, i32* @RNDIS_MSG_INIT, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = bitcast %union.anon* %11 to %struct.rndis_init**
  %45 = load %struct.rndis_init*, %struct.rndis_init** %44, align 8
  %46 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = call i8* @cpu_to_le32(i32 40)
  %48 = bitcast %union.anon* %11 to %struct.rndis_init**
  %49 = load %struct.rndis_init*, %struct.rndis_init** %48, align 8
  %50 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = call i8* @cpu_to_le32(i32 1)
  %52 = bitcast %union.anon* %11 to %struct.rndis_init**
  %53 = load %struct.rndis_init*, %struct.rndis_init** %52, align 8
  %54 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = call i8* @cpu_to_le32(i32 0)
  %56 = bitcast %union.anon* %11 to %struct.rndis_init**
  %57 = load %struct.rndis_init*, %struct.rndis_init** %56, align 8
  %58 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %9, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 8
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_device*, %struct.net_device** %9, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %73 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %75 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @usb_maxpacket(i32 %76, i32 %79, i32 1)
  %81 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %84 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %41
  %88 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %89 = load i32, i32* @probe, align 4
  %90 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %91 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %90, i32 0, i32 3
  %92 = load %struct.net_device*, %struct.net_device** %91, align 8
  %93 = call i32 @netif_dbg(%struct.usbnet* %88, i32 %89, %struct.net_device* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %394

96:                                               ; preds = %41
  %97 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %98 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %101 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = add nsw i32 %99, %103
  %105 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %106 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %108 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  %111 = xor i32 %110, -1
  %112 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %113 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %117 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = bitcast %union.anon* %11 to %struct.rndis_init**
  %121 = load %struct.rndis_init*, %struct.rndis_init** %120, align 8
  %122 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  %123 = load %struct.net_device*, %struct.net_device** %9, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 3
  store i32* @rndis_netdev_ops, i32** %124, align 8
  %125 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %126 = bitcast %union.anon* %11 to %struct.rndis_msg_hdr**
  %127 = load %struct.rndis_msg_hdr*, %struct.rndis_msg_hdr** %126, align 8
  %128 = bitcast %struct.rndis_msg_hdr* %127 to i8*
  %129 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %130 = call i32 @rndis_command(%struct.usbnet* %125, i8* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %96
  %137 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %138 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %137, i32 0, i32 0
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %394

141:                                              ; preds = %96
  %142 = bitcast %union.anon* %11 to %struct.rndis_init_c**
  %143 = load %struct.rndis_init_c*, %struct.rndis_init_c** %142, align 8
  %144 = getelementptr inbounds %struct.rndis_init_c, %struct.rndis_init_c* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le32_to_cpu(i32 %145)
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %12, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %150 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %199

154:                                              ; preds = %141
  %155 = load i64, i64* %12, align 8
  %156 = load %struct.net_device*, %struct.net_device** %9, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = icmp sle i64 %155, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %163 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %162, i32 0, i32 0
  %164 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %165 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %12, align 8
  %168 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %166, i64 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %374

171:                                              ; preds = %154
  %172 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %173 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %172, i32 0, i32 0
  %174 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %175 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load %struct.net_device*, %struct.net_device** %9, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %179, %183
  %185 = call i32 @dev_warn(i32* %173, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %177, i64 %178, i64 %184)
  %186 = load i64, i64* %12, align 8
  %187 = trunc i64 %186 to i32
  %188 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %189 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %191 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.net_device*, %struct.net_device** %9, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %192, %195
  %197 = load %struct.net_device*, %struct.net_device** %9, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %171, %141
  %200 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %201 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %200, i32 0, i32 0
  %202 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %203 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %12, align 8
  %207 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %208 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = bitcast %union.anon* %11 to %struct.rndis_init_c**
  %211 = load %struct.rndis_init_c*, %struct.rndis_init_c** %210, align 8
  %212 = getelementptr inbounds %struct.rndis_init_c, %struct.rndis_init_c* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @le32_to_cpu(i32 %213)
  %215 = shl i32 1, %214
  %216 = call i32 @dev_dbg(i32* %201, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %205, i64 %206, i32 %209, i32 %215)
  %217 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %218 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %217, i32 0, i32 4
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i64 (%struct.usbnet*)*, i64 (%struct.usbnet*)** %220, align 8
  %222 = icmp ne i64 (%struct.usbnet*)* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %199
  %224 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %225 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %224, i32 0, i32 4
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i64 (%struct.usbnet*)*, i64 (%struct.usbnet*)** %227, align 8
  %229 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %230 = call i64 %228(%struct.usbnet* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  br label %374

233:                                              ; preds = %223, %199
  store i8** null, i8*** %14, align 8
  store i32 8, i32* %15, align 4
  %234 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %235 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %236 = bitcast %union.anon* %11 to i8**
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* @RNDIS_OID_GEN_PHYSICAL_MEDIUM, align 4
  %239 = bitcast i8*** %14 to i8**
  %240 = call i32 @rndis_query(%struct.usbnet* %234, %struct.usb_interface* %235, i8* %237, i32 %238, i32 0, i8** %239, i32* %15)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %233
  %244 = load i8**, i8*** %14, align 8
  %245 = icmp ne i8** %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %243, %233
  %247 = load i32, i32* @RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED, align 4
  %248 = call i8* @cpu_to_le32(i32 %247)
  store i8* %248, i8** %13, align 8
  store i8** %13, i8*** %14, align 8
  br label %249

249:                                              ; preds = %246, %243
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @FLAG_RNDIS_PHYM_WIRELESS, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %268

254:                                              ; preds = %249
  %255 = load i8**, i8*** %14, align 8
  %256 = call i64 @le32_to_cpup(i8** %255)
  %257 = load i64, i64* @RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %261 = load i32, i32* @probe, align 4
  %262 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %263 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %262, i32 0, i32 3
  %264 = load %struct.net_device*, %struct.net_device** %263, align 8
  %265 = call i32 @netif_dbg(%struct.usbnet* %260, i32 %261, %struct.net_device* %264, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* @ENODEV, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %8, align 4
  br label %374

268:                                              ; preds = %254, %249
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @FLAG_RNDIS_PHYM_NOT_WIRELESS, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %287

273:                                              ; preds = %268
  %274 = load i8**, i8*** %14, align 8
  %275 = call i64 @le32_to_cpup(i8** %274)
  %276 = load i64, i64* @RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %273
  %279 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %280 = load i32, i32* @probe, align 4
  %281 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %282 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %281, i32 0, i32 3
  %283 = load %struct.net_device*, %struct.net_device** %282, align 8
  %284 = call i32 @netif_dbg(%struct.usbnet* %279, i32 %280, %struct.net_device* %283, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  %285 = load i32, i32* @ENODEV, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %8, align 4
  br label %374

287:                                              ; preds = %273, %268
  %288 = load i32, i32* @ETH_ALEN, align 4
  store i32 %288, i32* %15, align 4
  %289 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %290 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %291 = bitcast %union.anon* %11 to i8**
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* @RNDIS_OID_802_3_PERMANENT_ADDRESS, align 4
  %294 = call i32 @rndis_query(%struct.usbnet* %289, %struct.usb_interface* %290, i8* %292, i32 %293, i32 48, i8** %16, i32* %15)
  store i32 %294, i32* %8, align 4
  %295 = load i32, i32* %8, align 4
  %296 = icmp slt i32 %295, 0
  %297 = zext i1 %296 to i32
  %298 = call i64 @unlikely(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %287
  %301 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %302 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %301, i32 0, i32 0
  %303 = load i32, i32* %8, align 4
  %304 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %302, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %303)
  br label %374

305:                                              ; preds = %287
  %306 = load i8*, i8** %16, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = and i32 %309, 2
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %305
  %313 = load %struct.net_device*, %struct.net_device** %9, align 8
  %314 = call i32 @eth_hw_addr_random(%struct.net_device* %313)
  br label %321

315:                                              ; preds = %305
  %316 = load %struct.net_device*, %struct.net_device** %9, align 8
  %317 = getelementptr inbounds %struct.net_device, %struct.net_device* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i8*, i8** %16, align 8
  %320 = call i32 @ether_addr_copy(i32 %318, i8* %319)
  br label %321

321:                                              ; preds = %315, %312
  %322 = bitcast %union.anon* %11 to %struct.rndis_set**
  %323 = load %struct.rndis_set*, %struct.rndis_set** %322, align 8
  %324 = call i32 @memset(%struct.rndis_set* %323, i32 0, i32 40)
  %325 = load i32, i32* @RNDIS_MSG_SET, align 4
  %326 = call i8* @cpu_to_le32(i32 %325)
  %327 = bitcast %union.anon* %11 to %struct.rndis_set**
  %328 = load %struct.rndis_set*, %struct.rndis_set** %327, align 8
  %329 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %328, i32 0, i32 1
  store i8* %326, i8** %329, align 8
  %330 = call i8* @cpu_to_le32(i32 44)
  %331 = bitcast %union.anon* %11 to %struct.rndis_set**
  %332 = load %struct.rndis_set*, %struct.rndis_set** %331, align 8
  %333 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %332, i32 0, i32 0
  store i8* %330, i8** %333, align 8
  %334 = load i32, i32* @RNDIS_OID_GEN_CURRENT_PACKET_FILTER, align 4
  %335 = call i8* @cpu_to_le32(i32 %334)
  %336 = bitcast %union.anon* %11 to %struct.rndis_set**
  %337 = load %struct.rndis_set*, %struct.rndis_set** %336, align 8
  %338 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %337, i32 0, i32 4
  store i8* %335, i8** %338, align 8
  %339 = call i8* @cpu_to_le32(i32 4)
  %340 = bitcast %union.anon* %11 to %struct.rndis_set**
  %341 = load %struct.rndis_set*, %struct.rndis_set** %340, align 8
  %342 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %341, i32 0, i32 3
  store i8* %339, i8** %342, align 8
  %343 = call i8* @cpu_to_le32(i32 32)
  %344 = bitcast %union.anon* %11 to %struct.rndis_set**
  %345 = load %struct.rndis_set*, %struct.rndis_set** %344, align 8
  %346 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %345, i32 0, i32 2
  store i8* %343, i8** %346, align 8
  %347 = load i32, i32* @RNDIS_DEFAULT_FILTER, align 4
  %348 = call i8* @cpu_to_le32(i32 %347)
  %349 = bitcast %union.anon* %11 to i8**
  %350 = load i8*, i8** %349, align 8
  %351 = getelementptr i8, i8* %350, i64 40
  %352 = bitcast i8* %351 to i8**
  store i8* %348, i8** %352, align 8
  %353 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %354 = bitcast %union.anon* %11 to %struct.rndis_msg_hdr**
  %355 = load %struct.rndis_msg_hdr*, %struct.rndis_msg_hdr** %354, align 8
  %356 = bitcast %struct.rndis_msg_hdr* %355 to i8*
  %357 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %358 = call i32 @rndis_command(%struct.usbnet* %353, i8* %356, i32 %357)
  store i32 %358, i32* %8, align 4
  %359 = load i32, i32* %8, align 4
  %360 = icmp slt i32 %359, 0
  %361 = zext i1 %360 to i32
  %362 = call i64 @unlikely(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %321
  %365 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %366 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %365, i32 0, i32 0
  %367 = load i32, i32* %8, align 4
  %368 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %366, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %367)
  br label %374

369:                                              ; preds = %321
  store i32 0, i32* %8, align 4
  %370 = bitcast %union.anon* %11 to i8**
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @kfree(i8* %371)
  %373 = load i32, i32* %8, align 4
  store i32 %373, i32* %4, align 4
  br label %412

374:                                              ; preds = %364, %300, %278, %259, %232, %161
  %375 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %376 = load %struct.rndis_halt*, %struct.rndis_halt** %375, align 8
  %377 = bitcast %struct.rndis_halt* %376 to %struct.rndis_set*
  %378 = call i32 @memset(%struct.rndis_set* %377, i32 0, i32 40)
  %379 = load i32, i32* @RNDIS_MSG_HALT, align 4
  %380 = call i8* @cpu_to_le32(i32 %379)
  %381 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %382 = load %struct.rndis_halt*, %struct.rndis_halt** %381, align 8
  %383 = getelementptr inbounds %struct.rndis_halt, %struct.rndis_halt* %382, i32 0, i32 1
  store i8* %380, i8** %383, align 8
  %384 = call i8* @cpu_to_le32(i32 40)
  %385 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %386 = load %struct.rndis_halt*, %struct.rndis_halt** %385, align 8
  %387 = getelementptr inbounds %struct.rndis_halt, %struct.rndis_halt* %386, i32 0, i32 0
  store i8* %384, i8** %387, align 8
  %388 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %389 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %390 = load %struct.rndis_halt*, %struct.rndis_halt** %389, align 8
  %391 = bitcast %struct.rndis_halt* %390 to i8*
  %392 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %393 = call i32 @rndis_command(%struct.usbnet* %388, i8* %391, i32 %392)
  br label %394

394:                                              ; preds = %374, %136, %87
  %395 = load %struct.cdc_state*, %struct.cdc_state** %10, align 8
  %396 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = call i32 @usb_set_intfdata(i32* %397, i32* null)
  %399 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %400 = call i32 @driver_of(%struct.usb_interface* %399)
  %401 = load %struct.cdc_state*, %struct.cdc_state** %10, align 8
  %402 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = call i32 @usb_driver_release_interface(i32 %400, i32* %403)
  %405 = load %struct.cdc_state*, %struct.cdc_state** %10, align 8
  %406 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %405, i32 0, i32 0
  store i32* null, i32** %406, align 8
  br label %407

407:                                              ; preds = %394, %40
  %408 = bitcast %union.anon* %11 to i8**
  %409 = load i8*, i8** %408, align 8
  %410 = call i32 @kfree(i8* %409)
  %411 = load i32, i32* %8, align 4
  store i32 %411, i32* %4, align 4
  br label %412

412:                                              ; preds = %407, %369, %31
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usbnet_generic_cdc_bind(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @rndis_command(%struct.usbnet*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @rndis_query(%struct.usbnet*, %struct.usb_interface*, i8*, i32, i32, i8**, i32*) #1

declare dso_local i64 @le32_to_cpup(i8**) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @memset(%struct.rndis_set*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_set_intfdata(i32*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(i32, i32*) #1

declare dso_local i32 @driver_of(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
