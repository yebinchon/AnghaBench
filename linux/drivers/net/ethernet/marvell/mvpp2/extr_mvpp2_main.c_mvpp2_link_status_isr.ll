; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_link_status_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_link_status_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64, i64, i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }

@MVPP22_XLG_INT_STAT = common dso_local global i64 0, align 8
@MVPP22_XLG_INT_STAT_LINK = common dso_local global i32 0, align 4
@MVPP22_XLG_STATUS = common dso_local global i64 0, align 8
@MVPP22_XLG_STATUS_LINK_UP = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_STAT = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_STAT_LINK = common dso_local global i32 0, align 4
@MVPP2_GMAC_STATUS0 = common dso_local global i64 0, align 8
@MVPP2_GMAC_STATUS0_LINK_UP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mvpp2_link_status_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_link_status_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mvpp2_port*
  store %struct.mvpp2_port* %11, %struct.mvpp2_port** %5, align 8
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %13 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %16 = call i32 @mvpp22_gop_mask_irq(%struct.mvpp2_port* %15)
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %18 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @mvpp2_is_xlg(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MVPP22_XLG_INT_STAT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MVPP22_XLG_INT_STAT_LINK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  %39 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %40 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MVPP22_XLG_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MVPP22_XLG_STATUS_LINK_UP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %27
  br label %96

52:                                               ; preds = %21, %2
  %53 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %54 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @phy_interface_mode_is_rgmii(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %60 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @phy_interface_mode_is_8023z(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %66 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %64, %58, %52
  %71 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %72 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MVPP22_GMAC_INT_STAT, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @MVPP22_GMAC_INT_STAT_LINK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %70
  store i32 1, i32* %7, align 4
  %82 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %83 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MVPP2_GMAC_STATUS0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @MVPP2_GMAC_STATUS0_LINK_UP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %81
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %51
  %97 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %98 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %103 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @phylink_mac_change(i64 %104, i32 %105)
  br label %141

107:                                              ; preds = %96
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = call i32 @netif_running(%struct.net_device* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %107
  br label %141

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %120 = call i32 @mvpp2_interrupts_enable(%struct.mvpp2_port* %119)
  %121 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %122 = call i32 @mvpp2_egress_enable(%struct.mvpp2_port* %121)
  %123 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %124 = call i32 @mvpp2_ingress_enable(%struct.mvpp2_port* %123)
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = call i32 @netif_carrier_on(%struct.net_device* %125)
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %127)
  br label %140

129:                                              ; preds = %115
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %130)
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = call i32 @netif_carrier_off(%struct.net_device* %132)
  %134 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %135 = call i32 @mvpp2_ingress_disable(%struct.mvpp2_port* %134)
  %136 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %137 = call i32 @mvpp2_egress_disable(%struct.mvpp2_port* %136)
  %138 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %139 = call i32 @mvpp2_interrupts_disable(%struct.mvpp2_port* %138)
  br label %140

140:                                              ; preds = %129, %118
  br label %141

141:                                              ; preds = %140, %114, %101
  %142 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %143 = call i32 @mvpp22_gop_unmask_irq(%struct.mvpp2_port* %142)
  %144 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %144
}

declare dso_local i32 @mvpp22_gop_mask_irq(%struct.mvpp2_port*) #1

declare dso_local i64 @mvpp2_is_xlg(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

declare dso_local i32 @phylink_mac_change(i64, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mvpp2_interrupts_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_egress_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_ingress_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mvpp2_ingress_disable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_egress_disable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_interrupts_disable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_gop_unmask_irq(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
