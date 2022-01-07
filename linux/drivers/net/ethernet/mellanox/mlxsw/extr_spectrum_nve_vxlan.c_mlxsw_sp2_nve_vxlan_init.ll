; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp2_nve_vxlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp2_nve_vxlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve = type { i32, i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nve_config = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve_config*)* @mlxsw_sp2_nve_vxlan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_nve_vxlan_init(%struct.mlxsw_sp_nve* %0, %struct.mlxsw_sp_nve_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_nve*, align 8
  %5 = alloca %struct.mlxsw_sp_nve_config*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_nve* %0, %struct.mlxsw_sp_nve** %4, align 8
  store %struct.mlxsw_sp_nve_config* %1, %struct.mlxsw_sp_nve_config** %5, align 8
  %8 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %8, i32 0, i32 2
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
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %22 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %23 = call i32 @mlxsw_sp2_nve_vxlan_config_set(%struct.mlxsw_sp* %21, %struct.mlxsw_sp_nve_config* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %61

27:                                               ; preds = %20
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %29 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mlxsw_sp2_nve_vxlan_rtdp_set(%struct.mlxsw_sp* %28, i32 %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %58

39:                                               ; preds = %27
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %41 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %47, i32 0, i32 0
  %49 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mlxsw_sp_router_nve_promote_decap(%struct.mlxsw_sp* %40, i32 %43, i32 %46, i32* %48, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %65

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %60 = call i32 @mlxsw_sp2_nve_vxlan_config_clear(%struct.mlxsw_sp* %59)
  br label %61

61:                                               ; preds = %58, %26
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %63 = call i32 @__mlxsw_sp_nve_inc_parsing_depth_put(%struct.mlxsw_sp* %62, i32 0)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %56, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @__mlxsw_sp_nve_inc_parsing_depth_get(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp2_nve_vxlan_config_set(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_config*) #1

declare dso_local i32 @mlxsw_sp2_nve_vxlan_rtdp_set(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_router_nve_promote_decap(%struct.mlxsw_sp*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlxsw_sp2_nve_vxlan_config_clear(%struct.mlxsw_sp*) #1

declare dso_local i32 @__mlxsw_sp_nve_inc_parsing_depth_put(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
