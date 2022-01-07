; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_mac_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_mac_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phylink_link_state = type { i32, i64, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.axienet_local = type { i32 }

@XAE_EMMC_OFFSET = common dso_local global i32 0, align 4
@XAE_EMMC_LINKSPD_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@XAE_EMMC_LINKSPD_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@XAE_FCC_OFFSET = common dso_local global i32 0, align 4
@XAE_FCC_FCTX_MASK = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@XAE_FCC_FCRX_MASK = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink_config*, %struct.phylink_link_state*)* @axienet_mac_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_mac_link_state(%struct.phylink_config* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.phylink_config*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.axienet_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %9 = load %struct.phylink_config*, %struct.phylink_config** %3, align 8
  %10 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net_device* @to_net_dev(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %13)
  store %struct.axienet_local* %14, %struct.axienet_local** %6, align 8
  %15 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %16 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %19 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %21 = load i32, i32* @XAE_EMMC_OFFSET, align 4
  %22 = call i32 @axienet_ior(%struct.axienet_local* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @XAE_EMMC_LINKSPD_1000, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @SPEED_1000, align 4
  %29 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %30 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @XAE_EMMC_LINKSPD_100, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @SPEED_100, align 4
  %38 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %39 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @SPEED_10, align 4
  %42 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %43 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %47 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %49 = load i32, i32* @XAE_FCC_OFFSET, align 4
  %50 = call i32 @axienet_ior(%struct.axienet_local* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @XAE_FCC_FCTX_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* @MLO_PAUSE_TX, align 4
  %57 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %58 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %45
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @XAE_FCC_FCRX_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @MLO_PAUSE_RX, align 4
  %68 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %69 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %74 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %76 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  ret i32 1
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @axienet_ior(%struct.axienet_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
