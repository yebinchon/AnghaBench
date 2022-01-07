; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_type_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_type_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.fib_entry_notifier_info = type { i32, %struct.fib_info*, i32, i32 }
%struct.fib_info = type { i32 }
%struct.mlxsw_sp_fib_entry = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device* }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP = common dso_local global i8* null, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP = common dso_local global i8* null, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_TRAP = common dso_local global i8* null, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE = common dso_local global i8* null, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_LOCAL = common dso_local global i8* null, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_REMOTE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.fib_entry_notifier_info*, %struct.mlxsw_sp_fib_entry*)* @mlxsw_sp_fib4_entry_type_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fib4_entry_type_set(%struct.mlxsw_sp* %0, %struct.fib_entry_notifier_info* %1, %struct.mlxsw_sp_fib_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.fib_entry_notifier_info*, align 8
  %7 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %union.mlxsw_sp_l3addr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %12 = alloca %struct.fib_info*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.fib_entry_notifier_info* %1, %struct.fib_entry_notifier_info** %6, align 8
  store %struct.mlxsw_sp_fib_entry* %2, %struct.mlxsw_sp_fib_entry** %7, align 8
  %14 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %6, align 8
  %15 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %14, i32 0, i32 1
  %16 = load %struct.fib_info*, %struct.fib_info** %15, align 8
  %17 = call %struct.TYPE_6__* @fib_info_nh(%struct.fib_info* %16, i32 0)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = bitcast %union.mlxsw_sp_l3addr* %9 to i32*
  %21 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %6, align 8
  %22 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @htonl(i32 %23)
  store i32 %24, i32* %20, align 4
  %25 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %6, align 8
  %26 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mlxsw_sp_fix_tb_id(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %6, align 8
  %30 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %29, i32 0, i32 1
  %31 = load %struct.fib_info*, %struct.fib_info** %30, align 8
  store %struct.fib_info* %31, %struct.fib_info** %12, align 8
  %32 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %6, align 8
  %33 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %105 [
    i32 131, label %35
    i32 132, label %79
    i32 133, label %83
    i32 128, label %87
    i32 130, label %87
    i32 129, label %91
  ]

35:                                               ; preds = %3
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %39 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_decap(%struct.mlxsw_sp* %36, %struct.net_device* %37, i32 %38, i32 %40)
  store %struct.mlxsw_sp_ipip_entry* %41, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %42 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %43 = icmp ne %struct.mlxsw_sp_ipip_entry* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP, align 8
  %55 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %58 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %59 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %60 = call i32 @mlxsw_sp_fib_entry_decap_init(%struct.mlxsw_sp* %57, %struct.mlxsw_sp_fib_entry* %58, %struct.mlxsw_sp_ipip_entry* %59)
  store i32 %60, i32* %4, align 4
  br label %108

61:                                               ; preds = %44, %35
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = bitcast %union.mlxsw_sp_l3addr* %9 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mlxsw_sp_nve_ipv4_route_is_decap(%struct.mlxsw_sp* %62, i32 %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %70 = call i32 @mlxsw_sp_nve_decap_tunnel_index_get(%struct.mlxsw_sp* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP, align 8
  %76 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %4, align 4
  br label %108

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %3, %78
  %80 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_TRAP, align 8
  %81 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %4, align 4
  br label %108

83:                                               ; preds = %3
  %84 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE, align 8
  %85 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  store i32 0, i32* %4, align 4
  br label %108

87:                                               ; preds = %3, %3
  %88 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_LOCAL, align 8
  %89 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  store i32 0, i32* %4, align 4
  br label %108

91:                                               ; preds = %3
  %92 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %93 = load %struct.fib_info*, %struct.fib_info** %12, align 8
  %94 = call i32 @mlxsw_sp_fi_is_gateway(%struct.mlxsw_sp* %92, %struct.fib_info* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_REMOTE, align 8
  %98 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %104

100:                                              ; preds = %91
  %101 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_LOCAL, align 8
  %102 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %7, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %100, %96
  store i32 0, i32* %4, align 4
  br label %108

105:                                              ; preds = %3
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %104, %87, %83, %79, %68, %53
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_6__* @fib_info_nh(%struct.fib_info*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mlxsw_sp_fix_tb_id(i32) #1

declare dso_local %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_decap(%struct.mlxsw_sp*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_decap_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @mlxsw_sp_nve_ipv4_route_is_decap(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_nve_decap_tunnel_index_get(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_fi_is_gateway(%struct.mlxsw_sp*, %struct.fib_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
