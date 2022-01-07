; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phylink_link_state = type { i64 }
%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid mode on %s\0A\00", align 1
@MVPP22 = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MVPP21 = common dso_local global i64 0, align 8
@MVPP2_F_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, %struct.phylink_link_state*)* @mvpp2_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_mac_config(%struct.phylink_config* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.phylink_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink_link_state*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mvpp2_port*, align 8
  %9 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %10 = load %struct.phylink_config*, %struct.phylink_config** %4, align 8
  %11 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net_device* @to_net_dev(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %14)
  store %struct.mvpp2_port* %15, %struct.mvpp2_port** %8, align 8
  %16 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %17 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %20 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %25 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @mvpp2_is_xlg(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %138

40:                                               ; preds = %29, %3
  %41 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %42 = call i32 @mvpp2_port_disable(%struct.mvpp2_port* %41)
  %43 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %44 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MVPP22, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %55 = call i32 @mvpp22_gop_mask_irq(%struct.mvpp2_port* %54)
  %56 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %57 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %60 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %62 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @phy_power_off(i32 %63)
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %66 = call i32 @mvpp22_mode_reconfigure(%struct.mvpp2_port* %65)
  br label %67

67:                                               ; preds = %53, %50, %40
  %68 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %69 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @mvpp2_is_xlg(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %77 = call i32 @mvpp2_xlg_config(%struct.mvpp2_port* %74, i32 %75, %struct.phylink_link_state* %76)
  br label %102

78:                                               ; preds = %67
  %79 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %80 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @phy_interface_mode_is_rgmii(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %86 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @phy_interface_mode_is_8023z(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %92 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90, %84, %78
  %97 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %100 = call i32 @mvpp2_gmac_config(%struct.mvpp2_port* %97, i32 %98, %struct.phylink_link_state* %99)
  br label %101

101:                                              ; preds = %96, %90
  br label %102

102:                                              ; preds = %101, %73
  %103 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %104 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MVPP21, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %112 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MVPP2_F_LOOPBACK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %119 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %120 = call i32 @mvpp2_port_loopback_set(%struct.mvpp2_port* %118, %struct.phylink_link_state* %119)
  br label %121

121:                                              ; preds = %117, %110, %102
  %122 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %123 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MVPP22, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %134 = call i32 @mvpp22_gop_unmask_irq(%struct.mvpp2_port* %133)
  br label %135

135:                                              ; preds = %132, %129, %121
  %136 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %137 = call i32 @mvpp2_port_enable(%struct.mvpp2_port* %136)
  br label %138

138:                                              ; preds = %135, %34
  ret void
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mvpp2_is_xlg(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @mvpp2_port_disable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_gop_mask_irq(%struct.mvpp2_port*) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @mvpp22_mode_reconfigure(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_xlg_config(%struct.mvpp2_port*, i32, %struct.phylink_link_state*) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

declare dso_local i32 @mvpp2_gmac_config(%struct.mvpp2_port*, i32, %struct.phylink_link_state*) #1

declare dso_local i32 @mvpp2_port_loopback_set(%struct.mvpp2_port*, %struct.phylink_link_state*) #1

declare dso_local i32 @mvpp22_gop_unmask_irq(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_port_enable(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
