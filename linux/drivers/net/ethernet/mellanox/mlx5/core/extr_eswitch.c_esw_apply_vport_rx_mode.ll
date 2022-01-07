; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_apply_vport_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_apply_vport_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.esw_mc_addr }
%struct.esw_mc_addr = type { i64, i32* }
%struct.mlx5_vport = type { i32*, i32, i32* }

@MLX5_VPORT_UPLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_vport*, i32, i32)* @esw_apply_vport_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_apply_vport_rx_mode(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca %struct.mlx5_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.esw_mc_addr*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %10, i32 0, i32 0
  store %struct.esw_mc_addr* %11, %struct.esw_mc_addr** %9, align 8
  %12 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @IS_ERR_OR_NULL(i32* %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %80

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %24 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @esw_fdb_set_vport_allmulti_rule(%struct.mlx5_eswitch* %23, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.esw_mc_addr*, %struct.esw_mc_addr** %9, align 8
  %32 = getelementptr inbounds %struct.esw_mc_addr, %struct.esw_mc_addr* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %22
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %37 = load i32, i32* @MLX5_VPORT_UPLINK, align 4
  %38 = call i8* @esw_fdb_set_vport_allmulti_rule(%struct.mlx5_eswitch* %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.esw_mc_addr*, %struct.esw_mc_addr** %9, align 8
  %41 = getelementptr inbounds %struct.esw_mc_addr, %struct.esw_mc_addr* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %22
  %43 = load %struct.esw_mc_addr*, %struct.esw_mc_addr** %9, align 8
  %44 = getelementptr inbounds %struct.esw_mc_addr, %struct.esw_mc_addr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %79

47:                                               ; preds = %19
  %48 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @mlx5_del_flow_rules(i32* %55)
  %57 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load %struct.esw_mc_addr*, %struct.esw_mc_addr** %9, align 8
  %60 = getelementptr inbounds %struct.esw_mc_addr, %struct.esw_mc_addr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %80

65:                                               ; preds = %52
  %66 = load %struct.esw_mc_addr*, %struct.esw_mc_addr** %9, align 8
  %67 = getelementptr inbounds %struct.esw_mc_addr, %struct.esw_mc_addr* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.esw_mc_addr*, %struct.esw_mc_addr** %9, align 8
  %72 = getelementptr inbounds %struct.esw_mc_addr, %struct.esw_mc_addr* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @mlx5_del_flow_rules(i32* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.esw_mc_addr*, %struct.esw_mc_addr** %9, align 8
  %77 = getelementptr inbounds %struct.esw_mc_addr, %struct.esw_mc_addr* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %75, %47
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %64, %18
  %81 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %82 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @IS_ERR_OR_NULL(i32* %83)
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %112

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %93 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %94 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32* @esw_fdb_set_vport_promisc_rule(%struct.mlx5_eswitch* %92, i32 %95)
  %97 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %98 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  br label %112

99:                                               ; preds = %88
  %100 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %101 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %106 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @mlx5_del_flow_rules(i32* %107)
  %109 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %110 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %99
  br label %112

112:                                              ; preds = %87, %111, %91
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i8* @esw_fdb_set_vport_allmulti_rule(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @mlx5_del_flow_rules(i32*) #1

declare dso_local i32* @esw_fdb_set_vport_promisc_rule(%struct.mlx5_eswitch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
