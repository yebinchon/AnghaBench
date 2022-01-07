; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_can_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_can_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gs_can = type { %struct.TYPE_2__, i32, i32, i32, i32, %struct.gs_usb* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gs_usb = type { i32, i32 }
%struct.gs_device_mode = type { i32, i32 }
%struct.urb = type { i32, i32 }

@GS_MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@GSUSB_ENDPOINT_IN = common dso_local global i32 0, align 4
@gs_usb_receive_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"usb_submit failed (err=%d)\0A\00", align 1
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@GS_CAN_MODE_LOOP_BACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@GS_CAN_MODE_LISTEN_ONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@GS_CAN_MODE_ONE_SHOT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@GS_CAN_MODE_TRIPLE_SAMPLE = common dso_local global i32 0, align 4
@GS_CAN_MODE_START = common dso_local global i32 0, align 4
@GS_USB_BREQ_MODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't start device (err=%d)\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gs_can_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_can_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gs_can*, align 8
  %5 = alloca %struct.gs_usb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_device_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.gs_can* @netdev_priv(%struct.net_device* %12)
  store %struct.gs_can* %13, %struct.gs_can** %4, align 8
  %14 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %15 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %14, i32 0, i32 5
  %16 = load %struct.gs_usb*, %struct.gs_usb** %15, align 8
  store %struct.gs_usb* %16, %struct.gs_usb** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @open_candev(%struct.net_device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %221

23:                                               ; preds = %1
  %24 = load %struct.gs_usb*, %struct.gs_usb** %5, align 8
  %25 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %24, i32 0, i32 1
  %26 = call i32 @atomic_add_return(i32 1, i32* %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %111

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %107, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GS_MAX_RX_URBS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %110

33:                                               ; preds = %29
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %34)
  store %struct.urb* %35, %struct.urb** %10, align 8
  %36 = load %struct.urb*, %struct.urb** %10, align 8
  %37 = icmp ne %struct.urb* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %221

41:                                               ; preds = %33
  %42 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %43 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load %struct.urb*, %struct.urb** %10, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 1
  %48 = call i32* @usb_alloc_coherent(i32 %44, i32 4, i32 %45, i32* %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.urb*, %struct.urb** %10, align 8
  %55 = call i32 @usb_free_urb(%struct.urb* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %221

58:                                               ; preds = %41
  %59 = load %struct.urb*, %struct.urb** %10, align 8
  %60 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %61 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %64 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GSUSB_ENDPOINT_IN, align 4
  %67 = call i32 @usb_rcvbulkpipe(i32 %65, i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @gs_usb_receive_bulk_callback, align 4
  %70 = load %struct.gs_usb*, %struct.gs_usb** %5, align 8
  %71 = call i32 @usb_fill_bulk_urb(%struct.urb* %59, i32 %62, i32 %67, i32* %68, i32 4, i32 %69, %struct.gs_usb* %70)
  %72 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %73 = load %struct.urb*, %struct.urb** %10, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.urb*, %struct.urb** %10, align 8
  %78 = load %struct.gs_usb*, %struct.gs_usb** %5, align 8
  %79 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %78, i32 0, i32 0
  %80 = call i32 @usb_anchor_urb(%struct.urb* %77, i32* %79)
  %81 = load %struct.urb*, %struct.urb** %10, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @usb_submit_urb(%struct.urb* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %58
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %93 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @netif_device_detach(i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.urb*, %struct.urb** %10, align 8
  %101 = call i32 @usb_unanchor_urb(%struct.urb* %100)
  %102 = load %struct.urb*, %struct.urb** %10, align 8
  %103 = call i32 @usb_free_urb(%struct.urb* %102)
  br label %110

104:                                              ; preds = %58
  %105 = load %struct.urb*, %struct.urb** %10, align 8
  %106 = call i32 @usb_free_urb(%struct.urb* %105)
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %29

110:                                              ; preds = %96, %29
  br label %111

111:                                              ; preds = %110, %23
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.gs_device_mode* @kmalloc(i32 8, i32 %112)
  store %struct.gs_device_mode* %113, %struct.gs_device_mode** %8, align 8
  %114 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %115 = icmp ne %struct.gs_device_mode* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %221

119:                                              ; preds = %111
  %120 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %121 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %9, align 4
  %124 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %125 = getelementptr inbounds %struct.gs_device_mode, %struct.gs_device_mode* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %119
  %131 = load i32, i32* @GS_CAN_MODE_LOOP_BACK, align 4
  %132 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %133 = getelementptr inbounds %struct.gs_device_mode, %struct.gs_device_mode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %148

136:                                              ; preds = %119
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i32, i32* @GS_CAN_MODE_LISTEN_ONLY, align 4
  %143 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %144 = getelementptr inbounds %struct.gs_device_mode, %struct.gs_device_mode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %141, %136
  br label %148

148:                                              ; preds = %147, %130
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i32, i32* @GS_CAN_MODE_ONE_SHOT, align 4
  %155 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %156 = getelementptr inbounds %struct.gs_device_mode, %struct.gs_device_mode* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %148
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* @GS_CAN_MODE_TRIPLE_SAMPLE, align 4
  %166 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %167 = getelementptr inbounds %struct.gs_device_mode, %struct.gs_device_mode* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %159
  %171 = load i32, i32* @GS_CAN_MODE_START, align 4
  %172 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %173 = getelementptr inbounds %struct.gs_device_mode, %struct.gs_device_mode* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %175 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @interface_to_usbdev(i32 %176)
  %178 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %179 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @interface_to_usbdev(i32 %180)
  %182 = call i32 @usb_sndctrlpipe(i32 %181, i32 0)
  %183 = load i32, i32* @GS_USB_BREQ_MODE, align 4
  %184 = load i32, i32* @USB_DIR_OUT, align 4
  %185 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %190 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %193 = call i32 @usb_control_msg(i32 %177, i32 %182, i32 %183, i32 %188, i32 %191, i32 0, %struct.gs_device_mode* %192, i32 8, i32 1000)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %170
  %197 = load %struct.net_device*, %struct.net_device** %3, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %197, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  %200 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %201 = call i32 @kfree(%struct.gs_device_mode* %200)
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %2, align 4
  br label %221

203:                                              ; preds = %170
  %204 = load %struct.gs_device_mode*, %struct.gs_device_mode** %8, align 8
  %205 = call i32 @kfree(%struct.gs_device_mode* %204)
  %206 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %207 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %208 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 4
  %210 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %211 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %203
  %218 = load %struct.net_device*, %struct.net_device** %3, align 8
  %219 = call i32 @netif_start_queue(%struct.net_device* %218)
  br label %220

220:                                              ; preds = %217, %203
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %220, %196, %116, %51, %38, %21
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.gs_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.gs_usb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local %struct.gs_device_mode* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.gs_device_mode*, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(%struct.gs_device_mode*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
