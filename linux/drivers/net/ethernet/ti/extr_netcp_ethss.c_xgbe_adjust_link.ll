; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_xgbe_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_xgbe_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netcp_intf = type { i32 }
%struct.gbe_intf = type { i32, i32 }

@xgbe_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xgbe_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netcp_intf*, align 8
  %4 = alloca %struct.gbe_intf*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %5)
  store %struct.netcp_intf* %6, %struct.netcp_intf** %3, align 8
  %7 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %8 = call %struct.gbe_intf* @netcp_module_get_intf_data(i32* @xgbe_module, %struct.netcp_intf* %7)
  store %struct.gbe_intf* %8, %struct.gbe_intf** %4, align 8
  %9 = load %struct.gbe_intf*, %struct.gbe_intf** %4, align 8
  %10 = icmp ne %struct.gbe_intf* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.gbe_intf*, %struct.gbe_intf** %4, align 8
  %14 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gbe_intf*, %struct.gbe_intf** %4, align 8
  %17 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @netcp_ethss_update_link_state(i32 %15, i32 %18, %struct.net_device* %19)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.gbe_intf* @netcp_module_get_intf_data(i32*, %struct.netcp_intf*) #1

declare dso_local i32 @netcp_ethss_update_link_state(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
