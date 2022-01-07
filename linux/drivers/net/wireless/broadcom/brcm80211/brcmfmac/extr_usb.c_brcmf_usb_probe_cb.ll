; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_probe_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_probe_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.device*, i32, i32 }
%struct.device = type { i32 }
%struct.brcmf_bus = type { i32, i32, i32, i32, %struct.device*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcmf_usbdev* }
%struct.brcmf_usbdev = type { i32, i32, %struct.brcmf_fw_request* }
%struct.brcmf_fw_request = type { i32, i32, i32, i32, %struct.device*, i32, i32*, %struct.TYPE_2__ }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_USB_NRXQ = common dso_local global i32 0, align 4
@BRCMF_USB_NTXQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@brcmf_usb_bus_ops = common dso_local global i32 0, align 4
@BRCMF_PROTO_BCDC = common dso_local global i32 0, align 4
@BRCMF_BUSTYPE_USB = common dso_local global i32 0, align 4
@brcmf_usb_probe_phase2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"firmware request failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_usbdev_info*)* @brcmf_usb_probe_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_probe_cb(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_usbdev_info*, align 8
  %4 = alloca %struct.brcmf_bus*, align 8
  %5 = alloca %struct.brcmf_usbdev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.brcmf_fw_request*, align 8
  %8 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %3, align 8
  store %struct.brcmf_bus* null, %struct.brcmf_bus** %4, align 8
  store %struct.brcmf_usbdev* null, %struct.brcmf_usbdev** %5, align 8
  %9 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load i32, i32* @USB, align 4
  %13 = call i32 @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %15 = load i32, i32* @BRCMF_USB_NRXQ, align 4
  %16 = load i32, i32* @BRCMF_USB_NTXQ, align 4
  %17 = call %struct.brcmf_usbdev* @brcmf_usb_attach(%struct.brcmf_usbdev_info* %14, i32 %15, i32 %16)
  store %struct.brcmf_usbdev* %17, %struct.brcmf_usbdev** %5, align 8
  %18 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %5, align 8
  %19 = icmp ne %struct.brcmf_usbdev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %144

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.brcmf_fw_request* @kzalloc(i32 48, i32 %24)
  %26 = bitcast %struct.brcmf_fw_request* %25 to %struct.brcmf_bus*
  store %struct.brcmf_bus* %26, %struct.brcmf_bus** %4, align 8
  %27 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %28 = icmp ne %struct.brcmf_bus* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %133

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %34, i32 0, i32 4
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %37 = bitcast %struct.brcmf_bus* %36 to %struct.brcmf_fw_request*
  %38 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %5, align 8
  %39 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %38, i32 0, i32 2
  store %struct.brcmf_fw_request* %37, %struct.brcmf_fw_request** %39, align 8
  %40 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %5, align 8
  %41 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %42 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.brcmf_usbdev* %40, %struct.brcmf_usbdev** %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %46 = bitcast %struct.brcmf_bus* %45 to %struct.brcmf_fw_request*
  %47 = call i32 @dev_set_drvdata(%struct.device* %44, %struct.brcmf_fw_request* %46)
  %48 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %49 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %48, i32 0, i32 6
  store i32* @brcmf_usb_bus_ops, i32** %49, align 8
  %50 = load i32, i32* @BRCMF_PROTO_BCDC, align 4
  %51 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %52 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %54 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %56 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %55, i32 0, i32 4
  %57 = load %struct.device*, %struct.device** %56, align 8
  %58 = load i32, i32* @BRCMF_BUSTYPE_USB, align 4
  %59 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %5, align 8
  %60 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %5, align 8
  %63 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @brcmf_get_module_param(%struct.device* %57, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %67 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %69 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %32
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %133

75:                                               ; preds = %32
  %76 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %77 = call i32 @brcmf_usb_dlneeded(%struct.brcmf_usbdev_info* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %75
  %80 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %81 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %80, i32 0, i32 0
  %82 = load %struct.device*, %struct.device** %81, align 8
  %83 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %84 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @brcmf_alloc(%struct.device* %82, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %133

90:                                               ; preds = %79
  %91 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %92 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %91, i32 0, i32 0
  %93 = load %struct.device*, %struct.device** %92, align 8
  %94 = call i32 @brcmf_attach(%struct.device* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %133

98:                                               ; preds = %90
  %99 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %100 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %99, i32 0, i32 1
  %101 = call i32 @complete(i32* %100)
  store i32 0, i32* %2, align 4
  br label %144

102:                                              ; preds = %75
  %103 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %5, align 8
  %104 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %107 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %5, align 8
  %109 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %112 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %114 = call %struct.brcmf_fw_request* @brcmf_usb_prepare_fw_request(%struct.brcmf_usbdev_info* %113)
  store %struct.brcmf_fw_request* %114, %struct.brcmf_fw_request** %7, align 8
  %115 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %116 = icmp ne %struct.brcmf_fw_request* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %102
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %133

120:                                              ; preds = %102
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %123 = load i32, i32* @brcmf_usb_probe_phase2, align 4
  %124 = call i32 @brcmf_fw_get_firmwares(%struct.device* %121, %struct.brcmf_fw_request* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @brcmf_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %131 = call i32 @kfree(%struct.brcmf_fw_request* %130)
  br label %133

132:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %144

133:                                              ; preds = %127, %117, %97, %89, %72, %29
  %134 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %135 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %134, i32 0, i32 0
  %136 = load %struct.device*, %struct.device** %135, align 8
  %137 = call i32 @brcmf_free(%struct.device* %136)
  %138 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %139 = bitcast %struct.brcmf_bus* %138 to %struct.brcmf_fw_request*
  %140 = call i32 @kfree(%struct.brcmf_fw_request* %139)
  %141 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %142 = call i32 @brcmf_usb_detach(%struct.brcmf_usbdev_info* %141)
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %133, %132, %98, %20
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.brcmf_usbdev* @brcmf_usb_attach(%struct.brcmf_usbdev_info*, i32, i32) #1

declare dso_local %struct.brcmf_fw_request* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.brcmf_fw_request*) #1

declare dso_local i32 @brcmf_get_module_param(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @brcmf_usb_dlneeded(%struct.brcmf_usbdev_info*) #1

declare dso_local i32 @brcmf_alloc(%struct.device*, i32) #1

declare dso_local i32 @brcmf_attach(%struct.device*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local %struct.brcmf_fw_request* @brcmf_usb_prepare_fw_request(%struct.brcmf_usbdev_info*) #1

declare dso_local i32 @brcmf_fw_get_firmwares(%struct.device*, %struct.brcmf_fw_request*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_fw_request*) #1

declare dso_local i32 @brcmf_free(%struct.device*) #1

declare dso_local i32 @brcmf_usb_detach(%struct.brcmf_usbdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
