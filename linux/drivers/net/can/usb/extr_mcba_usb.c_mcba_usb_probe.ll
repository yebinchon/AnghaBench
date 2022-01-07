; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.mcba_priv = type { i32, i32, i32, %struct.net_device*, %struct.TYPE_2__, i32, i32, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MCBA_MAX_TX_URBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't alloc candev\0A\00", align 1
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@mcba_termination = common dso_local global i8* null, align 8
@mcba_bitrate = common dso_local global i8* null, align 8
@mcba_set_termination = common dso_local global i32 0, align 4
@mcba_net_set_mode = common dso_local global i32 0, align 4
@mcba_net_get_berr_counter = common dso_local global i32 0, align 4
@mcba_net_set_bittiming = common dso_local global i32 0, align 4
@mcba_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't register CAN device: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"couldn't start device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Microchip CAN BUS Analyzer connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @mcba_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcba_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mcba_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %9, align 8
  %14 = load i32, i32* @MCBA_MAX_TX_URBS, align 4
  %15 = call %struct.net_device* @alloc_candev(i32 96, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %139

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call %struct.mcba_priv* @netdev_priv(%struct.net_device* %25)
  store %struct.mcba_priv* %26, %struct.mcba_priv** %7, align 8
  %27 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %28 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %29 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %28, i32 0, i32 7
  store %struct.usb_device* %27, %struct.usb_device** %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %31, i32 0, i32 3
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %34 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %36 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %38 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %40 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %39, i32 0, i32 6
  %41 = call i32 @init_usb_anchor(i32* %40)
  %42 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %43 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %42, i32 0, i32 5
  %44 = call i32 @init_usb_anchor(i32* %43)
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %47 = call i32 @usb_set_intfdata(%struct.usb_interface* %45, %struct.mcba_priv* %46)
  %48 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %49 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %50 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 8
  store i32 %48, i32* %51, align 8
  %52 = load i8*, i8** @mcba_termination, align 8
  %53 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %54 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @mcba_termination, align 8
  %57 = call i8* @ARRAY_SIZE(i8* %56)
  %58 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %59 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** @mcba_bitrate, align 8
  %62 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %63 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  store i8* %61, i8** %64, align 8
  %65 = load i8*, i8** @mcba_bitrate, align 8
  %66 = call i8* @ARRAY_SIZE(i8* %65)
  %67 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %68 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* @mcba_set_termination, align 4
  %71 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %72 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @mcba_net_set_mode, align 4
  %75 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %76 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @mcba_net_get_berr_counter, align 4
  %79 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %80 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @mcba_net_set_bittiming, align 4
  %83 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %84 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  store i32* @mcba_netdev_ops, i32** %87, align 8
  %88 = load i32, i32* @IFF_ECHO, align 4
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %95 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %94, i32 0, i32 0
  %96 = call i32 @SET_NETDEV_DEV(%struct.net_device* %93, i32* %95)
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = call i32 @register_candev(%struct.net_device* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %24
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @netdev_err(%struct.net_device* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %135

105:                                              ; preds = %24
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = call i32 @devm_can_led_init(%struct.net_device* %106)
  %108 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %109 = call i32 @mcba_usb_start(%struct.mcba_priv* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %119 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %118, i32 0, i32 3
  %120 = load %struct.net_device*, %struct.net_device** %119, align 8
  %121 = call i32 @netif_device_detach(%struct.net_device* %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @netdev_warn(%struct.net_device* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  br label %130

126:                                              ; preds = %105
  %127 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %128 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %127, i32 0, i32 0
  %129 = call i32 @dev_info(i32* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %139

130:                                              ; preds = %122
  %131 = load %struct.mcba_priv*, %struct.mcba_priv** %7, align 8
  %132 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %131, i32 0, i32 3
  %133 = load %struct.net_device*, %struct.net_device** %132, align 8
  %134 = call i32 @unregister_candev(%struct.net_device* %133)
  br label %135

135:                                              ; preds = %130, %101
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = call i32 @free_candev(%struct.net_device* %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %126, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.mcba_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.mcba_priv*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @devm_can_led_init(%struct.net_device*) #1

declare dso_local i32 @mcba_usb_start(%struct.mcba_priv*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @unregister_candev(%struct.net_device*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
