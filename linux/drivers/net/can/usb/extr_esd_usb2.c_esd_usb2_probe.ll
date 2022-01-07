; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.esd_usb2 = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.esd_usb2_msg = type { i32, %struct.TYPE_8__, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sending version message failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no version message answer\0A\00", align 1
@dev_attr_firmware = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Couldn't create device file for firmware\0A\00", align 1
@dev_attr_hardware = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Couldn't create device file for hardware\0A\00", align 1
@dev_attr_nets = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Couldn't create device file for nets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @esd_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.esd_usb2*, align 8
  %6 = alloca %struct.esd_usb2_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.esd_usb2_msg* @kzalloc(i32 72, i32 %9)
  %11 = bitcast %struct.esd_usb2_msg* %10 to %struct.esd_usb2*
  store %struct.esd_usb2* %11, %struct.esd_usb2** %5, align 8
  %12 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %13 = icmp ne %struct.esd_usb2* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %147

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %19 = call i32 @interface_to_usbdev(%struct.usb_interface* %18)
  %20 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %21 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %23 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %22, i32 0, i32 3
  %24 = call i32 @init_usb_anchor(i32* %23)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %26 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %27 = bitcast %struct.esd_usb2* %26 to %struct.esd_usb2_msg*
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %25, %struct.esd_usb2_msg* %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.esd_usb2_msg* @kmalloc(i32 72, i32 %29)
  store %struct.esd_usb2_msg* %30, %struct.esd_usb2_msg** %6, align 8
  %31 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %32 = icmp ne %struct.esd_usb2_msg* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %137

36:                                               ; preds = %17
  %37 = load i32, i32* @CMD_VERSION, align 4
  %38 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %39 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %43 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %47 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %51 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %55 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %59 = bitcast %struct.esd_usb2* %58 to %struct.esd_usb2_msg*
  %60 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %61 = call i32 @esd_usb2_send_msg(%struct.esd_usb2_msg* %59, %struct.esd_usb2_msg* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %36
  %65 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %137

68:                                               ; preds = %36
  %69 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %70 = bitcast %struct.esd_usb2* %69 to %struct.esd_usb2_msg*
  %71 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %72 = call i32 @esd_usb2_wait_msg(%struct.esd_usb2_msg* %70, %struct.esd_usb2_msg* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %137

79:                                               ; preds = %68
  %80 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %81 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %87 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %89 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %95 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 0
  %98 = call i64 @device_create_file(i32* %97, i32* @dev_attr_firmware)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %79
  %101 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %79
  %105 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %106 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %105, i32 0, i32 0
  %107 = call i64 @device_create_file(i32* %106, i32* @dev_attr_hardware)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %115 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %114, i32 0, i32 0
  %116 = call i64 @device_create_file(i32* %115, i32* @dev_attr_nets)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %120 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %113
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %133, %122
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %126 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @esd_usb2_probe_one_net(%struct.usb_interface* %130, i32 %131)
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %123

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %75, %64, %33
  %138 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %139 = call i32 @kfree(%struct.esd_usb2_msg* %138)
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %144 = bitcast %struct.esd_usb2* %143 to %struct.esd_usb2_msg*
  %145 = call i32 @kfree(%struct.esd_usb2_msg* %144)
  br label %146

146:                                              ; preds = %142, %137
  br label %147

147:                                              ; preds = %146, %14
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local %struct.esd_usb2_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.esd_usb2_msg*) #1

declare dso_local %struct.esd_usb2_msg* @kmalloc(i32, i32) #1

declare dso_local i32 @esd_usb2_send_msg(%struct.esd_usb2_msg*, %struct.esd_usb2_msg*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @esd_usb2_wait_msg(%struct.esd_usb2_msg*, %struct.esd_usb2_msg*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @esd_usb2_probe_one_net(%struct.usb_interface*, i32) #1

declare dso_local i32 @kfree(%struct.esd_usb2_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
