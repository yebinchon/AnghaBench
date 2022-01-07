; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, %struct.aqc111_data* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.aqc111_data = type { i32, i32 }

@SFR_VLAN_CONTROL_VSO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@SFR_VLAN_CONTROL_VFE = common dso_local global i32 0, align 4
@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_VLAN_ID_CONTROL = common dso_local global i32 0, align 4
@SFR_BMRX_DMA_CONTROL = common dso_local global i32 0, align 4
@SFR_BMTX_DMA_CONTROL = common dso_local global i32 0, align 4
@SFR_ARC_CTRL = common dso_local global i32 0, align 4
@SFR_RX_CTL_IPE = common dso_local global i32 0, align 4
@SFR_RX_CTL_AB = common dso_local global i32 0, align 4
@SFR_RX_CTL = common dso_local global i32 0, align 4
@SFR_RX_PATH_READY = common dso_local global i32 0, align 4
@SFR_ETH_MAC_PATH = common dso_local global i32 0, align 4
@SFR_BULK_OUT_EFF_EN = common dso_local global i32 0, align 4
@SFR_BULK_OUT_CTRL = common dso_local global i32 0, align 4
@SFR_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@SFR_MEDIUM_XGMIIMODE = common dso_local global i32 0, align 4
@SFR_MEDIUM_FULL_DUPLEX = common dso_local global i32 0, align 4
@SFR_MEDIUM_JUMBO_EN = common dso_local global i32 0, align 4
@SFR_MEDIUM_RECEIVE_EN = common dso_local global i32 0, align 4
@SFR_MEDIUM_RXFLOW_CTRLEN = common dso_local global i32 0, align 4
@SFR_MEDIUM_TXFLOW_CTRLEN = common dso_local global i32 0, align 4
@SFR_RX_CTL_START = common dso_local global i32 0, align 4
@SFR_BULK_OUT_FLUSH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @aqc111_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.aqc111_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 1
  %8 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  store %struct.aqc111_data* %8, %struct.aqc111_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %10 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %125

13:                                               ; preds = %1
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %16 = call i32 @aqc111_configure_rx(%struct.usbnet* %14, %struct.aqc111_data* %15)
  %17 = load i32, i32* @SFR_VLAN_CONTROL_VSO, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i32, i32* @SFR_VLAN_CONTROL_VFE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %13
  %31 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %32 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %33 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %34 = call i32 @aqc111_write_cmd(%struct.usbnet* %31, i32 %32, i32 %33, i32 1, i32 1, i32* %5)
  store i32 0, i32* %5, align 4
  %35 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %36 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %37 = load i32, i32* @SFR_BMRX_DMA_CONTROL, align 4
  %38 = call i32 @aqc111_write_cmd(%struct.usbnet* %35, i32 %36, i32 %37, i32 1, i32 1, i32* %5)
  %39 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %40 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %41 = load i32, i32* @SFR_BMTX_DMA_CONTROL, align 4
  %42 = call i32 @aqc111_write_cmd(%struct.usbnet* %39, i32 %40, i32 %41, i32 1, i32 1, i32* %5)
  %43 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %44 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %45 = load i32, i32* @SFR_ARC_CTRL, align 4
  %46 = call i32 @aqc111_write_cmd(%struct.usbnet* %43, i32 %44, i32 %45, i32 1, i32 1, i32* %5)
  %47 = load i32, i32* @SFR_RX_CTL_IPE, align 4
  %48 = load i32, i32* @SFR_RX_CTL_AB, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %52 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %54 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %55 = load i32, i32* @SFR_RX_CTL, align 4
  %56 = call i32 @aqc111_write16_cmd(%struct.usbnet* %53, i32 %54, i32 %55, i32 2, i32* %4)
  %57 = load i32, i32* @SFR_RX_PATH_READY, align 4
  store i32 %57, i32* %5, align 4
  %58 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %59 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %60 = load i32, i32* @SFR_ETH_MAC_PATH, align 4
  %61 = call i32 @aqc111_write_cmd(%struct.usbnet* %58, i32 %59, i32 %60, i32 1, i32 1, i32* %5)
  %62 = load i32, i32* @SFR_BULK_OUT_EFF_EN, align 4
  store i32 %62, i32* %5, align 4
  %63 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %64 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %65 = load i32, i32* @SFR_BULK_OUT_CTRL, align 4
  %66 = call i32 @aqc111_write_cmd(%struct.usbnet* %63, i32 %64, i32 %65, i32 1, i32 1, i32* %5)
  store i32 0, i32* %4, align 4
  %67 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %68 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %69 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %70 = call i32 @aqc111_write16_cmd(%struct.usbnet* %67, i32 %68, i32 %69, i32 2, i32* %4)
  %71 = load i32, i32* @SFR_MEDIUM_XGMIIMODE, align 4
  %72 = load i32, i32* @SFR_MEDIUM_FULL_DUPLEX, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %4, align 4
  %74 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %75 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %76 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %77 = call i32 @aqc111_write16_cmd(%struct.usbnet* %74, i32 %75, i32 %76, i32 2, i32* %4)
  %78 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %79 = call i32 @aqc111_configure_csum_offload(%struct.usbnet* %78)
  %80 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @aqc111_set_rx_mode(%struct.TYPE_4__* %82)
  %84 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %85 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %86 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %87 = call i32 @aqc111_read16_cmd(%struct.usbnet* %84, i32 %85, i32 %86, i32 2, i32* %4)
  %88 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %89 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 1500
  br i1 %93, label %94, label %98

