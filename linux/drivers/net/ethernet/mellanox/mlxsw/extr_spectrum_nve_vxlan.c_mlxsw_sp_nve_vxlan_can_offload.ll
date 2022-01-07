; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp_nve_vxlan_can_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp_nve_vxlan_can_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_dev = type { %struct.vxlan_config }
%struct.vxlan_config = type { i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"VxLAN: Only IPv4 underlay is supported\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"VxLAN: Multicast destination IP is not supported\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"VxLAN: Source address must be specified\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"VxLAN: Local interface is not supported\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"VxLAN: Only default UDP source port range is supported\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"VxLAN: TOS must be configured to inherit\00", align 1
@VXLAN_F_TTL_INHERIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"VxLAN: TTL must not be configured to inherit\00", align 1
@VXLAN_F_UDP_ZERO_CSUM_TX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"VxLAN: UDP checksum is not supported\00", align 1
@MLXSW_SP_NVE_VXLAN_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"VxLAN: Unsupported flag\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"VxLAN: TTL must not be configured to 0\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"VxLAN: Flow label must be configured to 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_nve*, %struct.net_device*, %struct.netlink_ext_ack*)* @mlxsw_sp_nve_vxlan_can_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nve_vxlan_can_offload(%struct.mlxsw_sp_nve* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_nve*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.vxlan_dev*, align 8
  %9 = alloca %struct.vxlan_config*, align 8
  store %struct.mlxsw_sp_nve* %0, %struct.mlxsw_sp_nve** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.vxlan_dev* %11, %struct.vxlan_dev** %8, align 8
  %12 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %13 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %12, i32 0, i32 0
  store %struct.vxlan_config* %13, %struct.vxlan_config** %9, align 8
  %14 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %15 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %23 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

24:                                               ; preds = %3
  %25 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %26 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %25, i32 0, i32 8
  %27 = call i64 @vxlan_addr_multicast(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %31 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

32:                                               ; preds = %24
  %33 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %34 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %33, i32 0, i32 7
  %35 = call i64 @vxlan_addr_any(%struct.TYPE_4__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %39 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

40:                                               ; preds = %32
  %41 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %42 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %47 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

48:                                               ; preds = %40
  %49 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %50 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %55 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %48
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %60 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %59, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

61:                                               ; preds = %53
  %62 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %63 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %68 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

69:                                               ; preds = %61
  %70 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %71 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @VXLAN_F_TTL_INHERIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %78 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

79:                                               ; preds = %69
  %80 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %81 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VXLAN_F_UDP_ZERO_CSUM_TX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %88 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

89:                                               ; preds = %79
  %90 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %91 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MLXSW_SP_NVE_VXLAN_SUPPORTED_FLAGS, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %99 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

100:                                              ; preds = %89
  %101 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %102 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %107 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

108:                                              ; preds = %100
  %109 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %110 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %115 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

116:                                              ; preds = %108
  store i32 1, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %113, %105, %97, %86, %76, %66, %58, %45, %37, %29, %21
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @vxlan_addr_multicast(i32*) #1

declare dso_local i64 @vxlan_addr_any(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
