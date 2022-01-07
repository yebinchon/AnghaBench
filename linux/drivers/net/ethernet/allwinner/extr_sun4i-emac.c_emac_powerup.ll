; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.emac_board_info = type { i64 }

@EMAC_RX_CTL_REG = common dso_local global i64 0, align 8
@EMAC_MAC_CTL0_REG = common dso_local global i64 0, align 8
@EMAC_MAC_CTL0_SOFT_RESET = common dso_local global i32 0, align 4
@EMAC_MAC_MCFG_REG = common dso_local global i64 0, align 8
@EMAC_RX_FBC_REG = common dso_local global i64 0, align 8
@EMAC_INT_CTL_REG = common dso_local global i64 0, align 8
@EMAC_INT_STA_REG = common dso_local global i64 0, align 8
@EMAC_MAC_A1_REG = common dso_local global i64 0, align 8
@EMAC_MAC_A0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_powerup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_board_info* %6, %struct.emac_board_info** %3, align 8
  %7 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %8 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %17 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = call i32 @udelay(i32 1)
  %23 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %24 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EMAC_MAC_CTL0_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @EMAC_MAC_CTL0_SOFT_RESET, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %35 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EMAC_MAC_CTL0_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %41 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EMAC_MAC_MCFG_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, -61
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, 52
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %52 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EMAC_MAC_MCFG_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %58 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EMAC_RX_FBC_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %64 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 0, i64 %67)
  %69 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %70 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EMAC_INT_STA_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %77 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EMAC_INT_STA_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = call i32 @udelay(i32 1)
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = call i32 @emac_setup(%struct.net_device* %83)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 16
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %90, %96
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %97, %102
  %104 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %105 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EMAC_MAC_A1_REG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %115, %121
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %122, %127
  %129 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %130 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @EMAC_MAC_A0_REG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = call i32 @mdelay(i32 1)
  ret i32 0
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @emac_setup(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
