; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_update_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_update_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_board_info = type { i64, i64 }

@EMAC_MAC_SUPP_REG = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_update_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_update_speed(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_board_info* %6, %struct.emac_board_info** %3, align 8
  %7 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %8 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EMAC_MAC_SUPP_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, -257
  store i32 %14, i32* %4, align 4
  %15 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %16 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPEED_100, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 256
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %26 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EMAC_MAC_SUPP_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  ret void
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
