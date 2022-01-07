; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_fid_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_fid_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32, %struct.TYPE_2__*, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_RITR_FID_IF = common dso_local global i32 0, align 4
@MLXSW_SP_FLOOD_TYPE_MC = common dso_local global i32 0, align 4
@MLXSW_SP_FLOOD_TYPE_BC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_rif*)* @mlxsw_sp_rif_fid_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_fid_configure(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %3, align 8
  %7 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %7, i32 0, i32 2
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %4, align 8
  %10 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mlxsw_sp_fid_index(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %15 = load i32, i32* @MLXSW_REG_RITR_FID_IF, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mlxsw_sp_rif_vlan_fid_op(%struct.mlxsw_sp_rif* %14, i32 %15, i32 %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %1
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_MC, align 4
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %28 = call i32 @mlxsw_sp_router_port(%struct.mlxsw_sp* %27)
  %29 = call i32 @mlxsw_sp_fid_flood_set(i32 %25, i32 %26, i32 %28, i32 1)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %83

33:                                               ; preds = %22
  %34 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_BC, align 4
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %39 = call i32 @mlxsw_sp_router_port(%struct.mlxsw_sp* %38)
  %40 = call i32 @mlxsw_sp_fid_flood_set(i32 %36, i32 %37, i32 %39, i32 1)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %75

44:                                               ; preds = %33
  %45 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %45, i32 0, i32 2
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %46, align 8
  %48 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mlxsw_sp_fid_index(i32 %55)
  %57 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %47, i32 %52, i32 %56, i32 1)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %67

61:                                               ; preds = %44
  %62 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %66 = call i32 @mlxsw_sp_fid_rif_set(i32 %64, %struct.mlxsw_sp_rif* %65)
  store i32 0, i32* %2, align 4
  br label %89

67:                                               ; preds = %60
  %68 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_BC, align 4
  %72 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %73 = call i32 @mlxsw_sp_router_port(%struct.mlxsw_sp* %72)
  %74 = call i32 @mlxsw_sp_fid_flood_set(i32 %70, i32 %71, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %67, %43
  %76 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_MC, align 4
  %80 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %81 = call i32 @mlxsw_sp_router_port(%struct.mlxsw_sp* %80)
  %82 = call i32 @mlxsw_sp_fid_flood_set(i32 %78, i32 %79, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %75, %32
  %84 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %85 = load i32, i32* @MLXSW_REG_RITR_FID_IF, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @mlxsw_sp_rif_vlan_fid_op(%struct.mlxsw_sp_rif* %84, i32 %85, i32 %86, i32 0)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %83, %61, %20
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

declare dso_local i32 @mlxsw_sp_rif_vlan_fid_op(%struct.mlxsw_sp_rif*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_flood_set(i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_router_port(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_rif_set(i32, %struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
