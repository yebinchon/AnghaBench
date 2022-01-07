; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_board_info = type { i32, i64 }

@EMAC_CTL_REG = common dso_local global i64 0, align 8
@EMAC_CTL_RESET = common dso_local global i32 0, align 4
@EMAC_CTL_TX_EN = common dso_local global i32 0, align 4
@EMAC_CTL_RX_EN = common dso_local global i32 0, align 4
@EMAC_INT_CTL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_init_device(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %6)
  store %struct.emac_board_info* %7, %struct.emac_board_info** %3, align 8
  %8 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %9 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @emac_update_speed(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @emac_update_duplex(%struct.net_device* %14)
  %16 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %17 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EMAC_CTL_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EMAC_CTL_RESET, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @EMAC_CTL_TX_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @EMAC_CTL_RX_EN, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %30 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EMAC_CTL_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %36 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, 271
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %45 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %51 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %50, i32 0, i32 0
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @emac_update_speed(%struct.net_device*) #1

declare dso_local i32 @emac_update_duplex(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
