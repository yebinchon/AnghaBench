; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_tunnel_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_tunnel_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tc_actions = type { i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32 }
%struct.flow_action_entry = type { %struct.ip_tunnel_info* }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"only IPv4 tunnel-encap is supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_actions*, %struct.flow_action_entry*)* @bnxt_tc_parse_tunnel_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_parse_tunnel_set(%struct.bnxt* %0, %struct.bnxt_tc_actions* %1, %struct.flow_action_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_tc_actions*, align 8
  %7 = alloca %struct.flow_action_entry*, align 8
  %8 = alloca %struct.ip_tunnel_info*, align 8
  %9 = alloca %struct.ip_tunnel_key*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_tc_actions* %1, %struct.bnxt_tc_actions** %6, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %7, align 8
  %10 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %11 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %10, i32 0, i32 0
  %12 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  store %struct.ip_tunnel_info* %12, %struct.ip_tunnel_info** %8, align 8
  %13 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %14 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %13, i32 0, i32 0
  store %struct.ip_tunnel_key* %14, %struct.ip_tunnel_key** %9, align 8
  %15 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %16 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %15)
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netdev_info(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %27, i32 0, i32 1
  %29 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %30 = bitcast %struct.ip_tunnel_key* %28 to i8*
  %31 = bitcast %struct.ip_tunnel_key* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP, align 4
  %33 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %34 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
