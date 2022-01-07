; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, %struct.rx_queue*, %struct.net_device*, %struct.tx_queue* }
%struct.rx_queue = type { i32, i64 }
%struct.net_device = type { i32, i64 }
%struct.tx_queue = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }

@PORT_SERIAL_CONTROL = common dso_local global i32 0, align 4
@SERIAL_PORT_ENABLE = common dso_local global i32 0, align 4
@DO_NOT_FORCE_LINK_FAIL = common dso_local global i32 0, align 4
@FORCE_LINK_PASS = common dso_local global i32 0, align 4
@PORT_CONFIG_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*)* @port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_start(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethtool_link_ksettings, align 4
  %7 = alloca %struct.tx_queue*, align 8
  %8 = alloca %struct.rx_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %2, align 8
  %10 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %11 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %10, i32 0, i32 3
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @mv643xx_eth_get_link_ksettings(%struct.net_device* %18, %struct.ethtool_link_ksettings* %6)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @phy_init_hw(i64 %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @mv643xx_eth_set_link_ksettings(%struct.net_device* %24, %struct.ethtool_link_ksettings* %6)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @phy_start(i64 %28)
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %32 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %33 = call i32 @rdlp(%struct.mv643xx_eth_private* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @SERIAL_PORT_ENABLE, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %38 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @wrlp(%struct.mv643xx_eth_private* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @DO_NOT_FORCE_LINK_FAIL, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* @FORCE_LINK_PASS, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %30
  %53 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %54 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @wrlp(%struct.mv643xx_eth_private* %53, i32 %54, i32 %55)
  %57 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %58 = call i32 @tx_set_rate(%struct.mv643xx_eth_private* %57, i32 1000000000, i32 16777216)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %78, %52
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %67 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %66, i32 0, i32 4
  %68 = load %struct.tx_queue*, %struct.tx_queue** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %68, i64 %70
  store %struct.tx_queue* %71, %struct.tx_queue** %7, align 8
  %72 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %73 = call i32 @txq_reset_hw_ptr(%struct.tx_queue* %72)
  %74 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %75 = call i32 @txq_set_rate(%struct.tx_queue* %74, i32 1000000000, i32 16777216)
  %76 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %77 = call i32 @txq_set_fixed_prio_mode(%struct.tx_queue* %76)
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %59

81:                                               ; preds = %59
  %82 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %83 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %82, i32 0, i32 3
  %84 = load %struct.net_device*, %struct.net_device** %83, align 8
  %85 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %86 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %85, i32 0, i32 3
  %87 = load %struct.net_device*, %struct.net_device** %86, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mv643xx_eth_set_features(%struct.net_device* %84, i32 %89)
  %91 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %92 = load i32, i32* @PORT_CONFIG_EXT, align 4
  %93 = call i32 @wrlp(%struct.mv643xx_eth_private* %91, i32 %92, i32 0)
  %94 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %95 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %94, i32 0, i32 3
  %96 = load %struct.net_device*, %struct.net_device** %95, align 8
  %97 = call i32 @mv643xx_eth_program_unicast_filter(%struct.net_device* %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %131, %81
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %101 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %98
  %105 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %106 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %105, i32 0, i32 2
  %107 = load %struct.rx_queue*, %struct.rx_queue** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %107, i64 %109
  store %struct.rx_queue* %110, %struct.rx_queue** %8, align 8
  %111 = load %struct.rx_queue*, %struct.rx_queue** %8, align 8
  %112 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = load %struct.rx_queue*, %struct.rx_queue** %8, align 8
  %116 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @RXQ_CURRENT_DESC_PTR(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @wrlp(%struct.mv643xx_eth_private* %124, i32 %126, i32 %127)
  %129 = load %struct.rx_queue*, %struct.rx_queue** %8, align 8
  %130 = call i32 @rxq_enable(%struct.rx_queue* %129)
  br label %131

131:                                              ; preds = %104
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %98

134:                                              ; preds = %98
  ret void
}

declare dso_local i32 @mv643xx_eth_get_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @phy_init_hw(i64) #1

declare dso_local i32 @mv643xx_eth_set_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @tx_set_rate(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @txq_reset_hw_ptr(%struct.tx_queue*) #1

declare dso_local i32 @txq_set_rate(%struct.tx_queue*, i32, i32) #1

declare dso_local i32 @txq_set_fixed_prio_mode(%struct.tx_queue*) #1

declare dso_local i32 @mv643xx_eth_set_features(%struct.net_device*, i32) #1

declare dso_local i32 @mv643xx_eth_program_unicast_filter(%struct.net_device*) #1

declare dso_local i32 @RXQ_CURRENT_DESC_PTR(i32) #1

declare dso_local i32 @rxq_enable(%struct.rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
