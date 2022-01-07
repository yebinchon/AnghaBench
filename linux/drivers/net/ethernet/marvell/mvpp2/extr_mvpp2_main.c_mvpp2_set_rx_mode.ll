; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.mvpp2_port = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@MVPP2_PRS_MAC_UC_FILT_MAX = common dso_local global i64 0, align 8
@MVPP2_PRS_L2_UNI_CAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MVPP2_PRS_L2_MULTI_CAST = common dso_local global i32 0, align 4
@MVPP2_PRS_MAC_MC_FILT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mvpp2_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mvpp2_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %4)
  store %struct.mvpp2_port* %5, %struct.mvpp2_port** %3, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %7 = call i32 @mvpp2_prs_mac_del_all(%struct.mvpp2_port* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IFF_PROMISC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %16 = call i32 @mvpp2_set_rx_promisc(%struct.mvpp2_port* %15, i32 1)
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %19 = call i32 @mvpp2_set_rx_promisc(%struct.mvpp2_port* %18, i32 0)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i64 @netdev_uc_count(%struct.net_device* %20)
  %22 = load i64, i64* @MVPP2_PRS_MAC_UC_FILT_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 2
  %28 = call i64 @mvpp2_prs_mac_da_accept_list(%struct.mvpp2_port* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24, %17
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %32 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %35 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MVPP2_PRS_L2_UNI_CAST, align 4
  %38 = call i32 @mvpp2_prs_mac_promisc_set(i32 %33, i32 %36, i32 %37, i32 1)
  br label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %48 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %51 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MVPP2_PRS_L2_MULTI_CAST, align 4
  %54 = call i32 @mvpp2_prs_mac_promisc_set(i32 %49, i32 %52, i32 %53, i32 1)
  br label %75

55:                                               ; preds = %39
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i64 @netdev_mc_count(%struct.net_device* %56)
  %58 = load i64, i64* @MVPP2_PRS_MAC_MC_FILT_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = call i64 @mvpp2_prs_mac_da_accept_list(%struct.mvpp2_port* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60, %55
  %67 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %68 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %71 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MVPP2_PRS_L2_MULTI_CAST, align 4
  %74 = call i32 @mvpp2_prs_mac_promisc_set(i32 %69, i32 %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %14, %46, %66, %60
  ret void
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp2_prs_mac_del_all(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_set_rx_promisc(%struct.mvpp2_port*, i32) #1

declare dso_local i64 @netdev_uc_count(%struct.net_device*) #1

declare dso_local i64 @mvpp2_prs_mac_da_accept_list(%struct.mvpp2_port*, i32*) #1

declare dso_local i32 @mvpp2_prs_mac_promisc_set(i32, i32, i32, i32) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
