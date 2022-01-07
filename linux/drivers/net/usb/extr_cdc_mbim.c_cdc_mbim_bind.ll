; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cdc_ncm_ctx = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_driver = type { i32 }
%struct.cdc_mbim_state = type { %struct.usb_driver*, %struct.cdc_ncm_ctx* }

@ENODEV = common dso_local global i32 0, align 4
@CDC_NCM_COMM_ALTSETTING_MBIM = common dso_local global i64 0, align 8
@CDC_NCM_DATA_ALTSETTING_MBIM = common dso_local global i32 0, align 4
@cdc_mbim_wdm_manage_power = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@cdc_mbim_netdev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @cdc_mbim_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdc_mbim_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cdc_ncm_ctx*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cdc_mbim_state*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.usb_driver* @ERR_PTR(i32 %11)
  store %struct.usb_driver* %12, %struct.usb_driver** %6, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 3
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.cdc_mbim_state*
  store %struct.cdc_mbim_state* %18, %struct.cdc_mbim_state** %9, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = call i64 @cdc_ncm_select_altsetting(%struct.usb_interface* %19)
  %21 = load i64, i64* @CDC_NCM_COMM_ALTSETTING_MBIM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load i32, i32* @CDC_NCM_DATA_ALTSETTING_MBIM, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load i64, i64* @CDC_NCM_COMM_ALTSETTING_MBIM, align 8
  %28 = call i32 @cdc_mbim_set_ctrlalt(%struct.usbnet* %25, %struct.usb_interface* %26, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %120

32:                                               ; preds = %23
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cdc_ncm_comm_intf_is_mbim(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %120

42:                                               ; preds = %35
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cdc_ncm_bind_common(%struct.usbnet* %43, %struct.usb_interface* %44, i32 %45, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %120

55:                                               ; preds = %42
  %56 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %9, align 8
  %57 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %56, i32 0, i32 1
  %58 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %57, align 8
  store %struct.cdc_ncm_ctx* %58, %struct.cdc_ncm_ctx** %5, align 8
  %59 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %55
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %73 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = load i32, i32* @cdc_mbim_wdm_manage_power, align 4
  %83 = call %struct.usb_driver* @usb_cdc_wdm_register(i32 %71, i32* %75, i32 %81, i32 %82)
  store %struct.usb_driver* %83, %struct.usb_driver** %6, align 8
  br label %84

84:                                               ; preds = %68, %63, %55
  %85 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %86 = call i64 @IS_ERR(%struct.usb_driver* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %90 = call i32 @PTR_ERR(%struct.usb_driver* %89)
  store i32 %90, i32* %7, align 4
  %91 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %92 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %93 = call i32 @cdc_ncm_unbind(%struct.usbnet* %91, %struct.usb_interface* %92)
  br label %120

94:                                               ; preds = %84
  %95 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %96 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %95, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %96, align 8
  %97 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %98 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %9, align 8
  %99 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %98, i32 0, i32 0
  store %struct.usb_driver* %97, %struct.usb_driver** %99, align 8
  %100 = load i32, i32* @IFF_NOARP, align 4
  %101 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %102 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %108 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 8
  %116 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %117 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32* @cdc_mbim_netdev_ops, i32** %119, align 8
  br label %120

120:                                              ; preds = %94, %88, %54, %41, %31
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local %struct.usb_driver* @ERR_PTR(i32) #1

declare dso_local i64 @cdc_ncm_select_altsetting(%struct.usb_interface*) #1

declare dso_local i32 @cdc_mbim_set_ctrlalt(%struct.usbnet*, %struct.usb_interface*, i64) #1

declare dso_local i32 @cdc_ncm_comm_intf_is_mbim(i32) #1

declare dso_local i32 @cdc_ncm_bind_common(%struct.usbnet*, %struct.usb_interface*, i32, i32) #1

declare dso_local %struct.usb_driver* @usb_cdc_wdm_register(i32, i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_driver*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_driver*) #1

declare dso_local i32 @cdc_ncm_unbind(%struct.usbnet*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
