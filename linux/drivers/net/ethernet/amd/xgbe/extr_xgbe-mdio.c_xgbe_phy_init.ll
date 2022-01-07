; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i64, i32, i32, i32, i64, %struct.ethtool_link_ksettings }
%struct.ethtool_link_ksettings = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@xgbe_an_irq_work = common dso_local global i32 0, align 4
@xgbe_an_state_machine = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE_ABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE_ERRABLE = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@supported = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  store %struct.ethtool_link_ksettings* %8, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 9
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 8
  %14 = load i32, i32* @xgbe_an_irq_work, align 4
  %15 = call i32 @INIT_WORK(i32* %13, i32 %14)
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 7
  %18 = load i32, i32* @xgbe_an_state_machine, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load i32, i32* @MDIO_MMD_PCS, align 4
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %24 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %25 = load i32, i32* @MDIO_PMA_10GBR_FECABLE, align 4
  %26 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %23, i32 %24, i32 %25)
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ABLE, align 4
  %30 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ERRABLE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %39, align 8
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = bitcast %struct.xgbe_prv_data* %41 to %struct.xgbe_prv_data.0*
  %43 = call i32 %40(%struct.xgbe_prv_data.0* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %154

48:                                               ; preds = %1
  %49 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %50 = load i32, i32* @advertising, align 4
  %51 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %52 = load i32, i32* @supported, align 4
  %53 = call i32 @XGBE_LM_COPY(%struct.ethtool_link_ksettings* %49, i32 %50, %struct.ethtool_link_ksettings* %51, i32 %52)
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %55 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %58 = load i32, i32* @Autoneg, align 4
  %59 = call i64 @XGBE_ADV(%struct.ethtool_link_ksettings* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %48
  %62 = load i32, i32* @AUTONEG_ENABLE, align 4
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 6
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @SPEED_UNKNOWN, align 4
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %68 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %72 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 8
  br label %88

74:                                               ; preds = %48
  %75 = load i32, i32* @AUTONEG_DISABLE, align 4
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %77 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 6
  store i32 %75, i32* %78, align 8
  %79 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %80 = call i32 @xgbe_phy_best_advertised_speed(%struct.xgbe_prv_data* %79)
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @DUPLEX_FULL, align 4
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %74, %61
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %93 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %96 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %99 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %102 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i64 %100, i64* %103, align 8
  %104 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %105 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %108 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  %110 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %111 = load i32, i32* @Pause, align 4
  %112 = call i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings* %110, i32 %111)
  %113 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %114 = load i32, i32* @Asym_Pause, align 4
  %115 = call i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings* %113, i32 %114)
  %116 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %117 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %88
  %121 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %122 = load i32, i32* @Pause, align 4
  %123 = call i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings* %121, i32 %122)
  %124 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %125 = load i32, i32* @Asym_Pause, align 4
  %126 = call i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings* %124, i32 %125)
  br label %127

127:                                              ; preds = %120, %88
  %128 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %129 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %134 = load i32, i32* @Asym_Pause, align 4
  %135 = call i64 @XGBE_ADV(%struct.ethtool_link_ksettings* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %139 = load i32, i32* @Asym_Pause, align 4
  %140 = call i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings* %138, i32 %139)
  br label %145

141:                                              ; preds = %132
  %142 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %143 = load i32, i32* @Asym_Pause, align 4
  %144 = call i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %127
  %147 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %148 = call i64 @netif_msg_drv(%struct.xgbe_prv_data* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %152 = call i32 @xgbe_dump_phy_registers(%struct.xgbe_prv_data* %151)
  br label %153

153:                                              ; preds = %150, %146
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %46
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGBE_LM_COPY(%struct.ethtool_link_ksettings*, i32, %struct.ethtool_link_ksettings*, i32) #1

declare dso_local i64 @XGBE_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @xgbe_phy_best_advertised_speed(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_dump_phy_registers(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
