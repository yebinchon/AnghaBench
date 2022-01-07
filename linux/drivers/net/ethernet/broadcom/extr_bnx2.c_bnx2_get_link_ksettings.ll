; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }
%struct.bnx2 = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_2_5G_CAPABLE = common dso_local global i32 0, align 4
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@AUTONEG_SPEED = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_MDIX = common dso_local global i32 0, align 4
@ETH_TP_MDI_X = common dso_local global i32 0, align 4
@ETH_TP_MDI = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @bnx2_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.bnx2* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2* %11, %struct.bnx2** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @SUPPORTED_Autoneg, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PORT_FIBRE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %28

27:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %34 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BNX2_PHY_FLAG_2_5G_CAPABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %32
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %54 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SUPPORTED_TP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %52, %49
  %67 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %68 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %67, i32 0, i32 5
  %69 = call i32 @spin_lock_bh(i32* %68)
  %70 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %71 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %77 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %9, align 4
  %79 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %80 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AUTONEG_SPEED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %66
  %86 = load i32, i32* @AUTONEG_ENABLE, align 4
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 8
  br label %95

90:                                               ; preds = %66
  %91 = load i32, i32* @AUTONEG_DISABLE, align 4
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %93 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = call i64 @netif_carrier_ok(%struct.net_device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %95
  %100 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %101 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %104 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 8
  %106 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %107 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 4
  %112 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %113 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %136, label %118

118:                                              ; preds = %99
  %119 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %120 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BNX2_PHY_FLAG_MDIX, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32, i32* @ETH_TP_MDI_X, align 4
  %127 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %128 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 4
  br label %135

130:                                              ; preds = %118
  %131 = load i32, i32* @ETH_TP_MDI, align 4
  %132 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %133 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %99
  br label %146

137:                                              ; preds = %95
  %138 = load i32, i32* @SPEED_UNKNOWN, align 4
  %139 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %140 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %143 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %144 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %137, %136
  %147 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %148 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %147, i32 0, i32 5
  %149 = call i32 @spin_unlock_bh(i32* %148)
  %150 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %151 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %154 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 8
  %156 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %157 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %159, i32 %160)
  %162 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %163 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %165, i32 %166)
  ret i32 0
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
