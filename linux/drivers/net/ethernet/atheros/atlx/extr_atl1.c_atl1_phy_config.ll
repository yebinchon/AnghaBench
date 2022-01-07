; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { i32, i32, %struct.atl1_hw }
%struct.atl1_hw = type { i32, i32 }
%struct.timer_list = type { i32 }

@phy_config_timer = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_ATLX_CR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_CR_RESET = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@adapter = common dso_local global %struct.atl1_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @atl1_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_phy_config(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.atl1_adapter*, align 8
  %4 = alloca %struct.atl1_hw*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %7 = ptrtoint %struct.atl1_adapter* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @phy_config_timer, align 4
  %10 = call %struct.atl1_adapter* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.atl1_adapter* %10, %struct.atl1_adapter** %3, align 8
  %11 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %11, i32 0, i32 2
  store %struct.atl1_hw* %12, %struct.atl1_hw** %4, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %20 = load i32, i32* @MII_ADVERTISE, align 4
  %21 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %22 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @atl1_write_phy_reg(%struct.atl1_hw* %19, i32 %20, i32 %23)
  %25 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %26 = load i32, i32* @MII_ATLX_CR, align 4
  %27 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %28 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @atl1_write_phy_reg(%struct.atl1_hw* %25, i32 %26, i32 %29)
  %31 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %32 = load i32, i32* @MII_BMCR, align 4
  %33 = load i32, i32* @MII_CR_RESET, align 4
  %34 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @atl1_write_phy_reg(%struct.atl1_hw* %31, i32 %32, i32 %35)
  %37 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local %struct.atl1_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atl1_write_phy_reg(%struct.atl1_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
