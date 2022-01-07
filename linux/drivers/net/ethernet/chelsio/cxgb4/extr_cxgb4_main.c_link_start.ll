; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_link_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.port_info = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@CXGB4_DCB_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @link_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.port_info* @netdev_priv(%struct.net_device* %6)
  store %struct.port_info* %7, %struct.port_info** %4, align 8
  %8 = load %struct.port_info*, %struct.port_info** %4, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.port_info*, %struct.port_info** %4, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.port_info*, %struct.port_info** %4, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @t4_set_rxmode(%struct.TYPE_4__* %15, i32 %16, i32 %19, i32 %22, i32 -1, i32 -1, i32 -1, i32 %31, i32 1)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load %struct.port_info*, %struct.port_info** %4, align 8
  %37 = load %struct.port_info*, %struct.port_info** %4, align 8
  %38 = getelementptr inbounds %struct.port_info, %struct.port_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.port_info*, %struct.port_info** %4, align 8
  %41 = getelementptr inbounds %struct.port_info, %struct.port_info* %40, i32 0, i32 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.port_info*, %struct.port_info** %4, align 8
  %46 = getelementptr inbounds %struct.port_info, %struct.port_info* %45, i32 0, i32 3
  %47 = call i32 @cxgb4_update_mac_filt(%struct.port_info* %36, i32 %39, i32* %41, i32 %44, i32 1, i32* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %35, %1
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.port_info*, %struct.port_info** %4, align 8
  %53 = getelementptr inbounds %struct.port_info, %struct.port_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.port_info*, %struct.port_info** %4, align 8
  %57 = getelementptr inbounds %struct.port_info, %struct.port_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.port_info*, %struct.port_info** %4, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 1
  %61 = call i32 @t4_link_l1cfg(%struct.TYPE_4__* %54, i32 %55, i32 %58, i32* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %51, %48
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = call i32 (...) @local_bh_disable()
  %67 = load %struct.port_info*, %struct.port_info** %4, align 8
  %68 = getelementptr inbounds %struct.port_info, %struct.port_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.port_info*, %struct.port_info** %4, align 8
  %72 = load i32, i32* @CXGB4_DCB_ENABLED, align 4
  %73 = call i32 @t4_enable_pi_params(%struct.TYPE_4__* %69, i32 %70, %struct.port_info* %71, i32 1, i32 1, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = call i32 (...) @local_bh_enable()
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t4_set_rxmode(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cxgb4_update_mac_filt(%struct.port_info*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @t4_link_l1cfg(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @t4_enable_pi_params(%struct.TYPE_4__*, i32, %struct.port_info*, i32, i32, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
