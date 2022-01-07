; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64 }
%struct.smsc911x_data = type { i64, i32, i32, i32, i32, i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"duplex state has changed\00", align 1
@MAC_CR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"configuring for full duplex mode\00", align 1
@MAC_CR_FDPX_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"configuring for half duplex mode\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"carrier state has changed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"configuring for carrier OK\00", align 1
@GPIO_CFG_LED1_EN_ = common dso_local global i32 0, align 4
@GPIO_CFG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"configuring for no carrier\00", align 1
@GPIO_CFG_GPIOBUF0_ = common dso_local global i32 0, align 4
@GPIO_CFG_GPIODIR0_ = common dso_local global i32 0, align 4
@GPIO_CFG_GPIOD0_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc911x_phy_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_phy_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %8)
  store %struct.smsc911x_data* %9, %struct.smsc911x_data** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %17 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %1
  %21 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %22 = load i32, i32* @hw, align 4
  %23 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %21, i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %25 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %24, i32 0, i32 5
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %29 = load i32, i32* @MAC_CR, align 4
  %30 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %37 = load i32, i32* @hw, align 4
  %38 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %36, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @MAC_CR_FDPX_, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %50

42:                                               ; preds = %20
  %43 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %44 = load i32, i32* @hw, align 4
  %45 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %43, i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @MAC_CR_FDPX_, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %42, %35
  %51 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %52 = load i32, i32* @MAC_CR, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %51, i32 %52, i32 %53)
  %55 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %56 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %55, i32 0, i32 5
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %60 = call i32 @smsc911x_phy_update_flowcontrol(%struct.smsc911x_data* %59)
  %61 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %65 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %50, %1
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @netif_carrier_ok(%struct.net_device* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %71 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %160

74:                                               ; preds = %66
  %75 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %76 = load i32, i32* @hw, align 4
  %77 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %75, i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %74
  %81 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %82 = load i32, i32* @hw, align 4
  %83 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %81, i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %85 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GPIO_CFG_LED1_EN_, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %80
  %91 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %92 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %97 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %100 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %102 = load i32, i32* @GPIO_CFG, align 4
  %103 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %104 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %101, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %95, %90, %80
  br label %156

108:                                              ; preds = %74
  %109 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %110 = load i32, i32* @hw, align 4
  %111 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %109, i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %112 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %113 = load i32, i32* @GPIO_CFG, align 4
  %114 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %112, i32 %113)
  %115 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %116 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %118 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @GPIO_CFG_LED1_EN_, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %108
  %124 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %125 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %155, label %128

128:                                              ; preds = %123
  %129 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %130 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %133 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @GPIO_CFG_LED1_EN_, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %137 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* @GPIO_CFG_GPIOBUF0_, align 4
  %141 = load i32, i32* @GPIO_CFG_GPIODIR0_, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @GPIO_CFG_GPIOD0_, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %146 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %150 = load i32, i32* @GPIO_CFG, align 4
  %151 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %152 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %149, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %128, %123, %108
  br label %156

156:                                              ; preds = %155, %107
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %159 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %66
  ret void
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc911x_mac_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc911x_phy_update_flowcontrol(%struct.smsc911x_data*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
