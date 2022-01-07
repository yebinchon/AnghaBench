; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32 }
%struct.kaweth_device = type { i8*, i8*, i8*, i32, i8*, %struct.usb_device*, i32, i8*, %struct.net_device*, i32, %struct.TYPE_4__, i32*, i32, i32, %struct.usb_interface* }
%struct.net_device = type { i32, i32, i32*, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Kawasaki Device Probe (Device number:%d): 0x%4.4x:0x%4.4x:0x%4.4x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Device at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Descriptor length: %x type: %x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Resetting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Firmware present in device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Downloading firmware...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"kaweth/new_code.bin\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Error downloading firmware (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"kaweth/new_code_fix.bin\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Error downloading firmware fix (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"kaweth/trigger_code.bin\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Error downloading trigger code (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"kaweth/trigger_code_fix.bin\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Error downloading trigger code fix (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Error triggering firmware (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Firmware loaded.  I'll be back...\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"Error reading configuration (%d), no net device created\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Statistics collection: %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Multicast filter limit: %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"MTU: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Read MAC address %pM\0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"Firmware not functioning properly, no net device created\0A\00", align 1
@KAWETH_BUF_SIZE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [24 x i8] c"Error setting URB size\0A\00", align 1
@KAWETH_SOFS_TO_WAIT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [25 x i8] c"Error setting SOFS wait\0A\00", align 1
@KAWETH_PACKET_FILTER_DIRECTED = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_BROADCAST = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_MULTICAST = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [30 x i8] c"Error setting receive filter\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Initializing net device.\0A\00", align 1
@INTBUFFERSIZE = common dso_local global i32 0, align 4
@kaweth_netdev_ops = common dso_local global i32 0, align 4
@KAWETH_TX_TIMEOUT = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@kaweth_resubmit_tl = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [27 x i8] c"Error registering netdev.\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"kaweth interface created at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @kaweth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.kaweth_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  store i32 255, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %32, i32 %37)
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.usb_device* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %52)
  %54 = call %struct.net_device* @alloc_etherdev(i32 120)
  store %struct.net_device* %54, %struct.net_device** %9, align 8
  %55 = load %struct.net_device*, %struct.net_device** %9, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %2
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %392

60:                                               ; preds = %2
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = call %struct.kaweth_device* @netdev_priv(%struct.net_device* %61)
  store %struct.kaweth_device* %62, %struct.kaweth_device** %8, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %64 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %65 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %64, i32 0, i32 5
  store %struct.usb_device* %63, %struct.usb_device** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %68 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %67, i32 0, i32 8
  store %struct.net_device* %66, %struct.net_device** %68, align 8
  %69 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %70 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %71 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %70, i32 0, i32 14
  store %struct.usb_interface* %69, %struct.usb_interface** %71, align 8
  %72 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %73 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %72, i32 0, i32 13
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %76 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %75, i32 0, i32 12
  %77 = call i32 @init_waitqueue_head(i32* %76)
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %81 = call i32 @kaweth_reset(%struct.kaweth_device* %80)
  %82 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %83 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = ashr i32 %86, 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %60
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %160

92:                                               ; preds = %60
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i64 @__get_free_page(i32 %95)
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %99 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %98, i32 0, i32 11
  store i32* %97, i32** %99, align 8
  %100 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %101 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %100, i32 0, i32 11
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %92
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %12, align 4
  br label %388

107:                                              ; preds = %92
  %108 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %109 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 100, i32 2)
  store i32 %109, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %150

115:                                              ; preds = %107
  %116 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %117 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 100, i32 3)
  store i32 %117, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %121)
  br label %150

123:                                              ; preds = %115
  %124 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %125 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 126, i32 2)
  store i32 %125, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  br label %150

131:                                              ; preds = %123
  %132 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %133 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 126, i32 3)
  store i32 %133, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %137)
  br label %150

139:                                              ; preds = %131
  %140 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %141 = call i32 @kaweth_trigger_firmware(%struct.kaweth_device* %140, i32 126)
  store i32 %141, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %145)
  br label %150

147:                                              ; preds = %139
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %143, %135, %127, %119, %111
  %151 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %152 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %151, i32 0, i32 11
  %153 = load i32*, i32** %152, align 8
  %154 = ptrtoint i32* %153 to i64
  %155 = call i32 @free_page(i64 %154)
  %156 = load %struct.net_device*, %struct.net_device** %9, align 8
  %157 = call i32 @free_netdev(%struct.net_device* %156)
  %158 = load i32, i32* @EIO, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %392

160:                                              ; preds = %89
  %161 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %162 = call i32 @kaweth_read_configuration(%struct.kaweth_device* %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.device*, %struct.device** %6, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i32 %167)
  br label %388

