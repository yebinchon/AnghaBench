; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__*, i32, i32, %struct.aqc111_data* }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }
%struct.aqc111_data = type { i32, i32, i32 }

@URB_SIZE = common dso_local global i32 0, align 4
@AQ_SUPPORT_HW_FEATURE = common dso_local global i32 0, align 4
@AQ_SUPPORT_FEATURE = common dso_local global i32 0, align 4
@AQ_SUPPORT_VLAN_FEATURE = common dso_local global i32 0, align 4
@AQ_PHY_POWER_EN = common dso_local global i32 0, align 4
@AQ_PHY_OPS = common dso_local global i32 0, align 4
@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_NODE_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SFR_BM_INT_MASK = common dso_local global i32 0, align 4
@SFR_SWP_CTRL = common dso_local global i32 0, align 4
@SFR_MONITOR_MODE = common dso_local global i32 0, align 4
@SFR_MONITOR_MODE_EPHYRW = common dso_local global i32 0, align 4
@SFR_MONITOR_MODE_RWLC = common dso_local global i32 0, align 4
@SFR_MONITOR_MODE_RWMP = common dso_local global i32 0, align 4
@SFR_MONITOR_MODE_RWWF = common dso_local global i32 0, align 4
@SFR_MONITOR_MODE_RW_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @aqc111_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.aqc111_data*, align 8
  %4 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %5, i32 0, i32 4
  %7 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  store %struct.aqc111_data* %7, %struct.aqc111_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @URB_SIZE, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @usb_device_no_sg_constraint(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @AQ_SUPPORT_HW_FEATURE, align 4
  %21 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @AQ_SUPPORT_FEATURE, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @AQ_SUPPORT_VLAN_FEATURE, align 4
  %35 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @AQ_PHY_POWER_EN, align 4
  %42 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %43 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %45 = load i32, i32* @AQ_PHY_OPS, align 4
  %46 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %47 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %46, i32 0, i32 2
  %48 = call i32 @aqc111_write32_cmd(%struct.usbnet* %44, i32 %45, i32 0, i32 0, i32* %47)
  %49 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %50 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %51 = load i32, i32* @SFR_NODE_ID, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @aqc111_write_cmd(%struct.usbnet* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32* %58)
  store i32 255, i32* %4, align 4
  %60 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %61 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %62 = load i32, i32* @SFR_BM_INT_MASK, align 4
  %63 = call i32 @aqc111_write_cmd(%struct.usbnet* %60, i32 %61, i32 %62, i32 1, i32 1, i32* %4)
  store i32 0, i32* %4, align 4
  %64 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %65 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %66 = load i32, i32* @SFR_SWP_CTRL, align 4
  %67 = call i32 @aqc111_write_cmd(%struct.usbnet* %64, i32 %65, i32 %66, i32 1, i32 1, i32* %4)
  %68 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %69 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %70 = load i32, i32* @SFR_MONITOR_MODE, align 4
  %71 = call i32 @aqc111_read_cmd(%struct.usbnet* %68, i32 %69, i32 %70, i32 1, i32 1, i32* %4)
  %72 = load i32, i32* @SFR_MONITOR_MODE_EPHYRW, align 4
  %73 = load i32, i32* @SFR_MONITOR_MODE_RWLC, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SFR_MONITOR_MODE_RWMP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SFR_MONITOR_MODE_RWWF, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SFR_MONITOR_MODE_RW_FLAG, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %85 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %86 = load i32, i32* @SFR_MONITOR_MODE, align 4
  %87 = call i32 @aqc111_write_cmd(%struct.usbnet* %84, i32 %85, i32 %86, i32 1, i32 1, i32* %4)
  %88 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %89 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = call i32 @netif_carrier_off(%struct.TYPE_2__* %90)
  %92 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %93 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %94 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %97 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @aqc111_set_phy_speed(%struct.usbnet* %92, i32 %95, i32 %98)
  ret i32 0
}

declare dso_local i64 @usb_device_no_sg_constraint(i32) #1

declare dso_local i32 @aqc111_write32_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_2__*) #1

declare dso_local i32 @aqc111_set_phy_speed(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
