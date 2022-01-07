; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_ol_netdev_change_gre4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_ol_netdev_change_gre4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { %struct.ip_tunnel_parm, i32 }
%struct.ip_tunnel_parm = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*, %struct.netlink_ext_ack*)* @mlxsw_sp_ipip_ol_netdev_change_gre4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_ol_netdev_change_gre4(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_ipip_entry* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %union.mlxsw_sp_l3addr, align 4
  %9 = alloca %union.mlxsw_sp_l3addr, align 4
  %10 = alloca %union.mlxsw_sp_l3addr, align 4
  %11 = alloca %union.mlxsw_sp_l3addr, align 4
  %12 = alloca %struct.ip_tunnel_parm, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ip_tunnel_parm, align 8
  %18 = alloca %union.mlxsw_sp_l3addr, align 4
  %19 = alloca %union.mlxsw_sp_l3addr, align 4
  %20 = alloca %union.mlxsw_sp_l3addr, align 4
  %21 = alloca %union.mlxsw_sp_l3addr, align 4
  %22 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_ipip_entry* %1, %struct.mlxsw_sp_ipip_entry** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @mlxsw_sp_ipip_netdev_parms4(i32 %25)
  %27 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %17, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = bitcast %struct.ip_tunnel_parm* %12 to i8*
  %29 = bitcast %struct.ip_tunnel_parm* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %12, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @mlxsw_sp_ipip_parms4_saddr(i64 %31)
  %33 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %18, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %union.mlxsw_sp_l3addr* %9 to i8*
  %35 = bitcast %union.mlxsw_sp_l3addr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mlxsw_sp_ipip_parms4_saddr(i64 %39)
  %41 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %19, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %union.mlxsw_sp_l3addr* %8 to i8*
  %43 = bitcast %union.mlxsw_sp_l3addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %12, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @mlxsw_sp_ipip_parms4_daddr(i64 %45)
  %47 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %20, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = bitcast %union.mlxsw_sp_l3addr* %11 to i8*
  %49 = bitcast %union.mlxsw_sp_l3addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @mlxsw_sp_ipip_parms4_daddr(i64 %53)
  %55 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %21, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = bitcast %union.mlxsw_sp_l3addr* %10 to i8*
  %57 = bitcast %union.mlxsw_sp_l3addr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = call i32 @mlxsw_sp_l3addr_eq(%union.mlxsw_sp_l3addr* %9, %union.mlxsw_sp_l3addr* %8)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %3
  %61 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mlxsw_sp_ipip_dev_ul_tb_id(i32 %63)
  store i32 %64, i32* %22, align 4
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %66 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %67 = load i32, i32* %22, align 4
  %68 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %69 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @mlxsw_sp_ipip_demote_tunnel_by_saddr(%struct.mlxsw_sp* %65, i32 %66, i32 %70, i32 %67, %struct.mlxsw_sp_ipip_entry* %68)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %75 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %76 = call i32 @mlxsw_sp_ipip_entry_demote_tunnel(%struct.mlxsw_sp* %74, %struct.mlxsw_sp_ipip_entry* %75)
  store i32 0, i32* %4, align 4
  br label %147

77:                                               ; preds = %60
  store i32 1, i32* %13, align 4
  br label %115

78:                                               ; preds = %3
  %79 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @mlxsw_sp_ipip_parms4_okey(i64 %82)
  %84 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @mlxsw_sp_ipip_parms4_okey(i64 %85)
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %78
  %89 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %12, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %78
  store i32 1, i32* %13, align 4
  br label %114

97:                                               ; preds = %88
  %98 = call i32 @mlxsw_sp_l3addr_eq(%union.mlxsw_sp_l3addr* %11, %union.mlxsw_sp_l3addr* %10)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 1, i32* %15, align 4
  br label %113

101:                                              ; preds = %97
  %102 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @mlxsw_sp_ipip_parms4_ikey(i64 %105)
  %107 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %12, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @mlxsw_sp_ipip_parms4_ikey(i64 %108)
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %101
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114, %77
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %120 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %121 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %122 = call i32 @__mlxsw_sp_ipip_entry_update_tunnel(%struct.mlxsw_sp* %119, %struct.mlxsw_sp_ipip_entry* %120, i32 1, i32 1, i32 1, %struct.netlink_ext_ack* %121)
  store i32 %122, i32* %16, align 4
  br label %141

123:                                              ; preds = %115
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %128 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %129 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %130 = call i32 @__mlxsw_sp_ipip_entry_update_tunnel(%struct.mlxsw_sp* %127, %struct.mlxsw_sp_ipip_entry* %128, i32 0, i32 0, i32 1, %struct.netlink_ext_ack* %129)
  store i32 %130, i32* %16, align 4
  br label %140

131:                                              ; preds = %123
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %136 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %137 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %138 = call i32 @__mlxsw_sp_ipip_entry_update_tunnel(%struct.mlxsw_sp* %135, %struct.mlxsw_sp_ipip_entry* %136, i32 0, i32 0, i32 0, %struct.netlink_ext_ack* %137)
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %134, %131
  br label %140

140:                                              ; preds = %139, %126
  br label %141

141:                                              ; preds = %140, %118
  %142 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %143 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %142, i32 0, i32 0
  %144 = bitcast %struct.ip_tunnel_parm* %143 to i8*
  %145 = bitcast %struct.ip_tunnel_parm* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 8, i1 false)
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %141, %73
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i64 @mlxsw_sp_ipip_netdev_parms4(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_sp_ipip_parms4_saddr(i64) #1

declare dso_local i32 @mlxsw_sp_ipip_parms4_daddr(i64) #1

declare dso_local i32 @mlxsw_sp_l3addr_eq(%union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr*) #1

declare dso_local i32 @mlxsw_sp_ipip_dev_ul_tb_id(i32) #1

declare dso_local i64 @mlxsw_sp_ipip_demote_tunnel_by_saddr(%struct.mlxsw_sp*, i32, i32, i32, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_demote_tunnel(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i64 @mlxsw_sp_ipip_parms4_okey(i64) #1

declare dso_local i64 @mlxsw_sp_ipip_parms4_ikey(i64) #1

declare dso_local i32 @__mlxsw_sp_ipip_entry_update_tunnel(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*, i32, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
