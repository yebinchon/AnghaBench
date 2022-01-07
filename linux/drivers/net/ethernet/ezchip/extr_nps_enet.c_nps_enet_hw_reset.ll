; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nps_enet_priv = type { i32 }

@NPS_ENET_ENABLE = common dso_local global i32 0, align 4
@RST_GMAC_0_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_GE_RST = common dso_local global i32 0, align 4
@PHASE_FIFO_CTL_RST_SHIFT = common dso_local global i32 0, align 4
@PHASE_FIFO_CTL_INIT_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_PHASE_FIFO_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nps_enet_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nps_enet_hw_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nps_enet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.nps_enet_priv* %7, %struct.nps_enet_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %9 = load i32, i32* @RST_GMAC_0_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %14 = load i32, i32* @NPS_ENET_REG_GE_RST, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %13, i32 %14, i32 %15)
  %17 = call i32 @usleep_range(i32 10, i32 20)
  store i32 0, i32* %4, align 4
  %18 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %19 = load i32, i32* @NPS_ENET_REG_GE_RST, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %23 = load i32, i32* @PHASE_FIFO_CTL_RST_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %28 = load i32, i32* @PHASE_FIFO_CTL_INIT_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %33 = load i32, i32* @NPS_ENET_REG_PHASE_FIFO_CTL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %32, i32 %33, i32 %34)
  %36 = call i32 @usleep_range(i32 10, i32 20)
  store i32 0, i32* %5, align 4
  %37 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %38 = load i32, i32* @NPS_ENET_REG_PHASE_FIFO_CTL, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
