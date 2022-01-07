; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dvb_usb_device = type { i32 }

@cxusb_medion_properties = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cxusb_bluebird_lgh064f_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dee1601_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_lgz201_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dtt7579_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dualdig4_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_nano2_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_nano2_needsfirmware_properties = common dso_local global i32 0, align 4
@cxusb_aver_a868r_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dualdig4_rev2_properties = common dso_local global i32 0, align 4
@cxusb_d680_dmb_properties = common dso_local global i32 0, align 4
@cxusb_mygica_d689_properties = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @cxusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = load i32, i32* @adapter_nr, align 4
  %11 = call i32 @dvb_usb_device_init(%struct.usb_interface* %8, i32* @cxusb_medion_properties, i32 %9, %struct.dvb_usb_device** %6, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call i32 @cxusb_medion_check_intf(%struct.usb_interface* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %112

20:                                               ; preds = %13
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %22 = call i32 @_cxusb_power_ctrl(%struct.dvb_usb_device* %21, i32 1)
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %24 = call i32 @cxusb_medion_set_mode(%struct.dvb_usb_device* %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %112

28:                                               ; preds = %20
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %30 = call i32 @cxusb_medion_register_analog(%struct.dvb_usb_device* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %32 = call i32 @cxusb_medion_set_mode(%struct.dvb_usb_device* %31, i32 1)
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %34 = call i32 @_cxusb_power_ctrl(%struct.dvb_usb_device* %33, i32 0)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %112

38:                                               ; preds = %28
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %40 = call i32 @cxusb_medion_put(%struct.dvb_usb_device* %39)
  store i32 0, i32* %3, align 4
  br label %116

41:                                               ; preds = %2
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load i32, i32* @adapter_nr, align 4
  %45 = call i32 @dvb_usb_device_init(%struct.usb_interface* %42, i32* @cxusb_bluebird_lgh064f_properties, i32 %43, %struct.dvb_usb_device** null, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %107

47:                                               ; preds = %41
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load i32, i32* @adapter_nr, align 4
  %51 = call i32 @dvb_usb_device_init(%struct.usb_interface* %48, i32* @cxusb_bluebird_dee1601_properties, i32 %49, %struct.dvb_usb_device** null, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %47
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load i32, i32* @adapter_nr, align 4
  %57 = call i32 @dvb_usb_device_init(%struct.usb_interface* %54, i32* @cxusb_bluebird_lgz201_properties, i32 %55, %struct.dvb_usb_device** null, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %107

59:                                               ; preds = %53
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load i32, i32* @adapter_nr, align 4
  %63 = call i32 @dvb_usb_device_init(%struct.usb_interface* %60, i32* @cxusb_bluebird_dtt7579_properties, i32 %61, %struct.dvb_usb_device** null, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %59
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = load i32, i32* @adapter_nr, align 4
  %69 = call i32 @dvb_usb_device_init(%struct.usb_interface* %66, i32* @cxusb_bluebird_dualdig4_properties, i32 %67, %struct.dvb_usb_device** null, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %65
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = load i32, i32* @THIS_MODULE, align 4
  %74 = load i32, i32* @adapter_nr, align 4
  %75 = call i32 @dvb_usb_device_init(%struct.usb_interface* %72, i32* @cxusb_bluebird_nano2_properties, i32 %73, %struct.dvb_usb_device** null, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %71
  %78 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = load i32, i32* @adapter_nr, align 4
  %81 = call i32 @dvb_usb_device_init(%struct.usb_interface* %78, i32* @cxusb_bluebird_nano2_needsfirmware_properties, i32 %79, %struct.dvb_usb_device** null, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %77
  %84 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %85 = load i32, i32* @THIS_MODULE, align 4
  %86 = load i32, i32* @adapter_nr, align 4
  %87 = call i32 @dvb_usb_device_init(%struct.usb_interface* %84, i32* @cxusb_aver_a868r_properties, i32 %85, %struct.dvb_usb_device** null, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %91 = load i32, i32* @THIS_MODULE, align 4
  %92 = load i32, i32* @adapter_nr, align 4
  %93 = call i32 @dvb_usb_device_init(%struct.usb_interface* %90, i32* @cxusb_bluebird_dualdig4_rev2_properties, i32 %91, %struct.dvb_usb_device** null, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = load i32, i32* @THIS_MODULE, align 4
  %98 = load i32, i32* @adapter_nr, align 4
  %99 = call i32 @dvb_usb_device_init(%struct.usb_interface* %96, i32* @cxusb_d680_dmb_properties, i32 %97, %struct.dvb_usb_device** null, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %103 = load i32, i32* @THIS_MODULE, align 4
  %104 = load i32, i32* @adapter_nr, align 4
  %105 = call i32 @dvb_usb_device_init(%struct.usb_interface* %102, i32* @cxusb_mygica_d689_properties, i32 %103, %struct.dvb_usb_device** null, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41
  store i32 0, i32* %3, align 4
  br label %116

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %116

112:                                              ; preds = %37, %27, %17
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = call i32 @dvb_usb_device_exit(%struct.usb_interface* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %109, %107, %38
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, %struct.dvb_usb_device**, i32) #1

declare dso_local i32 @cxusb_medion_check_intf(%struct.usb_interface*) #1

declare dso_local i32 @_cxusb_power_ctrl(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @cxusb_medion_set_mode(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @cxusb_medion_register_analog(%struct.dvb_usb_device*) #1

declare dso_local i32 @cxusb_medion_put(%struct.dvb_usb_device*) #1

declare dso_local i32 @dvb_usb_device_exit(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
