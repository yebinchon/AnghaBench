; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.ar9170 = type { i32, %struct.usb_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface* }
%struct.usb_device = type { i32 }

@AR9170_USB_EP_CMD = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_BULK = common dso_local global i64 0, align 8
@carl9170_usb_tasklet = common dso_local global i32 0, align 4
@CARL9170_STOPPED = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@CARL9170FW_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@carl9170_usb_firmware_step2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @carl9170_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.ar9170*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  %13 = call i32 @usb_reset_device(%struct.usb_device* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %3, align 4
  br label %164

18:                                               ; preds = %2
  %19 = call %struct.ar9170* @carl9170_alloc(i32 96)
  store %struct.ar9170* %19, %struct.ar9170** %7, align 8
  %20 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %21 = call i64 @IS_ERR(%struct.ar9170* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.ar9170* %24)
  store i32 %25, i32* %3, align 4
  br label %164

26:                                               ; preds = %18
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %27)
  store %struct.usb_device* %28, %struct.usb_device** %8, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %30 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 1
  store %struct.usb_device* %29, %struct.usb_device** %31, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %34 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %33, i32 0, i32 20
  store %struct.usb_interface* %32, %struct.usb_interface** %34, align 8
  %35 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %39 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %38, i32 0, i32 19
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %76, %26
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %40
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %58, %struct.usb_endpoint_descriptor** %6, align 8
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %60 = call i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %59)
  %61 = load i64, i64* @AR9170_USB_EP_CMD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %49
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %65 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %69 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %68)
  %70 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %74 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %67, %63, %49
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %81 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %82 = call i32 @usb_set_intfdata(%struct.usb_interface* %80, %struct.ar9170* %81)
  %83 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %84 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %83, i32 0, i32 18
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %87 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %86, i32 0, i32 0
  %88 = call i32 @SET_IEEE80211_DEV(i32 %85, i32* %87)
  %89 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %90 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %89, i32 0, i32 17
  %91 = call i32 @init_usb_anchor(i32* %90)
  %92 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %93 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %92, i32 0, i32 16
  %94 = call i32 @init_usb_anchor(i32* %93)
  %95 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %96 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %95, i32 0, i32 15
  %97 = call i32 @init_usb_anchor(i32* %96)
  %98 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %99 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %98, i32 0, i32 14
  %100 = call i32 @init_usb_anchor(i32* %99)
  %101 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %102 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %101, i32 0, i32 13
  %103 = call i32 @init_usb_anchor(i32* %102)
  %104 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %105 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %104, i32 0, i32 12
  %106 = call i32 @init_usb_anchor(i32* %105)
  %107 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %108 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %107, i32 0, i32 11
  %109 = call i32 @init_usb_anchor(i32* %108)
  %110 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %111 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %110, i32 0, i32 10
  %112 = call i32 @init_completion(i32* %111)
  %113 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %114 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %113, i32 0, i32 9
  %115 = call i32 @init_completion(i32* %114)
  %116 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %117 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %116, i32 0, i32 8
  %118 = call i32 @init_completion(i32* %117)
  %119 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %120 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %119, i32 0, i32 7
  %121 = load i32, i32* @carl9170_usb_tasklet, align 4
  %122 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %123 = ptrtoint %struct.ar9170* %122 to i64
  %124 = call i32 @tasklet_init(i32* %120, i32 %121, i64 %123)
  %125 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %126 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %125, i32 0, i32 6
  %127 = call i32 @atomic_set(i32* %126, i32 0)
  %128 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %129 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %128, i32 0, i32 5
  %130 = call i32 @atomic_set(i32* %129, i32 0)
  %131 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %132 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %131, i32 0, i32 4
  %133 = call i32 @atomic_set(i32* %132, i32 0)
  %134 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %135 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %134, i32 0, i32 3
  %136 = call i32 @atomic_set(i32* %135, i32 0)
  %137 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %138 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %137, i32 0, i32 2
  %139 = call i32 @atomic_set(i32* %138, i32 0)
  %140 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %141 = call i32 @usb_get_intf(%struct.usb_interface* %140)
  %142 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %143 = load i32, i32* @CARL9170_STOPPED, align 4
  %144 = call i32 @carl9170_set_state(%struct.ar9170* %142, i32 %143)
  %145 = load i32, i32* @THIS_MODULE, align 4
  %146 = load i32, i32* @CARL9170FW_NAME, align 4
  %147 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %148 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %147, i32 0, i32 1
  %149 = load %struct.usb_device*, %struct.usb_device** %148, align 8
  %150 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %149, i32 0, i32 0
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %153 = load i32, i32* @carl9170_usb_firmware_step2, align 4
  %154 = call i32 @request_firmware_nowait(i32 %145, i32 1, i32 %146, i32* %150, i32 %151, %struct.ar9170* %152, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %79
  %158 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %159 = call i32 @usb_put_intf(%struct.usb_interface* %158)
  %160 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %161 = call i32 @carl9170_free(%struct.ar9170* %160)
  br label %162

162:                                              ; preds = %157, %79
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %23, %16
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.ar9170* @carl9170_alloc(i32) #1

declare dso_local i64 @IS_ERR(%struct.ar9170*) #1

declare dso_local i32 @PTR_ERR(%struct.ar9170*) #1

declare dso_local i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ar9170*) #1

declare dso_local i32 @SET_IEEE80211_DEV(i32, i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @carl9170_set_state(%struct.ar9170*, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32*, i32, %struct.ar9170*, i32) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @carl9170_free(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
