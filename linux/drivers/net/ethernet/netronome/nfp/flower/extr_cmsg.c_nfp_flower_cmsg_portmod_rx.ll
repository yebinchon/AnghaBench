; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portmod_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portmod_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_portmod = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@NFP_FLOWER_CMSG_PORTMOD_INFO_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ctrl msg for unknown port 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.sk_buff*)* @nfp_flower_cmsg_portmod_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_cmsg_portmod_rx(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_flower_cmsg_portmod*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.nfp_flower_cmsg_portmod* @nfp_flower_cmsg_get_data(%struct.sk_buff* %9)
  store %struct.nfp_flower_cmsg_portmod* %10, %struct.nfp_flower_cmsg_portmod** %5, align 8
  %11 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NFP_FLOWER_CMSG_PORTMOD_INFO_LINK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = call i32 (...) @rtnl_lock()
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %19 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %5, align 8
  %20 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = call %struct.net_device* @nfp_app_dev_get(%struct.nfp_app* %18, i32 %22, i32* null)
  store %struct.net_device* %23, %struct.net_device** %6, align 8
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %29 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 (...) @rtnl_unlock()
  br label %57

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %5, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @be16_to_cpu(i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @netif_carrier_on(%struct.net_device* %43)
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @dev_set_mtu(%struct.net_device* %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %38
  br label %55

52:                                               ; preds = %35
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @netif_carrier_off(%struct.net_device* %53)
  br label %55

55:                                               ; preds = %52, %51
  %56 = call i32 (...) @rtnl_unlock()
  br label %57

57:                                               ; preds = %55, %27
  ret void
}

declare dso_local %struct.nfp_flower_cmsg_portmod* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @nfp_app_dev_get(%struct.nfp_app*, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i64) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
