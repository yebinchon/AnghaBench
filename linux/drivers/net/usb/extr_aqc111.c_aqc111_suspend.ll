; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { %struct.TYPE_2__*, %struct.aqc111_data* }
%struct.TYPE_2__ = type { i32 }
%struct.aqc111_data = type { i32, i64 }
%struct.aqc111_wol_cfg = type { i64, i32 }

@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_RX_CTL = common dso_local global i32 0, align 4
@SFR_RX_CTL_START = common dso_local global i32 0, align 4
@SFR_PHYPWR_RSTCTL = common dso_local global i32 0, align 4
@SFR_PHYPWR_RSTCTL_BZ = common dso_local global i32 0, align 4
@SFR_BULK_OUT_EFF_EN = common dso_local global i32 0, align 4
@SFR_BULK_OUT_CTRL = common dso_local global i32 0, align 4
@SFR_RX_CTL_RF_WAK = common dso_local global i32 0, align 4
@SFR_RX_CTL_AP = common dso_local global i32 0, align 4
@SFR_RX_CTL_AM = common dso_local global i32 0, align 4
@SFR_ETH_MAC_PATH = common dso_local global i32 0, align 4
@AQ_WOL = common dso_local global i32 0, align 4
@SFR_RX_CTL_AB = common dso_local global i32 0, align 4
@SFR_BM_INT_MASK = common dso_local global i32 0, align 4
@SFR_BMRX_DMA_EN = common dso_local global i32 0, align 4
@SFR_BMRX_DMA_CONTROL = common dso_local global i32 0, align 4
@SFR_RX_PATH_READY = common dso_local global i32 0, align 4
@SFR_RX_BULKIN_QCTRL = common dso_local global i32 0, align 4
@SFR_RX_BULKIN_QTIMR_LOW = common dso_local global i32 0, align 4
@SFR_RX_BULKIN_QTIMR_HIGH = common dso_local global i32 0, align 4
@SFR_RX_BULKIN_QSIZE = common dso_local global i32 0, align 4
@SFR_RX_BULKIN_QIFG = common dso_local global i32 0, align 4
@SFR_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@SFR_MEDIUM_RECEIVE_EN = common dso_local global i32 0, align 4
@AQ_WOL_CFG = common dso_local global i32 0, align 4
@WOL_CFG_SIZE = common dso_local global i32 0, align 4
@AQ_PHY_OPS = common dso_local global i32 0, align 4
@AQ_LOW_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @aqc111_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.aqc111_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aqc111_wol_cfg, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %12 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %11)
  store %struct.usbnet* %12, %struct.usbnet** %5, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 1
  %15 = load %struct.aqc111_data*, %struct.aqc111_data** %14, align 8
  store %struct.aqc111_data* %15, %struct.aqc111_data** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @usbnet_suspend(%struct.usb_interface* %16, i32 %17)
  %19 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %20 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %21 = load i32, i32* @SFR_RX_CTL, align 4
  %22 = call i32 @aqc111_read16_cmd_nopm(%struct.usbnet* %19, i32 %20, i32 %21, i32 2, i32* %8)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @SFR_RX_CTL_START, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %29 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %30 = load i32, i32* @SFR_RX_CTL, align 4
  %31 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %28, i32 %29, i32 %30, i32 2, i32* %8)
  %32 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %33 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %34 = load i32, i32* @SFR_PHYPWR_RSTCTL, align 4
  %35 = call i32 @aqc111_read16_cmd_nopm(%struct.usbnet* %32, i32 %33, i32 %34, i32 2, i32* %8)
  %36 = load i32, i32* @SFR_PHYPWR_RSTCTL_BZ, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %40 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %41 = load i32, i32* @SFR_PHYPWR_RSTCTL, align 4
  %42 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %39, i32 %40, i32 %41, i32 2, i32* %8)
  %43 = load i32, i32* @SFR_BULK_OUT_EFF_EN, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %45 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %46 = load i32, i32* @SFR_BULK_OUT_CTRL, align 4
  %47 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %44, i32 %45, i32 %46, i32 1, i32 1, i32* %9)
  %48 = load i32, i32* @SFR_RX_CTL_START, align 4
  %49 = load i32, i32* @SFR_RX_CTL_RF_WAK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SFR_RX_CTL_AP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SFR_RX_CTL_AM, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %59 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %60 = load i32, i32* @SFR_RX_CTL, align 4
  %61 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %58, i32 %59, i32 %60, i32 2, i32* %7)
  store i32 0, i32* %9, align 4
  %62 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %63 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %64 = load i32, i32* @SFR_ETH_MAC_PATH, align 4
  %65 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %62, i32 %63, i32 %64, i32 1, i32 1, i32* %9)
  %66 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %67 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %152

