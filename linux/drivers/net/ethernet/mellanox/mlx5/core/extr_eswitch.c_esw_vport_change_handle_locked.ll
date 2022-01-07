; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_change_handle_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_change_handle_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_vport = type { i32, i32, i64, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vport[%d] Context Changed: perm mac: %pM\0A\00", align 1
@MLX5_VPORT_UC_ADDR_CHANGE = common dso_local global i32 0, align 4
@MLX5_NVPRT_LIST_TYPE_UC = common dso_local global i32 0, align 4
@MLX5_VPORT_MC_ADDR_CHANGE = common dso_local global i32 0, align 4
@MLX5_NVPRT_LIST_TYPE_MC = common dso_local global i32 0, align 4
@MLX5_VPORT_PROMISC_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"vport[%d] Context Changed: Done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_vport*)* @esw_vport_change_handle_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_vport_change_handle_locked(%struct.mlx5_vport* %0) #0 {
  %2 = alloca %struct.mlx5_vport*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5_vport* %0, %struct.mlx5_vport** %2, align 8
  %7 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %7, i32 0, i32 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %3, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %12, align 8
  store %struct.mlx5_eswitch* %13, %struct.mlx5_eswitch** %4, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlx5_query_nic_vport_mac_address(%struct.mlx5_core_dev* %18, i32 %21, i32 1, i32* %17)
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %24 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_debug(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i32* %17)
  %28 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MLX5_VPORT_UC_ADDR_CHANGE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %36 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %37 = load i32, i32* @MLX5_NVPRT_LIST_TYPE_UC, align 4
  %38 = call i32 @esw_update_vport_addr_list(%struct.mlx5_eswitch* %35, %struct.mlx5_vport* %36, i32 %37)
  %39 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %40 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %41 = load i32, i32* @MLX5_NVPRT_LIST_TYPE_UC, align 4
  %42 = call i32 @esw_apply_vport_addr_list(%struct.mlx5_eswitch* %39, %struct.mlx5_vport* %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %1
  %44 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MLX5_VPORT_MC_ADDR_CHANGE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %52 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %53 = load i32, i32* @MLX5_NVPRT_LIST_TYPE_MC, align 4
  %54 = call i32 @esw_update_vport_addr_list(%struct.mlx5_eswitch* %51, %struct.mlx5_vport* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %57 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MLX5_VPORT_PROMISC_CHANGE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %64 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %65 = call i32 @esw_update_vport_rx_mode(%struct.mlx5_eswitch* %63, %struct.mlx5_vport* %64)
  %66 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %67 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @IS_ERR_OR_NULL(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %73 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %74 = call i32 @esw_update_vport_mc_promisc(%struct.mlx5_eswitch* %72, %struct.mlx5_vport* %73)
  br label %75

75:                                               ; preds = %71, %62
  br label %76

76:                                               ; preds = %75, %55
  %77 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %78 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MLX5_VPORT_PROMISC_CHANGE, align 4
  %81 = load i32, i32* @MLX5_VPORT_MC_ADDR_CHANGE, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %87 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %88 = load i32, i32* @MLX5_NVPRT_LIST_TYPE_MC, align 4
  %89 = call i32 @esw_apply_vport_addr_list(%struct.mlx5_eswitch* %86, %struct.mlx5_vport* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %76
  %91 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %92 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.mlx5_core_dev*
  %96 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %97 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_debug(%struct.mlx5_core_dev* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %101 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %90
  %105 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %106 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %107 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mlx5_vport*, %struct.mlx5_vport** %2, align 8
  %110 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @arm_vport_context_events_cmd(%struct.mlx5_core_dev* %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %104, %90
  %114 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlx5_query_nic_vport_mac_address(%struct.mlx5_core_dev*, i32, i32, i32*) #2

declare dso_local i32 @esw_debug(%struct.mlx5_core_dev*, i8*, i32, ...) #2

declare dso_local i32 @esw_update_vport_addr_list(%struct.mlx5_eswitch*, %struct.mlx5_vport*, i32) #2

declare dso_local i32 @esw_apply_vport_addr_list(%struct.mlx5_eswitch*, %struct.mlx5_vport*, i32) #2

declare dso_local i32 @esw_update_vport_rx_mode(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @IS_ERR_OR_NULL(i32) #2

declare dso_local i32 @esw_update_vport_mc_promisc(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @arm_vport_context_events_cmd(%struct.mlx5_core_dev*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
