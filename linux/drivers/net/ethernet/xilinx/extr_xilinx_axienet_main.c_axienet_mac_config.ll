; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phylink_link_state = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.axienet_local = type { i32 }

@XAE_EMMC_OFFSET = common dso_local global i32 0, align 4
@XAE_EMMC_LINKSPEED_MASK = common dso_local global i32 0, align 4
@XAE_EMMC_LINKSPD_1000 = common dso_local global i32 0, align 4
@XAE_EMMC_LINKSPD_100 = common dso_local global i32 0, align 4
@XAE_EMMC_LINKSPD_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Speed other than 10, 100 or 1Gbps is not supported\0A\00", align 1
@XAE_FCC_OFFSET = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@XAE_FCC_FCTX_MASK = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@XAE_FCC_FCRX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, %struct.phylink_link_state*)* @axienet_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_mac_config(%struct.phylink_config* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.phylink_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink_link_state*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.axienet_local*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %11 = load %struct.phylink_config*, %struct.phylink_config** %4, align 8
  %12 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net_device* @to_net_dev(i32 %13)
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %15)
  store %struct.axienet_local* %16, %struct.axienet_local** %8, align 8
  %17 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %18 = load i32, i32* @XAE_EMMC_OFFSET, align 4
  %19 = call i32 @axienet_ior(%struct.axienet_local* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @XAE_EMMC_LINKSPEED_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %25 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %39 [
    i32 128, label %27
    i32 129, label %31
    i32 130, label %35
  ]

27:                                               ; preds = %3
  %28 = load i32, i32* @XAE_EMMC_LINKSPD_1000, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %43

31:                                               ; preds = %3
  %32 = load i32, i32* @XAE_EMMC_LINKSPD_100, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %43

35:                                               ; preds = %3
  %36 = load i32, i32* @XAE_EMMC_LINKSPD_10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %43

39:                                               ; preds = %3
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %35, %31, %27
  %44 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %45 = load i32, i32* @XAE_EMMC_OFFSET, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @axienet_iow(%struct.axienet_local* %44, i32 %45, i32 %46)
  %48 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %49 = load i32, i32* @XAE_FCC_OFFSET, align 4
  %50 = call i32 @axienet_ior(%struct.axienet_local* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %52 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MLO_PAUSE_TX, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load i32, i32* @XAE_FCC_FCTX_MASK, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %66

61:                                               ; preds = %43
  %62 = load i32, i32* @XAE_FCC_FCTX_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %68 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MLO_PAUSE_RX, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @XAE_FCC_FCRX_MASK, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %82

77:                                               ; preds = %66
  %78 = load i32, i32* @XAE_FCC_FCRX_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %84 = load i32, i32* @XAE_FCC_OFFSET, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @axienet_iow(%struct.axienet_local* %83, i32 %84, i32 %85)
  ret void
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @axienet_ior(%struct.axienet_local*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @axienet_iow(%struct.axienet_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
