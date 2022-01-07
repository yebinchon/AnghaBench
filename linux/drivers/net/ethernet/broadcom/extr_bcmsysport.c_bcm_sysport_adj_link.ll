; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_adj_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_adj_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32, i64 }
%struct.bcm_sysport_priv = type { i64, i64, i64, i64 }

@CMD_SPEED_2500 = common dso_local global i32 0, align 4
@CMD_SPEED_1000 = common dso_local global i32 0, align 4
@CMD_SPEED_100 = common dso_local global i32 0, align 4
@CMD_SPEED_10 = common dso_local global i32 0, align 4
@CMD_SPEED_SHIFT = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@CMD_HD_EN = common dso_local global i32 0, align 4
@CMD_RX_PAUSE_IGNORE = common dso_local global i32 0, align 4
@CMD_TX_PAUSE_IGNORE = common dso_local global i32 0, align 4
@UMAC_CMD = common dso_local global i32 0, align 4
@CMD_SPEED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcm_sysport_adj_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_adj_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcm_sysport_priv* %9, %struct.bcm_sysport_priv** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %28 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %39 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %42 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %130

46:                                               ; preds = %40
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %58 [
    i32 128, label %50
    i32 129, label %52
    i32 130, label %54
    i32 131, label %56
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @CMD_SPEED_2500, align 4
  store i32 %51, i32* %6, align 4
  br label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @CMD_SPEED_1000, align 4
  store i32 %53, i32* %6, align 4
  br label %59

54:                                               ; preds = %46
  %55 = load i32, i32* @CMD_SPEED_100, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @CMD_SPEED_10, align 4
  store i32 %57, i32* %6, align 4
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %56, %54, %52, %50
  %60 = load i32, i32* @CMD_SPEED_SHIFT, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DUPLEX_HALF, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @CMD_HD_EN, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %74 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  %81 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %82 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %85 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @CMD_RX_PAUSE_IGNORE, align 4
  %93 = load i32, i32* @CMD_TX_PAUSE_IGNORE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %136

101:                                              ; preds = %97
  %102 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %108 = load i32, i32* @UMAC_CMD, align 4
  %109 = call i32 @umac_readl(%struct.bcm_sysport_priv* %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @CMD_SPEED_MASK, align 4
  %111 = load i32, i32* @CMD_SPEED_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* @CMD_HD_EN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @CMD_RX_PAUSE_IGNORE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @CMD_TX_PAUSE_IGNORE, align 4
  %118 = or i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @UMAC_CMD, align 4
  %128 = call i32 @umac_writel(%struct.bcm_sysport_priv* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %106, %101
  br label %130

130:                                              ; preds = %129, %45
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %135 = call i32 @phy_print_status(%struct.phy_device* %134)
  br label %136

136:                                              ; preds = %100, %133, %130
  ret void
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @umac_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @umac_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