94:                                               ; preds = %30
  %95 = load i32, i32* @SFR_MEDIUM_JUMBO_EN, align 4
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %30
  %99 = load i32, i32* @SFR_MEDIUM_RECEIVE_EN, align 4
  %100 = load i32, i32* @SFR_MEDIUM_RXFLOW_CTRLEN, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SFR_MEDIUM_TXFLOW_CTRLEN, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %107 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %108 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %109 = call i32 @aqc111_write16_cmd(%struct.usbnet* %106, i32 %107, i32 %108, i32 2, i32* %4)
  %110 = load i32, i32* @SFR_RX_CTL_START, align 4
  %111 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %112 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %116 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %117 = load i32, i32* @SFR_RX_CTL, align 4
  %118 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %119 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %118, i32 0, i32 1
  %120 = call i32 @aqc111_write16_cmd(%struct.usbnet* %115, i32 %116, i32 %117, i32 2, i32* %119)
  %121 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %122 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = call i32 @netif_carrier_on(%struct.TYPE_4__* %123)
  br label %166

125:                                              ; preds = %1
  %126 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %127 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %128 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %129 = call i32 @aqc111_read16_cmd(%struct.usbnet* %126, i32 %127, i32 %128, i32 2, i32* %4)
  %130 = load i32, i32* @SFR_MEDIUM_RECEIVE_EN, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %135 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %136 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %137 = call i32 @aqc111_write16_cmd(%struct.usbnet* %134, i32 %135, i32 %136, i32 2, i32* %4)
  %138 = load i32, i32* @SFR_RX_CTL_START, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %141 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %145 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %146 = load i32, i32* @SFR_RX_CTL, align 4
  %147 = load %struct.aqc111_data*, %struct.aqc111_data** %3, align 8
  %148 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %147, i32 0, i32 1
  %149 = call i32 @aqc111_write16_cmd(%struct.usbnet* %144, i32 %145, i32 %146, i32 2, i32* %148)
  %150 = load i32, i32* @SFR_BULK_OUT_FLUSH_EN, align 4
  %151 = load i32, i32* @SFR_BULK_OUT_EFF_EN, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %5, align 4
  %153 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %154 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %155 = load i32, i32* @SFR_BULK_OUT_CTRL, align 4
  %156 = call i32 @aqc111_write_cmd(%struct.usbnet* %153, i32 %154, i32 %155, i32 1, i32 1, i32* %5)
  %157 = load i32, i32* @SFR_BULK_OUT_EFF_EN, align 4
  store i32 %157, i32* %5, align 4
  %158 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %159 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %160 = load i32, i32* @SFR_BULK_OUT_CTRL, align 4
  %161 = call i32 @aqc111_write_cmd(%struct.usbnet* %158, i32 %159, i32 %160, i32 1, i32 1, i32* %5)
  %162 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %163 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = call i32 @netif_carrier_off(%struct.TYPE_4__* %164)
  br label %166

166:                                              ; preds = %125, %98
  ret i32 0
}

declare dso_local i32 @aqc111_configure_rx(%struct.usbnet*, %struct.aqc111_data*) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_configure_csum_offload(%struct.usbnet*) #1

declare dso_local i32 @aqc111_set_rx_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @aqc111_read16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
