; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64, i64 }
%struct.bcmgenet_priv = type { i64, i64, i64, i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@UMAC_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@UMAC_SPEED_100 = common dso_local global i32 0, align 4
@UMAC_SPEED_10 = common dso_local global i32 0, align 4
@CMD_SPEED_SHIFT = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@CMD_HD_EN = common dso_local global i32 0, align 4
@CMD_RX_PAUSE_IGNORE = common dso_local global i32 0, align 4
@CMD_TX_PAUSE_IGNORE = common dso_local global i32 0, align 4
@EXT_RGMII_OOB_CTRL = common dso_local global i32 0, align 4
@OOB_DISABLE = common dso_local global i32 0, align 4
@RGMII_LINK = common dso_local global i32 0, align 4
@UMAC_CMD = common dso_local global i32 0, align 4
@CMD_SPEED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcmgenet_mii_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcmgenet_priv* %9, %struct.bcmgenet_priv** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %157

31:                                               ; preds = %26
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %33 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  %40 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %44 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %47 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %58 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %45
  %60 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %61 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %72 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %59
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %167

77:                                               ; preds = %73
  %78 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %79 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SPEED_1000, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @UMAC_SPEED_1000, align 4
  store i32 %84, i32* %6, align 4
  br label %96

85:                                               ; preds = %77
  %86 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %87 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SPEED_100, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @UMAC_SPEED_100, align 4
  store i32 %92, i32* %6, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @UMAC_SPEED_10, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %91
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32, i32* @CMD_SPEED_SHIFT, align 4
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %101 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DUPLEX_FULL, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @CMD_HD_EN, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %96
  %110 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %111 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @CMD_RX_PAUSE_IGNORE, align 4
  %116 = load i32, i32* @CMD_TX_PAUSE_IGNORE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %114, %109
  %121 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %122 = load i32, i32* @EXT_RGMII_OOB_CTRL, align 4
  %123 = call i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv* %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @OOB_DISABLE, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @RGMII_LINK, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @EXT_RGMII_OOB_CTRL, align 4
  %134 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %131, i32 %132, i32 %133)
  %135 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %136 = load i32, i32* @UMAC_CMD, align 4
  %137 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %135, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @CMD_SPEED_MASK, align 4
  %139 = load i32, i32* @CMD_SPEED_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* @CMD_HD_EN, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @CMD_RX_PAUSE_IGNORE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @CMD_TX_PAUSE_IGNORE, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @UMAC_CMD, align 4
  %156 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %153, i32 %154, i32 %155)
  br label %164

157:                                              ; preds = %26
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %167

161:                                              ; preds = %157
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = call i32 @netif_carrier_off(%struct.net_device* %162)
  br label %164

164:                                              ; preds = %161, %120
  %165 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %166 = call i32 @phy_print_status(%struct.phy_device* %165)
  br label %167

167:                                              ; preds = %164, %160, %76
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
