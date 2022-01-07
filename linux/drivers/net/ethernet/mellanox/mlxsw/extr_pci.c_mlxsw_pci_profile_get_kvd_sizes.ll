; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_profile_get_kvd_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_profile_get_kvd_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_config_profile = type { i32 }
%struct.mlxsw_res = type { i32 }

@KVD_SINGLE_SIZE = common dso_local global i32 0, align 4
@KVD_DOUBLE_SIZE = common dso_local global i32 0, align 4
@KVD_LINEAR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, %struct.mlxsw_config_profile*, %struct.mlxsw_res*)* @mlxsw_pci_profile_get_kvd_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_profile_get_kvd_sizes(%struct.mlxsw_pci* %0, %struct.mlxsw_config_profile* %1, %struct.mlxsw_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca %struct.mlxsw_config_profile*, align 8
  %7 = alloca %struct.mlxsw_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %5, align 8
  store %struct.mlxsw_config_profile* %1, %struct.mlxsw_config_profile** %6, align 8
  store %struct.mlxsw_res* %2, %struct.mlxsw_res** %7, align 8
  %12 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %6, align 8
  %16 = call i32 @mlxsw_core_kvd_sizes_get(i32 %14, %struct.mlxsw_config_profile* %15, i32* %8, i32* %9, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_res*, %struct.mlxsw_res** %7, align 8
  %23 = load i32, i32* @KVD_SINGLE_SIZE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @MLXSW_RES_SET(%struct.mlxsw_res* %22, i32 %23, i32 %24)
  %26 = load %struct.mlxsw_res*, %struct.mlxsw_res** %7, align 8
  %27 = load i32, i32* @KVD_DOUBLE_SIZE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @MLXSW_RES_SET(%struct.mlxsw_res* %26, i32 %27, i32 %28)
  %30 = load %struct.mlxsw_res*, %struct.mlxsw_res** %7, align 8
  %31 = load i32, i32* @KVD_LINEAR_SIZE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @MLXSW_RES_SET(%struct.mlxsw_res* %30, i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %21, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @mlxsw_core_kvd_sizes_get(i32, %struct.mlxsw_config_profile*, i32*, i32*, i32*) #1

declare dso_local i32 @MLXSW_RES_SET(%struct.mlxsw_res*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
