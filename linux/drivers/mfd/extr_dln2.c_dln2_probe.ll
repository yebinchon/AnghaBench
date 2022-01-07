; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device, %struct.usb_host_interface* }
%struct.device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.usb_device_id = type { i32 }
%struct.dln2_dev = type { i32, i32, i32, %struct.TYPE_10__*, i32, %struct.usb_interface*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLN2_HANDLES = common dso_local global i32 0, align 4
@DLN2_MAX_RX_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to initialize hardware\0A\00", align 1
@dln2_devs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to add mfd devices to core\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dln2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.dln2_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %168

31:                                               ; preds = %22
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.dln2_dev* @kzalloc(i32 56, i32 %32)
  store %struct.dln2_dev* %33, %struct.dln2_dev** %8, align 8
  %34 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %35 = icmp ne %struct.dln2_dev* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %168

39:                                               ; preds = %31
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %48 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %50 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %57 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = call i32 @interface_to_usbdev(%struct.usb_interface* %58)
  %60 = call i32 @usb_get_dev(i32 %59)
  %61 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %62 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %64 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %65 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %64, i32 0, i32 5
  store %struct.usb_interface* %63, %struct.usb_interface** %65, align 8
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %68 = call i32 @usb_set_intfdata(%struct.usb_interface* %66, %struct.dln2_dev* %67)
  %69 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %70 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %69, i32 0, i32 4
  %71 = call i32 @init_waitqueue_head(i32* %70)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %115, %39
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @DLN2_HANDLES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %72
  %77 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %78 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = call i32 @init_waitqueue_head(i32* %83)
  %85 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %86 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = call i32 @spin_lock_init(i32* %91)
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %111, %76
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @DLN2_MAX_RX_SLOTS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %99 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %98, i32 0, i32 3
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = call i32 @init_completion(i32* %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %93

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %72

118:                                              ; preds = %72
  %119 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %120 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %119, i32 0, i32 2
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %123 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %122, i32 0, i32 1
  %124 = call i32 @spin_lock_init(i32* %123)
  %125 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %126 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %125, i32 0, i32 0
  %127 = call i32 @INIT_LIST_HEAD(i32* %126)
  %128 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %129 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %130 = call i32 @dln2_setup_rx_urbs(%struct.dln2_dev* %128, %struct.usb_host_interface* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  br label %164

134:                                              ; preds = %118
  %135 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i32 @dln2_start_rx_urbs(%struct.dln2_dev* %135, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %161

141:                                              ; preds = %134
  %142 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %143 = call i32 @dln2_hw_init(%struct.dln2_dev* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.device*, %struct.device** %7, align 8
  %148 = call i32 @dev_err(%struct.device* %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %161

149:                                              ; preds = %141
  %150 = load %struct.device*, %struct.device** %7, align 8
  %151 = load i32, i32* @dln2_devs, align 4
  %152 = load i32, i32* @dln2_devs, align 4
  %153 = call i32 @ARRAY_SIZE(i32 %152)
  %154 = call i32 @mfd_add_hotplug_devices(%struct.device* %150, i32 %151, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load %struct.device*, %struct.device** %7, align 8
  %159 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %161

160:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %168

161:                                              ; preds = %157, %146, %140
  %162 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %163 = call i32 @dln2_stop_rx_urbs(%struct.dln2_dev* %162)
  br label %164

164:                                              ; preds = %161, %133
  %165 = load %struct.dln2_dev*, %struct.dln2_dev** %8, align 8
  %166 = call i32 @dln2_free(%struct.dln2_dev* %165)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %160, %36, %28
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.dln2_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.dln2_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dln2_setup_rx_urbs(%struct.dln2_dev*, %struct.usb_host_interface*) #1

declare dso_local i32 @dln2_start_rx_urbs(%struct.dln2_dev*, i32) #1

declare dso_local i32 @dln2_hw_init(%struct.dln2_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mfd_add_hotplug_devices(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dln2_stop_rx_urbs(%struct.dln2_dev*) #1

declare dso_local i32 @dln2_free(%struct.dln2_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
