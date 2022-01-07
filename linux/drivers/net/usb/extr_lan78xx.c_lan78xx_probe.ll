; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.lan78xx_net = type { i32, i64, i32, i32, %struct.usb_device*, i8*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device*, %struct.usb_interface* }
%struct.usb_device = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i64, i64, i32, i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"Error: OOM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@msg_level = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@lan78xx_bh = common dso_local global i32 0, align 4
@lan78xx_delayedwork = common dso_local global i32 0, align 4
@lan78xx_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT_JIFFIES = common dso_local global i32 0, align 4
@lan78xx_ethtool_ops = common dso_local global i32 0, align 4
@lan78xx_stat_monitor = common dso_local global i32 0, align 4
@MAX_SINGLE_PACKET_SIZE = common dso_local global i32 0, align 4
@BULK_IN_PIPE = common dso_local global i32 0, align 4
@BULK_OUT_PIPE = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@intr_complete = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"couldn't register the device\0A\00", align 1
@DEFAULT_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @lan78xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32* null, i32** %12, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %16 = call %struct.usb_device* @usb_get_dev(%struct.usb_device* %15)
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  %17 = call %struct.net_device* @alloc_etherdev(i32 144)
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 2
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %284

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 2
  %30 = call i32 @SET_NETDEV_DEV(%struct.net_device* %27, i32* %29)
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %31)
  store %struct.lan78xx_net* %32, %struct.lan78xx_net** %6, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %34 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %35 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %34, i32 0, i32 4
  store %struct.usb_device* %33, %struct.usb_device** %35, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %38 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %37, i32 0, i32 24
  store %struct.usb_interface* %36, %struct.usb_interface** %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %41 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %40, i32 0, i32 23
  store %struct.net_device* %39, %struct.net_device** %41, align 8
  %42 = load i32, i32* @msg_level, align 4
  %43 = load i32, i32* @NETIF_MSG_DRV, align 4
  %44 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NETIF_MSG_LINK, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @netif_msg_init(i32 %42, i32 %47)
  %49 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %50 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %49, i32 0, i32 22
  store i32 %48, i32* %50, align 4
  %51 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %52 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %51, i32 0, i32 21
  %53 = call i32 @skb_queue_head_init(i32* %52)
  %54 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %55 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %54, i32 0, i32 20
  %56 = call i32 @skb_queue_head_init(i32* %55)
  %57 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %58 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %57, i32 0, i32 19
  %59 = call i32 @skb_queue_head_init(i32* %58)
  %60 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %61 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %60, i32 0, i32 18
  %62 = call i32 @skb_queue_head_init(i32* %61)
  %63 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %64 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %63, i32 0, i32 17
  %65 = call i32 @skb_queue_head_init(i32* %64)
  %66 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %67 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %66, i32 0, i32 16
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %70 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %69, i32 0, i32 15
  %71 = load i32, i32* @lan78xx_bh, align 4
  %72 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %73 = ptrtoint %struct.lan78xx_net* %72 to i64
  %74 = call i32 @tasklet_init(i32* %70, i32 %71, i64 %73)
  %75 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %76 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %75, i32 0, i32 14
  %77 = load i32, i32* @lan78xx_delayedwork, align 4
  %78 = call i32 @INIT_DELAYED_WORK(i32* %76, i32 %77)
  %79 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %80 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %79, i32 0, i32 13
  %81 = call i32 @init_usb_anchor(i32* %80)
  %82 = load %struct.net_device*, %struct.net_device** %7, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 6
  store i32* @lan78xx_netdev_ops, i32** %83, align 8
  %84 = load i32, i32* @TX_TIMEOUT_JIFFIES, align 4
  %85 = load %struct.net_device*, %struct.net_device** %7, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.net_device*, %struct.net_device** %7, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 4
  store i32* @lan78xx_ethtool_ops, i32** %88, align 8
  %89 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %90 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %92 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %91, i32 0, i32 12
  %93 = load i32, i32* @lan78xx_stat_monitor, align 4
  %94 = call i32 @timer_setup(i32* %92, i32 %93, i32 0)
  %95 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %96 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = call i32 @mutex_init(i32* %97)
  %99 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = call i32 @lan78xx_bind(%struct.lan78xx_net* %99, %struct.usb_interface* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %26
  br label %281

105:                                              ; preds = %26
  %106 = load %struct.net_device*, %struct.net_device** %7, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %110 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %111, %114
  %116 = icmp sgt i64 %108, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %105
  %118 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %119 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.net_device*, %struct.net_device** %7, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = load %struct.net_device*, %struct.net_device** %7, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %105
  %128 = load i32, i32* @MAX_SINGLE_PACKET_SIZE, align 4
  %129 = load %struct.net_device*, %struct.net_device** %7, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %132 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 0
  %137 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %138 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %137, i32 0, i32 10
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %138, align 8
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 1
  %145 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %146 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %145, i32 0, i32 9
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %146, align 8
  %147 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %148 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 2
  %153 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %154 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %153, i32 0, i32 7
  store %struct.TYPE_8__* %152, %struct.TYPE_8__** %154, align 8
  %155 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %156 = load i32, i32* @BULK_IN_PIPE, align 4
  %157 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %155, i32 %156)
  %158 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %159 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 8
  %160 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %161 = load i32, i32* @BULK_OUT_PIPE, align 4
  %162 = call i32 @usb_sndbulkpipe(%struct.usb_device* %160, i32 %161)
  %163 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %164 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %166 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %165, i32 0, i32 4
  %167 = load %struct.usb_device*, %struct.usb_device** %166, align 8
  %168 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %169 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %168, i32 0, i32 7
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %175 = and i32 %173, %174
  %176 = call i32 @usb_rcvintpipe(%struct.usb_device* %167, i32 %175)
  %177 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %178 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 8
  %179 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %180 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %179, i32 0, i32 7
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %11, align 4
  %185 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %186 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %185, i32 0, i32 4
  %187 = load %struct.usb_device*, %struct.usb_device** %186, align 8
  %188 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %189 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @usb_maxpacket(%struct.usb_device* %187, i32 %190, i32 0)
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = call i32* @kmalloc(i32 %193, i32 %194)
  store i32* %195, i32** %12, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %229

