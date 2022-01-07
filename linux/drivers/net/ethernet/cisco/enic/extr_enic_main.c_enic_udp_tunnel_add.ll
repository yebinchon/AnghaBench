; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_udp_tunnel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_udp_tunnel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i32, i32 }
%struct.enic = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"udp_tnl: only vxlan tunnel offload supported\00", align 1
@ENIC_VXLAN_OUTER_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"vxlan: only IPv4 offload supported\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"vxlan: udp port already offloaded\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"vxlan: offload supported for only one UDP port\00", align 1
@RES_TYPE_WQ = common dso_local global i32 0, align 4
@ENIC_VXLAN_MULTI_WQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"vxlan: vxlan offload with multi wq not supported on this adapter\00", align 1
@OVERLAY_CFG_VXLAN_PORT_UPDATE = common dso_local global i32 0, align 4
@OVERLAY_FEATURE_VXLAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [67 x i8] c"vxlan fw-vers-%d: offload enabled for udp port: %d, sa_family: %d \00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"failed to offload udp port: %d, sa_family: %d, type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @enic_udp_tunnel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_udp_tunnel_add(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.enic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.enic* @netdev_priv(%struct.net_device* %8)
  store %struct.enic* %9, %struct.enic** %5, align 8
  %10 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %11 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.enic*, %struct.enic** %5, align 8
  %14 = getelementptr inbounds %struct.enic, %struct.enic* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %17 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UDP_TUNNEL_TYPE_VXLAN, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %123

24:                                               ; preds = %2
  %25 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %26 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %41 [
    i32 128, label %28
    i32 129, label %40
  ]

28:                                               ; preds = %24
  %29 = load %struct.enic*, %struct.enic** %5, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ENIC_VXLAN_OUTER_IPV6, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %123

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %24, %39
  br label %42

41:                                               ; preds = %24
  br label %123

42:                                               ; preds = %40
  %43 = load %struct.enic*, %struct.enic** %5, align 8
  %44 = getelementptr inbounds %struct.enic, %struct.enic* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = load %struct.enic*, %struct.enic** %5, align 8
  %52 = getelementptr inbounds %struct.enic, %struct.enic* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netdev_warn(%struct.net_device* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %62

59:                                               ; preds = %48
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  br label %123

63:                                               ; preds = %42
  %64 = load %struct.enic*, %struct.enic** %5, align 8
  %65 = getelementptr inbounds %struct.enic, %struct.enic* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RES_TYPE_WQ, align 4
  %68 = call i32 @vnic_dev_get_res_count(i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.enic*, %struct.enic** %5, align 8
  %72 = getelementptr inbounds %struct.enic, %struct.enic* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ENIC_VXLAN_MULTI_WQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %79, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %123

81:                                               ; preds = %70, %63
  %82 = load %struct.enic*, %struct.enic** %5, align 8
  %83 = getelementptr inbounds %struct.enic, %struct.enic* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @OVERLAY_CFG_VXLAN_PORT_UPDATE, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @ntohs(i32 %86)
  %88 = call i32 @vnic_dev_overlay_offload_cfg(i32 %84, i32 %85, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %123

92:                                               ; preds = %81
  %93 = load %struct.enic*, %struct.enic** %5, align 8
  %94 = getelementptr inbounds %struct.enic, %struct.enic* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @OVERLAY_FEATURE_VXLAN, align 4
  %97 = load %struct.enic*, %struct.enic** %5, align 8
  %98 = getelementptr inbounds %struct.enic, %struct.enic* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @vnic_dev_overlay_offload_ctrl(i32 %95, i32 %96, i64 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %123

105:                                              ; preds = %92
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ntohs(i32 %106)
  %108 = load %struct.enic*, %struct.enic** %5, align 8
  %109 = getelementptr inbounds %struct.enic, %struct.enic* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load %struct.enic*, %struct.enic** %5, align 8
  %113 = getelementptr inbounds %struct.enic, %struct.enic* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @ntohs(i32 %117)
  %119 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %120 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %111, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %118, i32 %121)
  br label %134

123:                                              ; preds = %104, %91, %78, %62, %41, %36, %21
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @ntohs(i32 %125)
  %127 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %128 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %131 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %123, %105
  %135 = load %struct.enic*, %struct.enic** %5, align 8
  %136 = getelementptr inbounds %struct.enic, %struct.enic* %135, i32 0, i32 0
  %137 = call i32 @spin_unlock_bh(i32* %136)
  ret void
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @vnic_dev_get_res_count(i32, i32) #1

declare dso_local i32 @vnic_dev_overlay_offload_cfg(i32, i32, i32) #1

declare dso_local i32 @vnic_dev_overlay_offload_ctrl(i32, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
