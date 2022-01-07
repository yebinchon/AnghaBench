; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_fib_entry_op_gre4_rtdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_fib_entry_op_gre4_rtdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32, i32 }
%struct.ip_tunnel_parm = type { i32 }

@MLXSW_REG_RTDP_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RTDP_TYPE_IPIP = common dso_local global i32 0, align 4
@MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE_KEY = common dso_local global i32 0, align 4
@MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE = common dso_local global i32 0, align 4
@MLXSW_REG_RTDP_IPIP_SIP_CHECK_FILTER_IPV4 = common dso_local global i32 0, align 4
@rtdp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_ipip_entry*)* @mlxsw_sp_ipip_fib_entry_op_gre4_rtdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_fib_entry_op_gre4_rtdp(%struct.mlxsw_sp* %0, i32 %1, %struct.mlxsw_sp_ipip_entry* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ip_tunnel_parm, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_tunnel_parm, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlxsw_sp_ipip_entry* %2, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %17 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlxsw_sp_ipip_lb_rif_index(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlxsw_sp_ipip_lb_ul_rif_id(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MLXSW_REG_RTDP_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlxsw_sp_ipip_netdev_parms4(i32 %31)
  %33 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %16, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.ip_tunnel_parm* %11 to i8*
  %35 = bitcast %struct.ip_tunnel_parm* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlxsw_sp_ipip_parms4_has_ikey(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlxsw_sp_ipip_parms4_ikey(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @MLXSW_REG_RTDP_TYPE_IPIP, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mlxsw_reg_rtdp_pack(i8* %28, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mlxsw_reg_rtdp_egress_router_interface_set(i8* %28, i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE_KEY, align 4
  br label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %12, align 4
  %55 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mlxsw_sp_ipip_netdev_daddr4(i32 %57)
  %59 = call i32 @be32_to_cpu(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MLXSW_REG_RTDP_IPIP_SIP_CHECK_FILTER_IPV4, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @mlxsw_reg_rtdp_ipip4_pack(i8* %28, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @rtdp, align 4
  %71 = call i32 @MLXSW_REG(i32 %70)
  %72 = call i32 @mlxsw_reg_write(i32 %69, i32 %71, i8* %28)
  %73 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

declare dso_local i32 @mlxsw_sp_ipip_lb_rif_index(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_lb_ul_rif_id(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_sp_ipip_netdev_parms4(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @mlxsw_sp_ipip_parms4_has_ikey(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_parms4_ikey(i32) #1

declare dso_local i32 @mlxsw_reg_rtdp_pack(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_rtdp_egress_router_interface_set(i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_daddr4(i32) #1

declare dso_local i32 @mlxsw_reg_rtdp_ipip4_pack(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
