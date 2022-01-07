; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_udp_port_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_udp_port_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.bnx2x_udp_tunnel*, i32 }
%struct.bnx2x_udp_tunnel = type { i8*, i64 }
%struct.bnx2x_func_switch_update_params = type { i32, i8*, i8* }
%struct.bnx2x_func_state_params = type { i32, i32*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_switch_update_params }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@BNX2X_F_CMD_SWITCH_UPDATE = common dso_local global i32 0, align 4
@BNX2X_F_UPDATE_TUNNEL_CFG_CHNG = common dso_local global i32 0, align 4
@BNX2X_UDP_PORT_GENEVE = common dso_local global i64 0, align 8
@BNX2X_UDP_PORT_VXLAN = common dso_local global i64 0, align 8
@BNX2X_F_UPDATE_TUNNEL_INNER_RSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to set UDP dst port to %04x %04x (rc = 0x%x)\0A\00", align 1
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Configured UDP ports: Vxlan [%04x] Geneve [%04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_udp_port_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_udp_port_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_func_switch_update_params*, align 8
  %4 = alloca %struct.bnx2x_func_state_params, align 8
  %5 = alloca %struct.bnx2x_udp_tunnel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %9 = bitcast %struct.bnx2x_func_state_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 56, i1 false)
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.bnx2x_func_switch_update_params* %11, %struct.bnx2x_func_switch_update_params** %3, align 8
  %12 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %13 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 2
  %14 = call i32 @__set_bit(i32 %12, i32* %13)
  %15 = load i32, i32* @RAMROD_RETRY, align 4
  %16 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 2
  %17 = call i32 @__set_bit(i32 %15, i32* %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* @BNX2X_F_CMD_SWITCH_UPDATE, align 4
  %22 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @BNX2X_F_UPDATE_TUNNEL_CFG_CHNG, align 4
  %24 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %24, i32 0, i32 0
  %26 = call i32 @__set_bit(i32 %23, i32* %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %28, align 8
  %30 = load i64, i64* @BNX2X_UDP_PORT_GENEVE, align 8
  %31 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %29, i64 %30
  %32 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %1
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %37, align 8
  %39 = load i64, i64* @BNX2X_UDP_PORT_GENEVE, align 8
  %40 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %38, i64 %39
  store %struct.bnx2x_udp_tunnel* %40, %struct.bnx2x_udp_tunnel** %5, align 8
  %41 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %5, align 8
  %42 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %35, %1
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 0
  %50 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %49, align 8
  %51 = load i64, i64* @BNX2X_UDP_PORT_VXLAN, align 8
  %52 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %50, i64 %51
  %53 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 0
  %59 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %58, align 8
  %60 = load i64, i64* @BNX2X_UDP_PORT_VXLAN, align 8
  %61 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %59, i64 %60
  store %struct.bnx2x_udp_tunnel* %61, %struct.bnx2x_udp_tunnel** %5, align 8
  %62 = load %struct.bnx2x_udp_tunnel*, %struct.bnx2x_udp_tunnel** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2x_udp_tunnel, %struct.bnx2x_udp_tunnel* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %3, align 8
  %67 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %56, %47
  %69 = load i32, i32* @BNX2X_F_UPDATE_TUNNEL_INNER_RSS, align 4
  %70 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %3, align 8
  %71 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %70, i32 0, i32 0
  %72 = call i32 @__set_bit(i32 %69, i32* %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %74 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %73, %struct.bnx2x_func_state_params* %4)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %78, i8* %79, i32 %80)
  br label %87

82:                                               ; preds = %68
  %83 = load i32, i32* @BNX2X_MSG_SP, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @DP(i32 %83, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @bnx2x_func_state_change(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #2

declare dso_local i32 @BNX2X_ERR(i8*, i8*, i8*, i32) #2

declare dso_local i32 @DP(i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