198:                                              ; preds = %127
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call i32 @usb_alloc_urb(i32 0, i32 %199)
  %201 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %202 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %204 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %198
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %9, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = call i32 @kfree(i32* %210)
  br label %277

212:                                              ; preds = %198
  %213 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %214 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %217 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %216, i32 0, i32 4
  %218 = load %struct.usb_device*, %struct.usb_device** %217, align 8
  %219 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %220 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @intr_complete, align 4
  %225 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @usb_fill_int_urb(i32 %215, %struct.usb_device* %218, i32 %221, i32* %222, i32 %223, i32 %224, %struct.lan78xx_net* %225, i32 %226)
  br label %228

228:                                              ; preds = %212
  br label %229

229:                                              ; preds = %228, %127
  %230 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %231 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %230, i32 0, i32 4
  %232 = load %struct.usb_device*, %struct.usb_device** %231, align 8
  %233 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %234 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @usb_maxpacket(%struct.usb_device* %232, i32 %235, i32 1)
  %237 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %238 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %237, i32 0, i32 5
  store i8* %236, i8** %238, align 8
  %239 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %240 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %239, i32 0, i32 0
  store i32 1, i32* %240, align 8
  %241 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %242 = call i32 @lan78xx_phy_init(%struct.lan78xx_net* %241)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %229
  br label %272

246:                                              ; preds = %229
  %247 = load %struct.net_device*, %struct.net_device** %7, align 8
  %248 = call i32 @register_netdev(%struct.net_device* %247)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %253 = load i32, i32* @probe, align 4
  %254 = load %struct.net_device*, %struct.net_device** %7, align 8
  %255 = call i32 @netif_err(%struct.lan78xx_net* %252, i32 %253, %struct.net_device* %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %267

256:                                              ; preds = %246
  %257 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %258 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %259 = call i32 @usb_set_intfdata(%struct.usb_interface* %257, %struct.lan78xx_net* %258)
  %260 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %261 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %260, i32 0, i32 0
  %262 = call i32 @device_set_wakeup_enable(i32* %261, i32 1)
  store i32 %262, i32* %9, align 4
  %263 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %264 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %263, i32 0, i32 0
  %265 = load i32, i32* @DEFAULT_AUTOSUSPEND_DELAY, align 4
  %266 = call i32 @pm_runtime_set_autosuspend_delay(i32* %264, i32 %265)
  store i32 0, i32* %3, align 4
  br label %288

267:                                              ; preds = %251
  %268 = load %struct.net_device*, %struct.net_device** %7, align 8
  %269 = getelementptr inbounds %struct.net_device, %struct.net_device* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @phy_disconnect(i32 %270)
  br label %272

272:                                              ; preds = %267, %245
  %273 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %274 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @usb_free_urb(i32 %275)
  br label %277

277:                                              ; preds = %272, %207
  %278 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %279 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %280 = call i32 @lan78xx_unbind(%struct.lan78xx_net* %278, %struct.usb_interface* %279)
  br label %281

281:                                              ; preds = %277, %104
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = call i32 @free_netdev(%struct.net_device* %282)
  br label %284

284:                                              ; preds = %281, %20
  %285 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %286 = call i32 @usb_put_dev(%struct.usb_device* %285)
  %287 = load i32, i32* %9, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %256
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @usb_get_dev(%struct.usb_device*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @lan78xx_bind(%struct.lan78xx_net*, %struct.usb_interface*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32*, i32, i32, %struct.lan78xx_net*, i32) #1

declare dso_local i32 @lan78xx_phy_init(%struct.lan78xx_net*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.lan78xx_net*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.lan78xx_net*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @lan78xx_unbind(%struct.lan78xx_net*, %struct.usb_interface*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