169:                                              ; preds = %160
  %170 = load %struct.device*, %struct.device** %6, align 8
  %171 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %172 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %171, i32 0, i32 10
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %174)
  %176 = load %struct.device*, %struct.device** %6, align 8
  %177 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %178 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %177, i32 0, i32 10
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 32767
  %182 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %181)
  %183 = load %struct.device*, %struct.device** %6, align 8
  %184 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %185 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %184, i32 0, i32 10
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %188)
  %190 = load %struct.device*, %struct.device** %6, align 8
  %191 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %192 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %191, i32 0, i32 10
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %194)
  %196 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %197 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %196, i32 0, i32 10
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  %199 = call i32 @memcmp(i32* %198, i32* %10, i32 4)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %169
  %202 = load %struct.device*, %struct.device** %6, align 8
  %203 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %202, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0))
  br label %388

204:                                              ; preds = %169
  %205 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %206 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %207 = call i64 @kaweth_set_urb_size(%struct.kaweth_device* %205, i32 %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.device*, %struct.device** %6, align 8
  %211 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %388

212:                                              ; preds = %204
  %213 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %214 = load i32, i32* @KAWETH_SOFS_TO_WAIT, align 4
  %215 = call i64 @kaweth_set_sofs_wait(%struct.kaweth_device* %213, i32 %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.device*, %struct.device** %6, align 8
  %219 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %218, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  br label %388

220:                                              ; preds = %212
  %221 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %222 = load i32, i32* @KAWETH_PACKET_FILTER_DIRECTED, align 4
  %223 = load i32, i32* @KAWETH_PACKET_FILTER_BROADCAST, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @KAWETH_PACKET_FILTER_MULTICAST, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @kaweth_set_receive_filter(%struct.kaweth_device* %221, i32 %226)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %220
  %231 = load %struct.device*, %struct.device** %6, align 8
  %232 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %231, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  br label %388

233:                                              ; preds = %220
  %234 = load %struct.device*, %struct.device** %6, align 8
  %235 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  %236 = load i32, i32* @GFP_KERNEL, align 4
  %237 = call i8* @usb_alloc_urb(i32 0, i32 %236)
  %238 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %239 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %241 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %233
  br label %388

245:                                              ; preds = %233
  %246 = load i32, i32* @GFP_KERNEL, align 4
  %247 = call i8* @usb_alloc_urb(i32 0, i32 %246)
  %248 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %249 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %251 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %245
  br label %383

255:                                              ; preds = %245
  %256 = load i32, i32* @GFP_KERNEL, align 4
  %257 = call i8* @usb_alloc_urb(i32 0, i32 %256)
  %258 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %259 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  %260 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %261 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %260, i32 0, i32 2
  %262 = load i8*, i8** %261, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %255
  br label %378

265:                                              ; preds = %255
  %266 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %267 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %266, i32 0, i32 5
  %268 = load %struct.usb_device*, %struct.usb_device** %267, align 8
  %269 = load i32, i32* @INTBUFFERSIZE, align 4
  %270 = load i32, i32* @GFP_KERNEL, align 4
  %271 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %272 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %271, i32 0, i32 3
  %273 = call i8* @usb_alloc_coherent(%struct.usb_device* %268, i32 %269, i32 %270, i32* %272)
  %274 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %275 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %274, i32 0, i32 4
  store i8* %273, i8** %275, align 8
  %276 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %277 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %276, i32 0, i32 4
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %265
  br label %373

281:                                              ; preds = %265
  %282 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %283 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %282, i32 0, i32 5
  %284 = load %struct.usb_device*, %struct.usb_device** %283, align 8
  %285 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %286 = load i32, i32* @GFP_KERNEL, align 4
  %287 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %288 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %287, i32 0, i32 6
  %289 = call i8* @usb_alloc_coherent(%struct.usb_device* %284, i32 %285, i32 %286, i32* %288)
  %290 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %291 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %290, i32 0, i32 7
  store i8* %289, i8** %291, align 8
  %292 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %293 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %292, i32 0, i32 7
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %281
  br label %361

297:                                              ; preds = %281
  %298 = load %struct.net_device*, %struct.net_device** %9, align 8
  %299 = getelementptr inbounds %struct.net_device, %struct.net_device* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @memcpy(i32 %300, i32* %10, i32 4)
  %302 = load %struct.net_device*, %struct.net_device** %9, align 8
  %303 = getelementptr inbounds %struct.net_device, %struct.net_device* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %306 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %305, i32 0, i32 10
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 2
  %308 = call i32 @memcpy(i32 %304, i32* %307, i32 4)
  %309 = load %struct.net_device*, %struct.net_device** %9, align 8
  %310 = getelementptr inbounds %struct.net_device, %struct.net_device* %309, i32 0, i32 4
  store i32* @kaweth_netdev_ops, i32** %310, align 8
  %311 = load i32, i32* @KAWETH_TX_TIMEOUT, align 4
  %312 = load %struct.net_device*, %struct.net_device** %9, align 8
  %313 = getelementptr inbounds %struct.net_device, %struct.net_device* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 8
  %314 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %315 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %314, i32 0, i32 10
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @le16_to_cpu(i32 %317)
  %319 = load %struct.net_device*, %struct.net_device** %9, align 8
  %320 = getelementptr inbounds %struct.net_device, %struct.net_device* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load %struct.net_device*, %struct.net_device** %9, align 8
  %322 = getelementptr inbounds %struct.net_device, %struct.net_device* %321, i32 0, i32 2
  store i32* @ops, i32** %322, align 8
  %323 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %324 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %323, i32 0, i32 9
  %325 = load i32, i32* @kaweth_resubmit_tl, align 4
  %326 = call i32 @INIT_DELAYED_WORK(i32* %324, i32 %325)
  %327 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %328 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %329 = call i32 @usb_set_intfdata(%struct.usb_interface* %327, %struct.kaweth_device* %328)
  %330 = load %struct.net_device*, %struct.net_device** %9, align 8
  %331 = load %struct.device*, %struct.device** %6, align 8
  %332 = call i32 @SET_NETDEV_DEV(%struct.net_device* %330, %struct.device* %331)
  %333 = load %struct.net_device*, %struct.net_device** %9, align 8
  %334 = call i64 @register_netdev(%struct.net_device* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %297
  %337 = load %struct.device*, %struct.device** %6, align 8
  %338 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %337, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  br label %347

339:                                              ; preds = %297
  %340 = load %struct.device*, %struct.device** %6, align 8
  %341 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %342 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %341, i32 0, i32 8
  %343 = load %struct.net_device*, %struct.net_device** %342, align 8
  %344 = getelementptr inbounds %struct.net_device, %struct.net_device* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %340, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i32 %345)
  store i32 0, i32* %3, align 4
  br label %392

347:                                              ; preds = %336
  %348 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %349 = call i32 @usb_set_intfdata(%struct.usb_interface* %348, %struct.kaweth_device* null)
  %350 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %351 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %350, i32 0, i32 5
  %352 = load %struct.usb_device*, %struct.usb_device** %351, align 8
  %353 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %354 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %355 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %354, i32 0, i32 7
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %358 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @usb_free_coherent(%struct.usb_device* %352, i32 %353, i8* %356, i32 %359)
  br label %361

361:                                              ; preds = %347, %296
  %362 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %363 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %362, i32 0, i32 5
  %364 = load %struct.usb_device*, %struct.usb_device** %363, align 8
  %365 = load i32, i32* @INTBUFFERSIZE, align 4
  %366 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %367 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %366, i32 0, i32 4
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %370 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @usb_free_coherent(%struct.usb_device* %364, i32 %365, i8* %368, i32 %371)
  br label %373

373:                                              ; preds = %361, %280
  %374 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %375 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %374, i32 0, i32 2
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @usb_free_urb(i8* %376)
  br label %378

378:                                              ; preds = %373, %264
  %379 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %380 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %379, i32 0, i32 1
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @usb_free_urb(i8* %381)
  br label %383

383:                                              ; preds = %378, %254
  %384 = load %struct.kaweth_device*, %struct.kaweth_device** %8, align 8
  %385 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %384, i32 0, i32 0
  %386 = load i8*, i8** %385, align 8
  %387 = call i32 @usb_free_urb(i8* %386)
  br label %388

388:                                              ; preds = %383, %244, %230, %217, %209, %201, %165, %104
  %389 = load %struct.net_device*, %struct.net_device** %9, align 8
  %390 = call i32 @free_netdev(%struct.net_device* %389)
  %391 = load i32, i32* %12, align 4
  store i32 %391, i32* %3, align 4
  br label %392

392:                                              ; preds = %388, %339, %150, %57
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.kaweth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kaweth_reset(%struct.kaweth_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kaweth_download_firmware(%struct.kaweth_device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @kaweth_trigger_firmware(%struct.kaweth_device*, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @kaweth_read_configuration(%struct.kaweth_device*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @kaweth_set_urb_size(%struct.kaweth_device*, i32) #1

declare dso_local i64 @kaweth_set_sofs_wait(%struct.kaweth_device*, i32) #1

declare dso_local i32 @kaweth_set_receive_filter(%struct.kaweth_device*, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.kaweth_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @usb_free_urb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
