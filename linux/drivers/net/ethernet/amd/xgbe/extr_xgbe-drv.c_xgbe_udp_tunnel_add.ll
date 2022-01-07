; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_udp_tunnel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_udp_tunnel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i32, i32 }
%struct.xgbe_prv_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xgbe_vxlan_data = type { i32, i32, i32 }

@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"adding VXLAN tunnel, family=%hx/port=%hx\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"internal error, disabling VXLAN accelerations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @xgbe_udp_tunnel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_udp_tunnel_add(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.xgbe_vxlan_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %7)
  store %struct.xgbe_prv_data* %8, %struct.xgbe_prv_data** %5, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %17 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UDP_TUNNEL_TYPE_VXLAN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %80

22:                                               ; preds = %15
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %28 = load i32, i32* @drv, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %31 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %34 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = call i32 (%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %80

43:                                               ; preds = %22
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.xgbe_vxlan_data* @kzalloc(i32 12, i32 %44)
  store %struct.xgbe_vxlan_data* %45, %struct.xgbe_vxlan_data** %6, align 8
  %46 = load %struct.xgbe_vxlan_data*, %struct.xgbe_vxlan_data** %6, align 8
  %47 = icmp ne %struct.xgbe_vxlan_data* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %52 = load i32, i32* @drv, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 (%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %51, i32 %52, %struct.net_device* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %56 = call i32 @xgbe_disable_vxlan_accel(%struct.xgbe_prv_data* %55)
  br label %80

57:                                               ; preds = %43
  %58 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %59 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xgbe_vxlan_data*, %struct.xgbe_vxlan_data** %6, align 8
  %62 = getelementptr inbounds %struct.xgbe_vxlan_data, %struct.xgbe_vxlan_data* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %64 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.xgbe_vxlan_data*, %struct.xgbe_vxlan_data** %6, align 8
  %67 = getelementptr inbounds %struct.xgbe_vxlan_data, %struct.xgbe_vxlan_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.xgbe_vxlan_data*, %struct.xgbe_vxlan_data** %6, align 8
  %69 = getelementptr inbounds %struct.xgbe_vxlan_data, %struct.xgbe_vxlan_data* %68, i32 0, i32 0
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 2
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %74 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %57
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %79 = call i32 @xgbe_enable_vxlan_accel(%struct.xgbe_prv_data* %78)
  br label %80

80:                                               ; preds = %14, %21, %42, %48, %77, %57
  ret void
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.xgbe_vxlan_data* @kzalloc(i32, i32) #1

declare dso_local i32 @xgbe_disable_vxlan_accel(%struct.xgbe_prv_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @xgbe_enable_vxlan_accel(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
