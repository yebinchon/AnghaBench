; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_net = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_L2MC = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"FW does not support promiscuous mode\0A\00", align 1
@NFP_NET_CFG_CTRL = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nfp_net_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %5)
  store %struct.nfp_net* %6, %struct.nfp_net** %3, align 8
  %7 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netdev_mc_empty(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_ALLMULTI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14, %1
  %22 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NFP_NET_CFG_CTRL_L2MC, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %14
  %30 = load i32, i32* @NFP_NET_CFG_CTRL_L2MC, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_PROMISC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %43 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NFP_NET_CFG_CTRL_PROMISC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @NFP_NET_CFG_CTRL_PROMISC, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %41
  %53 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %54 = call i32 @nn_warn(%struct.nfp_net* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  br label %61

56:                                               ; preds = %34
  %57 = load i32, i32* @NFP_NET_CFG_CTRL_PROMISC, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %55
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %64 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %81

69:                                               ; preds = %61
  %70 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %71 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @nn_writel(%struct.nfp_net* %70, i32 %71, i32 %72)
  %74 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %75 = load i32, i32* @NFP_NET_CFG_UPDATE_GEN, align 4
  %76 = call i32 @nfp_net_reconfig_post(%struct.nfp_net* %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %79 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %69, %68
  ret void
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @nn_warn(%struct.nfp_net*, i8*) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_reconfig_post(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