70:                                               ; preds = %2
  %71 = call i32 @memset(%struct.aqc111_wol_cfg* %10, i32 0, i32 16)
  %72 = load i32, i32* @AQ_WOL, align 4
  %73 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %74 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = getelementptr inbounds %struct.aqc111_wol_cfg, %struct.aqc111_wol_cfg* %10, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %80 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ether_addr_copy(i32 %78, i32 %83)
  %85 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %86 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.aqc111_wol_cfg, %struct.aqc111_wol_cfg* %10, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* @SFR_RX_CTL_AB, align 4
  %90 = load i32, i32* @SFR_RX_CTL_START, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %95 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %96 = load i32, i32* @SFR_RX_CTL, align 4
  %97 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %94, i32 %95, i32 %96, i32 2, i32* %7)
  store i32 0, i32* %9, align 4
  %98 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %99 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %100 = load i32, i32* @SFR_BM_INT_MASK, align 4
  %101 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %98, i32 %99, i32 %100, i32 1, i32 1, i32* %9)
  %102 = load i32, i32* @SFR_BMRX_DMA_EN, align 4
  store i32 %102, i32* %9, align 4
  %103 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %104 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %105 = load i32, i32* @SFR_BMRX_DMA_CONTROL, align 4
  %106 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %103, i32 %104, i32 %105, i32 1, i32 1, i32* %9)
  %107 = load i32, i32* @SFR_RX_PATH_READY, align 4
  store i32 %107, i32* %9, align 4
  %108 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %109 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %110 = load i32, i32* @SFR_ETH_MAC_PATH, align 4
  %111 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %108, i32 %109, i32 %110, i32 1, i32 1, i32* %9)
  store i32 7, i32* %9, align 4
  %112 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %113 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %114 = load i32, i32* @SFR_RX_BULKIN_QCTRL, align 4
  %115 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %112, i32 %113, i32 %114, i32 1, i32 1, i32* %9)
  store i32 0, i32* %9, align 4
  %116 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %117 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %118 = load i32, i32* @SFR_RX_BULKIN_QTIMR_LOW, align 4
  %119 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %116, i32 %117, i32 %118, i32 1, i32 1, i32* %9)
  %120 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %121 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %122 = load i32, i32* @SFR_RX_BULKIN_QTIMR_HIGH, align 4
  %123 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %120, i32 %121, i32 %122, i32 1, i32 1, i32* %9)
  store i32 255, i32* %9, align 4
  %124 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %125 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %126 = load i32, i32* @SFR_RX_BULKIN_QSIZE, align 4
  %127 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %124, i32 %125, i32 %126, i32 1, i32 1, i32* %9)
  %128 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %129 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %130 = load i32, i32* @SFR_RX_BULKIN_QIFG, align 4
  %131 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %128, i32 %129, i32 %130, i32 1, i32 1, i32* %9)
  %132 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %133 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %134 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %135 = call i32 @aqc111_read16_cmd_nopm(%struct.usbnet* %132, i32 %133, i32 %134, i32 2, i32* %8)
  %136 = load i32, i32* @SFR_MEDIUM_RECEIVE_EN, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %140 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %141 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %142 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %139, i32 %140, i32 %141, i32 2, i32* %8)
  %143 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %144 = load i32, i32* @AQ_WOL_CFG, align 4
  %145 = load i32, i32* @WOL_CFG_SIZE, align 4
  %146 = call i32 @aqc111_write_cmd(%struct.usbnet* %143, i32 %144, i32 0, i32 0, i32 %145, %struct.aqc111_wol_cfg* %10)
  %147 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %148 = load i32, i32* @AQ_PHY_OPS, align 4
  %149 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %150 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %149, i32 0, i32 0
  %151 = call i32 @aqc111_write32_cmd(%struct.usbnet* %147, i32 %148, i32 0, i32 0, i32* %150)
  br label %175

152:                                              ; preds = %2
  %153 = load i32, i32* @AQ_LOW_POWER, align 4
  %154 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %155 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %159 = load i32, i32* @AQ_PHY_OPS, align 4
  %160 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %161 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %160, i32 0, i32 0
  %162 = call i32 @aqc111_write32_cmd(%struct.usbnet* %158, i32 %159, i32 0, i32 0, i32* %161)
  %163 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %164 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %165 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %166 = call i32 @aqc111_read16_cmd_nopm(%struct.usbnet* %163, i32 %164, i32 %165, i32 2, i32* %8)
  %167 = load i32, i32* @SFR_MEDIUM_RECEIVE_EN, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %172 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %173 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %174 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %171, i32 %172, i32 %173, i32 2, i32* %8)
  br label %175

175:                                              ; preds = %152, %70
  ret i32 0
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_suspend(%struct.usb_interface*, i32) #1

declare dso_local i32 @aqc111_read16_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write16_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.aqc111_wol_cfg*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, %struct.aqc111_wol_cfg*) #1

declare dso_local i32 @aqc111_write32_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
