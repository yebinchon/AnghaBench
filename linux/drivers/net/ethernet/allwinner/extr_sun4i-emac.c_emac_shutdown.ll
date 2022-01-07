; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_board_info = type { i64 }

@EMAC_INT_CTL_REG = common dso_local global i64 0, align 8
@EMAC_INT_STA_REG = common dso_local global i64 0, align 8
@EMAC_CTL_REG = common dso_local global i64 0, align 8
@EMAC_CTL_TX_EN = common dso_local global i32 0, align 4
@EMAC_CTL_RX_EN = common dso_local global i32 0, align 4
@EMAC_CTL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_shutdown(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_board_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_board_info* %6, %struct.emac_board_info** %4, align 8
  %7 = load %struct.emac_board_info*, %struct.emac_board_info** %4, align 8
  %8 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 0, i64 %11)
  %13 = load %struct.emac_board_info*, %struct.emac_board_info** %4, align 8
  %14 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EMAC_INT_STA_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.emac_board_info*, %struct.emac_board_info** %4, align 8
  %21 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EMAC_INT_STA_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.emac_board_info*, %struct.emac_board_info** %4, align 8
  %27 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EMAC_CTL_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @EMAC_CTL_TX_EN, align 4
  %33 = load i32, i32* @EMAC_CTL_RX_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @EMAC_CTL_RESET, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.emac_board_info*, %struct.emac_board_info** %4, align 8
  %42 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EMAC_CTL_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  ret void
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
