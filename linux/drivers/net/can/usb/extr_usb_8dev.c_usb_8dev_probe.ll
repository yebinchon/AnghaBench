; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.usb_8dev_priv = type { %struct.net_device*, i32, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_7__, %struct.usb_device* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"USB2CAN converter\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ignoring: not an USB2CAN converter\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Couldn't alloc candev\0A\00", align 1
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@USB_8DEV_ABP_CLOCK = common dso_local global i32 0, align 4
@usb_8dev_bittiming_const = common dso_local global i32 0, align 4
@usb_8dev_set_mode = common dso_local global i32 0, align 4
@usb_8dev_get_berr_counter = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@usb_8dev_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"couldn't register CAN device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"can't get firmware version\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"firmware: %d.%d, hardware: %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_8dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.usb_8dev_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [18 x i8], align 16
  %12 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %12, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [18 x i8], [18 x i8]* %11, i64 0, i64 0
  %23 = call i64 @usb_string(%struct.usb_device* %17, i32 %21, i8* %22, i32 18)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = getelementptr inbounds [18 x i8], [18 x i8]* %11, i64 0, i64 0
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %180

35:                                               ; preds = %25, %2
  %36 = load i32, i32* @MAX_TX_URBS, align 4
  %37 = call %struct.net_device* @alloc_candev(i32 80, i32 %36)
  store %struct.net_device* %37, %struct.net_device** %6, align 8
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %180

46:                                               ; preds = %35
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call %struct.usb_8dev_priv* @netdev_priv(%struct.net_device* %47)
  store %struct.usb_8dev_priv* %48, %struct.usb_8dev_priv** %7, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %50 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %51 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %50, i32 0, i32 8
  store %struct.usb_device* %49, %struct.usb_device** %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %54 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %53, i32 0, i32 0
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %56 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %57 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @USB_8DEV_ABP_CLOCK, align 4
  %60 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %61 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %65 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32* @usb_8dev_bittiming_const, i32** %66, align 8
  %67 = load i32, i32* @usb_8dev_set_mode, align 4
  %68 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %69 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @usb_8dev_get_berr_counter, align 4
  %72 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %73 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %76 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %81 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  store i32* @usb_8dev_netdev_ops, i32** %84, align 8
  %85 = load i32, i32* @IFF_ECHO, align 4
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %91 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %90, i32 0, i32 6
  %92 = call i32 @init_usb_anchor(i32* %91)
  %93 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %94 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %93, i32 0, i32 5
  %95 = call i32 @init_usb_anchor(i32* %94)
  %96 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %97 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %96, i32 0, i32 4
  %98 = call i32 @atomic_set(i32* %97, i32 0)
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %112, %46
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @MAX_TX_URBS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32, i32* @MAX_TX_URBS, align 4
  %105 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %106 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %104, i32* %111, align 4
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %99

115:                                              ; preds = %99
  %116 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %117 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %116, i32 0, i32 0
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i32 @devm_kzalloc(i32* %117, i32 4, i32 %118)
  %120 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %121 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %123 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %115
  br label %176

127:                                              ; preds = %115
  %128 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %129 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %130 = call i32 @usb_set_intfdata(%struct.usb_interface* %128, %struct.usb_8dev_priv* %129)
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %133 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %132, i32 0, i32 0
  %134 = call i32 @SET_NETDEV_DEV(%struct.net_device* %131, i32* %133)
  %135 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %136 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %135, i32 0, i32 1
  %137 = call i32 @mutex_init(i32* %136)
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = call i32 @register_candev(%struct.net_device* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %127
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %176

146:                                              ; preds = %127
  %147 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %148 = call i32 @usb_8dev_cmd_version(%struct.usb_8dev_priv* %147, i32* %10)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.net_device*, %struct.net_device** %6, align 8
  %153 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %171

154:                                              ; preds = %146
  %155 = load %struct.net_device*, %struct.net_device** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = ashr i32 %156, 24
  %158 = and i32 %157, 255
  %159 = load i32, i32* %10, align 4
  %160 = ashr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = load i32, i32* %10, align 4
  %163 = ashr i32 %162, 8
  %164 = and i32 %163, 255
  %165 = load i32, i32* %10, align 4
  %166 = and i32 %165, 255
  %167 = call i32 @netdev_info(%struct.net_device* %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %161, i32 %164, i32 %166)
  br label %168

168:                                              ; preds = %154
  %169 = load %struct.net_device*, %struct.net_device** %6, align 8
  %170 = call i32 @devm_can_led_init(%struct.net_device* %169)
  store i32 0, i32* %3, align 4
  br label %180

171:                                              ; preds = %151
  %172 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %7, align 8
  %173 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %172, i32 0, i32 0
  %174 = load %struct.net_device*, %struct.net_device** %173, align 8
  %175 = call i32 @unregister_netdev(%struct.net_device* %174)
  br label %176

176:                                              ; preds = %171, %142, %126
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = call i32 @free_candev(%struct.net_device* %177)
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %176, %168, %40, %29
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.usb_8dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_8dev_priv*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @usb_8dev_cmd_version(%struct.usb_8dev_priv*, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @devm_can_led_init(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
