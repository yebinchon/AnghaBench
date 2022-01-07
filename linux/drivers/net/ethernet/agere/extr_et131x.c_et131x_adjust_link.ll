; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.et131x_adapter = type { i64, i32, i32 }

@SPEED_10 = common dso_local global i64 0, align 8
@PHY_MPHY_CONTROL_REG = common dso_local global i32 0, align 4
@PHY_INDEX_REG = common dso_local global i32 0, align 4
@PHY_DATA_REG = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@PHY_CONFIG = common dso_local global i32 0, align 4
@ET_PHY_CONFIG_TX_FIFO_DEPTH = common dso_local global i32 0, align 4
@ET_PHY_CONFIG_FIFO_DEPTH_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @et131x_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.et131x_adapter* %9, %struct.et131x_adapter** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %188

16:                                               ; preds = %1
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %188

25:                                               ; preds = %16
  %26 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %27 = call i64 @et1310_in_phy_coma(%struct.et131x_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %31 = call i32 @et1310_disable_phy_coma(%struct.et131x_adapter* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %39 = call i32 @phy_print_status(%struct.phy_device* %38)
  %40 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %128

44:                                               ; preds = %32
  %45 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %45, i32 0, i32 1
  store i32 20, i32* %46, align 8
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SPEED_10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %44
  %53 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %54 = load i32, i32* @PHY_MPHY_CONTROL_REG, align 4
  %55 = call i32 @et131x_mii_read(%struct.et131x_adapter* %53, i32 %54, i32* %5)
  %56 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %57 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PHY_MPHY_CONTROL_REG, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, 4
  %64 = call i32 @et131x_mii_write(%struct.et131x_adapter* %56, i32 %60, i32 %61, i32 %63)
  %65 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %66 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %67 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PHY_INDEX_REG, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, 33794
  %73 = call i32 @et131x_mii_write(%struct.et131x_adapter* %65, i32 %69, i32 %70, i32 %72)
  %74 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %75 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PHY_DATA_REG, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, 511
  %82 = call i32 @et131x_mii_write(%struct.et131x_adapter* %74, i32 %78, i32 %79, i32 %81)
  %83 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %84 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PHY_MPHY_CONTROL_REG, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @et131x_mii_write(%struct.et131x_adapter* %83, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %52, %44
  %92 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %93 = call i32 @et1310_config_flow_control(%struct.et131x_adapter* %92)
  %94 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %95 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SPEED_1000, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %91
  %100 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 2048
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %106 = load i32, i32* @PHY_CONFIG, align 4
  %107 = call i32 @et131x_mii_read(%struct.et131x_adapter* %105, i32 %106, i32* %6)
  %108 = load i32, i32* @ET_PHY_CONFIG_TX_FIFO_DEPTH, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @ET_PHY_CONFIG_FIFO_DEPTH_32, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %116 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %117 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PHY_CONFIG, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @et131x_mii_write(%struct.et131x_adapter* %115, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %104, %99, %91
  %124 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %125 = call i32 @et131x_set_rx_dma_timer(%struct.et131x_adapter* %124)
  %126 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %127 = call i32 @et1310_config_mac_regs2(%struct.et131x_adapter* %126)
  br label %188

128:                                              ; preds = %32
  %129 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %129, i32 0, i32 1
  store i32 0, i32* %130, align 8
  %131 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %132 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SPEED_10, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %175

136:                                              ; preds = %128
  %137 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %138 = load i32, i32* @PHY_MPHY_CONTROL_REG, align 4
  %139 = call i32 @et131x_mii_read(%struct.et131x_adapter* %137, i32 %138, i32* %7)
  %140 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %141 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %142 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PHY_MPHY_CONTROL_REG, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, 4
  %148 = call i32 @et131x_mii_write(%struct.et131x_adapter* %140, i32 %144, i32 %145, i32 %147)
  %149 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %150 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %151 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @PHY_INDEX_REG, align 4
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, 33794
  %157 = call i32 @et131x_mii_write(%struct.et131x_adapter* %149, i32 %153, i32 %154, i32 %156)
  %158 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %159 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %160 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @PHY_DATA_REG, align 4
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, 511
  %166 = call i32 @et131x_mii_write(%struct.et131x_adapter* %158, i32 %162, i32 %163, i32 %165)
  %167 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %168 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %169 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PHY_MPHY_CONTROL_REG, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @et131x_mii_write(%struct.et131x_adapter* %167, i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %136, %128
  %176 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %177 = call i32 @et131x_free_busy_send_packets(%struct.et131x_adapter* %176)
  %178 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %179 = call i32 @et131x_init_send(%struct.et131x_adapter* %178)
  %180 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %181 = call i32 @et131x_soft_reset(%struct.et131x_adapter* %180)
  %182 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %183 = call i32 @et131x_adapter_setup(%struct.et131x_adapter* %182)
  %184 = load %struct.net_device*, %struct.net_device** %2, align 8
  %185 = call i32 @et131x_disable_txrx(%struct.net_device* %184)
  %186 = load %struct.net_device*, %struct.net_device** %2, align 8
  %187 = call i32 @et131x_enable_txrx(%struct.net_device* %186)
  br label %188

188:                                              ; preds = %15, %24, %175, %123
  ret void
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @et1310_in_phy_coma(%struct.et131x_adapter*) #1

declare dso_local i32 @et1310_disable_phy_coma(%struct.et131x_adapter*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @et131x_mii_read(%struct.et131x_adapter*, i32, i32*) #1

declare dso_local i32 @et131x_mii_write(%struct.et131x_adapter*, i32, i32, i32) #1

declare dso_local i32 @et1310_config_flow_control(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_set_rx_dma_timer(%struct.et131x_adapter*) #1

declare dso_local i32 @et1310_config_mac_regs2(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_free_busy_send_packets(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_init_send(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_soft_reset(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_setup(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_disable_txrx(%struct.net_device*) #1

declare dso_local i32 @et131x_enable_txrx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
