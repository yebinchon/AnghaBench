; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gbe_intf = type { %struct.TYPE_2__, %struct.gbe_slave*, %struct.gbe_priv* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.gbe_slave = type { i32, i32 }
%struct.gbe_priv = type { i32, i32, i64 }
%struct.netcp_intf = type { i32 }

@switch_regs = common dso_local global i32 0, align 4
@id_ver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"initializing gbe version %d.%d (%d) GBE identification value 0x%x\0A\00", align 1
@SWITCH_TO_PORT_IN_TAGINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"opened TX channel %s: %p with to port %d, flags %d\0A\00", align 1
@ptype = common dso_local global i32 0, align 4
@GBE_CTL_P0_ENABLE = common dso_local global i32 0, align 4
@ETH_SW_CTL_P0_TX_CRC_REMOVE = common dso_local global i32 0, align 4
@ETH_SW_CAN_REMOVE_ETH_FCS = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@stat_port_en = common dso_local global i32 0, align 4
@GBE_TXHOOK_ORDER = common dso_local global i32 0, align 4
@gbe_txhook = common dso_local global i32 0, align 4
@GBE_RXHOOK_ORDER = common dso_local global i32 0, align 4
@gbe_rxhook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.net_device*)* @gbe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_open(i8* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.gbe_intf*, align 8
  %7 = alloca %struct.gbe_priv*, align 8
  %8 = alloca %struct.netcp_intf*, align 8
  %9 = alloca %struct.gbe_slave*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.gbe_intf*
  store %struct.gbe_intf* %15, %struct.gbe_intf** %6, align 8
  %16 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %17 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %16, i32 0, i32 2
  %18 = load %struct.gbe_priv*, %struct.gbe_priv** %17, align 8
  store %struct.gbe_priv* %18, %struct.gbe_priv** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %19)
  store %struct.netcp_intf* %20, %struct.netcp_intf** %8, align 8
  %21 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %22 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %21, i32 0, i32 1
  %23 = load %struct.gbe_slave*, %struct.gbe_slave** %22, align 8
  store %struct.gbe_slave* %23, %struct.gbe_slave** %9, align 8
  %24 = load %struct.gbe_slave*, %struct.gbe_slave** %9, align 8
  %25 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %28 = load i32, i32* @switch_regs, align 4
  %29 = load i32, i32* @id_ver, align 4
  %30 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %27, i32 %28, i32 %29)
  %31 = call i32 @readl(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %33 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @GBE_MAJOR_VERSION(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @GBE_MINOR_VERSION(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @GBE_RTL_VERSION(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @GBE_IDENT(i32 %41)
  %43 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38, i32 %40, i32 %42)
  %44 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %45 = call i64 @IS_SS_ID_XGBE(%struct.gbe_priv* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %2
  %48 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %49 = call i64 @IS_SS_ID_MU(%struct.gbe_priv* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %2
  %52 = load i32, i32* @SWITCH_TO_PORT_IN_TAGINFO, align 4
  %53 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %54 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %58 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %63 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %68 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %72 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %75 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %79 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %83 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %87 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %81, i32 %85, i32 %89)
  %91 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %92 = call i32 @gbe_slave_stop(%struct.gbe_intf* %91)
  %93 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %94 = load i32, i32* @switch_regs, align 4
  %95 = load i32, i32* @ptype, align 4
  %96 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %93, i32 %94, i32 %95)
  %97 = call i32 @writel(i32 0, i32 %96)
  %98 = load i32, i32* @GBE_CTL_P0_ENABLE, align 4
  store i32 %98, i32* %12, align 4
  %99 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %100 = call i64 @IS_SS_ID_MU(%struct.gbe_priv* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %70
  %103 = load i32, i32* @ETH_SW_CTL_P0_TX_CRC_REMOVE, align 4
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @ETH_SW_CAN_REMOVE_ETH_FCS, align 4
  %107 = load %struct.netcp_intf*, %struct.netcp_intf** %8, align 8
  %108 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %102, %70
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %112 = load i32, i32* @switch_regs, align 4
  %113 = load i32, i32* @control, align 4
  %114 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %111, i32 %112, i32 %113)
  %115 = call i32 @writel(i32 %110, i32 %114)
  %116 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %117 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %120 = load i32, i32* @switch_regs, align 4
  %121 = load i32, i32* @stat_port_en, align 4
  %122 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %119, i32 %120, i32 %121)
  %123 = call i32 @writel(i32 %118, i32 %122)
  %124 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %125 = call i32 @gbe_slave_open(%struct.gbe_intf* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %109
  br label %148

129:                                              ; preds = %109
  %130 = load %struct.netcp_intf*, %struct.netcp_intf** %8, align 8
  %131 = load i32, i32* @GBE_TXHOOK_ORDER, align 4
  %132 = load i32, i32* @gbe_txhook, align 4
  %133 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %134 = call i32 @netcp_register_txhook(%struct.netcp_intf* %130, i32 %131, i32 %132, %struct.gbe_intf* %133)
  %135 = load %struct.netcp_intf*, %struct.netcp_intf** %8, align 8
  %136 = load i32, i32* @GBE_RXHOOK_ORDER, align 4
  %137 = load i32, i32* @gbe_rxhook, align 4
  %138 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %139 = call i32 @netcp_register_rxhook(%struct.netcp_intf* %135, i32 %136, i32 %137, %struct.gbe_intf* %138)
  %140 = load %struct.gbe_slave*, %struct.gbe_slave** %9, align 8
  %141 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %143 = load %struct.gbe_slave*, %struct.gbe_slave** %9, align 8
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = call i32 @netcp_ethss_update_link_state(%struct.gbe_priv* %142, %struct.gbe_slave* %143, %struct.net_device* %144)
  %146 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %147 = call i32 @gbe_register_cpts(%struct.gbe_priv* %146)
  store i32 0, i32* %3, align 4
  br label %152

148:                                              ; preds = %128
  %149 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %150 = call i32 @gbe_slave_stop(%struct.gbe_intf* %149)
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %129
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_priv*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @GBE_MAJOR_VERSION(i32) #1

declare dso_local i32 @GBE_MINOR_VERSION(i32) #1

declare dso_local i32 @GBE_RTL_VERSION(i32) #1

declare dso_local i32 @GBE_IDENT(i32) #1

declare dso_local i64 @IS_SS_ID_XGBE(%struct.gbe_priv*) #1

declare dso_local i64 @IS_SS_ID_MU(%struct.gbe_priv*) #1

declare dso_local i32 @gbe_slave_stop(%struct.gbe_intf*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @gbe_slave_open(%struct.gbe_intf*) #1

declare dso_local i32 @netcp_register_txhook(%struct.netcp_intf*, i32, i32, %struct.gbe_intf*) #1

declare dso_local i32 @netcp_register_rxhook(%struct.netcp_intf*, i32, i32, %struct.gbe_intf*) #1

declare dso_local i32 @netcp_ethss_update_link_state(%struct.gbe_priv*, %struct.gbe_slave*, %struct.net_device*) #1

declare dso_local i32 @gbe_register_cpts(%struct.gbe_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
