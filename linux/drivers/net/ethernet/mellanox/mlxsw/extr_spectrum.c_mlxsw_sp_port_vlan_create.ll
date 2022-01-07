; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_vlan_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_vlan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_vlan = type { i32, i64, %struct.mlxsw_sp_port* }
%struct.mlxsw_sp_port = type { i32 }

@MLXSW_SP_DEFAULT_VID = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_create(%struct.mlxsw_sp_port* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MLXSW_SP_DEFAULT_VID, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port* %13, i64 %14)
  store %struct.mlxsw_sp_port_vlan* %15, %struct.mlxsw_sp_port_vlan** %6, align 8
  %16 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %6, align 8
  %17 = icmp ne %struct.mlxsw_sp_port_vlan* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mlxsw_sp_port_vlan* @ERR_PTR(i32 %20)
  store %struct.mlxsw_sp_port_vlan* %21, %struct.mlxsw_sp_port_vlan** %3, align 8
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port* %23, i64 %24, i64 %25, i32 1, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.mlxsw_sp_port_vlan* @ERR_PTR(i32 %31)
  store %struct.mlxsw_sp_port_vlan* %32, %struct.mlxsw_sp_port_vlan** %3, align 8
  br label %61

33:                                               ; preds = %22
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.mlxsw_sp_port_vlan* @kzalloc(i32 24, i32 %34)
  store %struct.mlxsw_sp_port_vlan* %35, %struct.mlxsw_sp_port_vlan** %6, align 8
  %36 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %6, align 8
  %37 = icmp ne %struct.mlxsw_sp_port_vlan* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %54

41:                                               ; preds = %33
  %42 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %43 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %43, i32 0, i32 2
  store %struct.mlxsw_sp_port* %42, %struct.mlxsw_sp_port** %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %6, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %6, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %48, i32 0, i32 0
  %50 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %50, i32 0, i32 0
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %6, align 8
  store %struct.mlxsw_sp_port_vlan* %53, %struct.mlxsw_sp_port_vlan** %3, align 8
  br label %61

54:                                               ; preds = %38
  %55 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port* %55, i64 %56, i64 %57, i32 0, i32 0)
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.mlxsw_sp_port_vlan* @ERR_PTR(i32 %59)
  store %struct.mlxsw_sp_port_vlan* %60, %struct.mlxsw_sp_port_vlan** %3, align 8
  br label %61

61:                                               ; preds = %54, %41, %30, %18
  %62 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %3, align 8
  ret %struct.mlxsw_sp_port_vlan* %62
}

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port*, i64) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port*, i64, i64, i32, i32) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
