; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp2_nve_vxlan_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp2_nve_vxlan_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_nve_config = type { i32, i32 }

@MLXSW_REG_TNGCR_LEN = common dso_local global i32 0, align 4
@tngcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_config*)* @mlxsw_sp2_nve_vxlan_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_nve_vxlan_config_set(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nve_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_nve_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_nve_config* %1, %struct.mlxsw_sp_nve_config** %5, align 8
  %11 = load i32, i32* @MLXSW_REG_TNGCR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlxsw_sp_router_ul_rif_get(%struct.mlxsw_sp* %15, i32 %18, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %31 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlxsw_sp2_nve_vxlan_learning_set(%struct.mlxsw_sp* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %56

38:                                               ; preds = %24
  %39 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %5, align 8
  %40 = call i32 @mlxsw_sp_nve_vxlan_config_prepare(i8* %14, %struct.mlxsw_sp_nve_config* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mlxsw_reg_tngcr_underlay_rif_set(i8* %14, i32 %41)
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @tngcr, align 4
  %47 = call i32 @MLXSW_REG(i32 %46)
  %48 = call i32 @mlxsw_reg_write(i32 %45, i32 %47, i8* %14)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %53

52:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

53:                                               ; preds = %51
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %55 = call i32 @mlxsw_sp2_nve_vxlan_learning_set(%struct.mlxsw_sp* %54, i32 0)
  br label %56

56:                                               ; preds = %53, %37
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @mlxsw_sp_router_ul_rif_put(%struct.mlxsw_sp* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %52, %22
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_router_ul_rif_get(%struct.mlxsw_sp*, i32, i32*) #2

declare dso_local i32 @mlxsw_sp2_nve_vxlan_learning_set(%struct.mlxsw_sp*, i32) #2

declare dso_local i32 @mlxsw_sp_nve_vxlan_config_prepare(i8*, %struct.mlxsw_sp_nve_config*) #2

declare dso_local i32 @mlxsw_reg_tngcr_underlay_rif_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_sp_router_ul_rif_put(%struct.mlxsw_sp*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
