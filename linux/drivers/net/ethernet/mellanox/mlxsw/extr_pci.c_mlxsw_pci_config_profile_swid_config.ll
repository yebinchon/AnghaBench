; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_config_profile_swid_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_config_profile_swid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_swid_config = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_pci*, i8*, i32, %struct.mlxsw_swid_config*)* @mlxsw_pci_config_profile_swid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_config_profile_swid_config(%struct.mlxsw_pci* %0, i8* %1, i32 %2, %struct.mlxsw_swid_config* %3) #0 {
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_swid_config*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mlxsw_swid_config* %3, %struct.mlxsw_swid_config** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.mlxsw_swid_config*, %struct.mlxsw_swid_config** %8, align 8
  %11 = getelementptr inbounds %struct.mlxsw_swid_config, %struct.mlxsw_swid_config* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.mlxsw_swid_config*, %struct.mlxsw_swid_config** %8, align 8
  %18 = getelementptr inbounds %struct.mlxsw_swid_config, %struct.mlxsw_swid_config* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mlxsw_cmd_mbox_config_profile_swid_config_type_set(i8* %15, i32 %16, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %14, %4
  %24 = load %struct.mlxsw_swid_config*, %struct.mlxsw_swid_config** %8, align 8
  %25 = getelementptr inbounds %struct.mlxsw_swid_config, %struct.mlxsw_swid_config* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mlxsw_swid_config*, %struct.mlxsw_swid_config** %8, align 8
  %32 = getelementptr inbounds %struct.mlxsw_swid_config, %struct.mlxsw_swid_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mlxsw_cmd_mbox_config_profile_swid_config_properties_set(i8* %29, i32 %30, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, 2
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %28, %23
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @mlxsw_cmd_mbox_config_profile_swid_config_mask_set(i8* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_swid_config_type_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_swid_config_properties_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_swid_config_mask_set(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
