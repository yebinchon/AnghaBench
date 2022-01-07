; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.rmnet_priv = type { %struct.net_device* }
%struct.rmnet_endpoint = type { i32 }
%struct.rmnet_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.list_head*)* @rmnet_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmnet_dellink(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.rmnet_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.rmnet_endpoint*, align 8
  %8 = alloca %struct.rmnet_port*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.rmnet_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.rmnet_priv* %11, %struct.rmnet_priv** %5, align 8
  %12 = load %struct.rmnet_priv*, %struct.rmnet_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i32 @rmnet_is_real_dev_registered(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %2
  br label %52

22:                                               ; preds = %17
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device* %23)
  store %struct.rmnet_port* %24, %struct.rmnet_port** %8, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @rmnet_vnd_get_mux(%struct.net_device* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.rmnet_port*, %struct.rmnet_port** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port* %27, i32 %28)
  store %struct.rmnet_endpoint* %29, %struct.rmnet_endpoint** %7, align 8
  %30 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %7, align 8
  %31 = icmp ne %struct.rmnet_endpoint* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %7, align 8
  %34 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %33, i32 0, i32 0
  %35 = call i32 @hlist_del_init_rcu(i32* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load %struct.rmnet_port*, %struct.rmnet_port** %8, align 8
  %38 = call i32 @rmnet_unregister_bridge(%struct.net_device* %36, %struct.rmnet_port* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.rmnet_port*, %struct.rmnet_port** %8, align 8
  %41 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %7, align 8
  %42 = call i32 @rmnet_vnd_dellink(i32 %39, %struct.rmnet_port* %40, %struct.rmnet_endpoint* %41)
  %43 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %7, align 8
  %44 = call i32 @kfree(%struct.rmnet_endpoint* %43)
  br label %45

45:                                               ; preds = %32, %22
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = load %struct.rmnet_port*, %struct.rmnet_port** %8, align 8
  %48 = call i32 @rmnet_unregister_real_device(%struct.net_device* %46, %struct.rmnet_port* %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load %struct.list_head*, %struct.list_head** %4, align 8
  %51 = call i32 @unregister_netdevice_queue(%struct.net_device* %49, %struct.list_head* %50)
  br label %52

52:                                               ; preds = %45, %21
  ret void
}

declare dso_local %struct.rmnet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rmnet_is_real_dev_registered(%struct.net_device*) #1

declare dso_local %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device*) #1

declare dso_local i32 @rmnet_vnd_get_mux(%struct.net_device*) #1

declare dso_local %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port*, i32) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @rmnet_unregister_bridge(%struct.net_device*, %struct.rmnet_port*) #1

declare dso_local i32 @rmnet_vnd_dellink(i32, %struct.rmnet_port*, %struct.rmnet_endpoint*) #1

declare dso_local i32 @kfree(%struct.rmnet_endpoint*) #1

declare dso_local i32 @rmnet_unregister_real_device(%struct.net_device*, %struct.rmnet_port*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
