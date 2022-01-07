; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_udp_tunnel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_udp_tunnel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i32, i32 }
%struct.enic = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"udp_tnl: port:%d, sa_family: %d, type: %d not offloaded\00", align 1
@OVERLAY_FEATURE_VXLAN = common dso_local global i32 0, align 4
@OVERLAY_OFFLOAD_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"vxlan: del offload udp port: %d failed\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"vxlan: del offload udp port %d, family %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @enic_udp_tunnel_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_udp_tunnel_del(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.enic*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.enic* @netdev_priv(%struct.net_device* %7)
  store %struct.enic* %8, %struct.enic** %5, align 8
  %9 = load %struct.enic*, %struct.enic** %5, align 8
  %10 = getelementptr inbounds %struct.enic, %struct.enic* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %13 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ntohs(i32 %14)
  %16 = load %struct.enic*, %struct.enic** %5, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %23 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UDP_TUNNEL_TYPE_VXLAN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21, %2
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %30 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  %33 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %34 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %37 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.net_device*, i8*, i64, i32, ...) @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %35, i64 %38)
  br label %69

40:                                               ; preds = %21
  %41 = load %struct.enic*, %struct.enic** %5, align 8
  %42 = getelementptr inbounds %struct.enic, %struct.enic* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @OVERLAY_FEATURE_VXLAN, align 4
  %45 = load i32, i32* @OVERLAY_OFFLOAD_DISABLE, align 4
  %46 = call i32 @vnic_dev_overlay_offload_ctrl(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %52 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  %55 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %69

56:                                               ; preds = %40
  %57 = load %struct.enic*, %struct.enic** %5, align 8
  %58 = getelementptr inbounds %struct.enic, %struct.enic* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %62 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ntohs(i32 %63)
  %65 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %66 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.net_device*, i8*, i64, i32, ...) @netdev_info(%struct.net_device* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %56, %49, %27
  %70 = load %struct.enic*, %struct.enic** %5, align 8
  %71 = getelementptr inbounds %struct.enic, %struct.enic* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  ret void
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i32, ...) #1

declare dso_local i32 @vnic_dev_overlay_offload_ctrl(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
