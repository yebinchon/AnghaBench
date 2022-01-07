; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.ems_usb = type { i32, i8*, i8*, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__, %struct.net_device*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ems_usb: Couldn't alloc candev\0A\00", align 1
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@EMS_USB_ARM7_CLOCK = common dso_local global i32 0, align 4
@ems_usb_bittiming_const = common dso_local global i32 0, align 4
@ems_usb_set_bittiming = common dso_local global i32 0, align 4
@ems_usb_set_mode = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@ems_usb_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@INTR_IN_BUFFER_SIZE = common dso_local global i64 0, align 8
@CPC_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"couldn't initialize controller: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"couldn't register CAN device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ems_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ems_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @MAX_TX_URBS, align 4
  %13 = call %struct.net_device* @alloc_candev(i32 104, i32 %12)
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %171

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.ems_usb* @netdev_priv(%struct.net_device* %23)
  store %struct.ems_usb* %24, %struct.ems_usb** %7, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = call i32 @interface_to_usbdev(%struct.usb_interface* %25)
  %27 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %28 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %31 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %30, i32 0, i32 9
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %33 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %34 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @EMS_USB_ARM7_CLOCK, align 4
  %37 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %38 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %42 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  store i32* @ems_usb_bittiming_const, i32** %43, align 8
  %44 = load i32, i32* @ems_usb_set_bittiming, align 4
  %45 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %46 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @ems_usb_set_mode, align 4
  %49 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %50 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %53 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %54 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  store i32* @ems_usb_netdev_ops, i32** %57, align 8
  %58 = load i32, i32* @IFF_ECHO, align 4
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %64 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %63, i32 0, i32 7
  %65 = call i32 @init_usb_anchor(i32* %64)
  %66 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %67 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %66, i32 0, i32 6
  %68 = call i32 @init_usb_anchor(i32* %67)
  %69 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %70 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %69, i32 0, i32 5
  %71 = call i32 @atomic_set(i32* %70, i32 0)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %85, %22
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MAX_TX_URBS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* @MAX_TX_URBS, align 4
  %78 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %79 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %77, i32* %84, align 4
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %72

88:                                               ; preds = %72
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32 @usb_alloc_urb(i32 0, i32 %89)
  %91 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %92 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %94 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  br label %167

98:                                               ; preds = %88
  %99 = load i64, i64* @INTR_IN_BUFFER_SIZE, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kzalloc(i64 %99, i32 %100)
  %102 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %103 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %105 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  br label %162

109:                                              ; preds = %98
  %110 = load i64, i64* @CPC_HEADER_SIZE, align 8
  %111 = add i64 %110, 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @kzalloc(i64 %111, i32 %112)
  %114 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %115 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %117 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %109
  br label %157

121:                                              ; preds = %109
  %122 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %123 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %124 = call i32 @usb_set_intfdata(%struct.usb_interface* %122, %struct.ems_usb* %123)
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %127 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %126, i32 0, i32 0
  %128 = call i32 @SET_NETDEV_DEV(%struct.net_device* %125, i32* %127)
  %129 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %130 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %129, i32 0, i32 3
  %131 = call i32 @init_params_sja1000(i32* %130)
  %132 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %133 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %134 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %133, i32 0, i32 3
  %135 = call i32 @ems_usb_command_msg(%struct.ems_usb* %132, i32* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %121
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @netdev_err(%struct.net_device* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %152

142:                                              ; preds = %121
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = call i32 @register_candev(%struct.net_device* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @netdev_err(%struct.net_device* %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  br label %152

151:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %171

152:                                              ; preds = %147, %138
  %153 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %154 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @kfree(i8* %155)
  br label %157

157:                                              ; preds = %152, %120
  %158 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %159 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @kfree(i8* %160)
  br label %162

162:                                              ; preds = %157, %108
  %163 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %164 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @usb_free_urb(i32 %165)
  br label %167

167:                                              ; preds = %162, %97
  %168 = load %struct.net_device*, %struct.net_device** %6, align 8
  %169 = call i32 @free_candev(%struct.net_device* %168)
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %167, %151, %16
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ems_usb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ems_usb*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @init_params_sja1000(i32*) #1

declare dso_local i32 @ems_usb_command_msg(%struct.ems_usb*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
