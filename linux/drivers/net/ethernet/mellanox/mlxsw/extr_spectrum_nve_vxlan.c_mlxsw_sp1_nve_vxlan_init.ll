; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp1_nve_vxlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp1_nve_vxlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nve_config = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve_config*)* @mlxsw_sp1_nve_vxlan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_nve_vxlan_init(%struct.mlxsw_sp_nve* %0, %struct.mlxsw_sp_nve_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_nve*, align 8
  %5 = alloca %struct.mlxsw_sp_nve_config*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_nve* %0, %struct.mlxsw_sp_nve** %4, align 8
  store %struct.mlxsw_sp_nve_config* %1, %struct.mlxsw_sp_nve_config** %5, align 8
  %8 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %8, i32 0, i32 1
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  store %struct.mlxsw_sp* %10, %struct.mlxsw_sp** %6, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %12 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__mlxsw_sp_nve_inc_parsing_depth_get(%struct.mlxsw_sp* %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %22 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %23 = call i32 @mlxsw_sp1_nve_vxlan_config_set(%struct.mlxsw_sp* %21, %struct.mlxsw_sp_nve_config* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %58

27:                                               ; preds = %20
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %29 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlxsw_sp1_nve_vxlan_rtdp_set(%struct.mlxsw_sp* %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %55

36:                                               ; preds = %27
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %38 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %44, i32 0, i32 0
  %46 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mlxsw_sp_router_nve_promote_decap(%struct.mlxsw_sp* %37, i32 %40, i32 %43, i32* %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %54

53:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %62

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %57 = call i32 @mlxsw_sp1_nve_vxlan_config_clear(%struct.mlxsw_sp* %56)
  br label %58

58:                                               ; preds = %55, %26
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %60 = call i32 @__mlxsw_sp_nve_inc_parsing_depth_put(%struct.mlxsw_sp* %59, i32 0)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %53, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @__mlxsw_sp_nve_inc_parsing_depth_get(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp1_nve_vxlan_config_set(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_config*) #1

declare dso_local i32 @mlxsw_sp1_nve_vxlan_rtdp_set(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_router_nve_promote_decap(%struct.mlxsw_sp*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlxsw_sp1_nve_vxlan_config_clear(%struct.mlxsw_sp*) #1

declare dso_local i32 @__mlxsw_sp_nve_inc_parsing_depth_put(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
