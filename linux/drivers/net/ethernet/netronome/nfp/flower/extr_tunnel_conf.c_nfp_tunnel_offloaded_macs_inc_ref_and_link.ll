; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_offloaded_macs_inc_ref_and_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_offloaded_macs_inc_ref_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_tun_offloaded_mac = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.nfp_flower_repr_priv = type { i32 }
%struct.nfp_repr = type { %struct.nfp_flower_repr_priv* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_tun_offloaded_mac*, %struct.net_device*, i32)* @nfp_tunnel_offloaded_macs_inc_ref_and_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_tunnel_offloaded_macs_inc_ref_and_link(%struct.nfp_tun_offloaded_mac* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_tun_offloaded_mac*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_flower_repr_priv*, align 8
  %8 = alloca %struct.nfp_repr*, align 8
  store %struct.nfp_tun_offloaded_mac* %0, %struct.nfp_tun_offloaded_mac** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %13)
  store %struct.nfp_repr* %14, %struct.nfp_repr** %8, align 8
  %15 = load %struct.nfp_repr*, %struct.nfp_repr** %8, align 8
  %16 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %15, i32 0, i32 0
  %17 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %16, align 8
  store %struct.nfp_flower_repr_priv* %17, %struct.nfp_flower_repr_priv** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %7, align 8
  %22 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  br label %24

24:                                               ; preds = %20, %12
  %25 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %7, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %25, i32 0, i32 0
  %27 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %4, align 8
  %28 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %27, i32 0, i32 2
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  br label %40

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i64 @nfp_flower_is_supported_bridge(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %4, align 8
  %36 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %4, align 8
  %42 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  ret void
}

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @nfp_flower_is_supported_bridge(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
