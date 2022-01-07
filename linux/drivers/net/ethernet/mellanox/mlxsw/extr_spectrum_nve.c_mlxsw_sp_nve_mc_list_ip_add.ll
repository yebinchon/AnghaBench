; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_list_ip_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_list_ip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nve_mc_list = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }
%struct.mlxsw_sp_nve_mc_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list*, i32, %union.mlxsw_sp_l3addr*)* @mlxsw_sp_nve_mc_list_ip_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nve_mc_list_ip_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nve_mc_list* %1, i32 %2, %union.mlxsw_sp_l3addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.mlxsw_sp_l3addr*, align 8
  %10 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_nve_mc_list* %1, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.mlxsw_sp_l3addr* %3, %union.mlxsw_sp_l3addr** %9, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %13 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.mlxsw_sp_nve_mc_record* @mlxsw_sp_nve_mc_record_get(%struct.mlxsw_sp* %12, %struct.mlxsw_sp_nve_mc_list* %13, i32 %14)
  store %struct.mlxsw_sp_nve_mc_record* %15, %struct.mlxsw_sp_nve_mc_record** %10, align 8
  %16 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %10, align 8
  %17 = call i64 @IS_ERR(%struct.mlxsw_sp_nve_mc_record* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.mlxsw_sp_nve_mc_record* %20)
  store i32 %21, i32* %5, align 4
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %10, align 8
  %24 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %9, align 8
  %25 = call i32 @mlxsw_sp_nve_mc_record_ip_add(%struct.mlxsw_sp_nve_mc_record* %23, %union.mlxsw_sp_l3addr* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %34

30:                                               ; preds = %28
  %31 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %10, align 8
  %32 = call i32 @mlxsw_sp_nve_mc_record_put(%struct.mlxsw_sp_nve_mc_record* %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %29, %19
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.mlxsw_sp_nve_mc_record* @mlxsw_sp_nve_mc_record_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_nve_mc_record*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_nve_mc_record*) #1

declare dso_local i32 @mlxsw_sp_nve_mc_record_ip_add(%struct.mlxsw_sp_nve_mc_record*, %union.mlxsw_sp_l3addr*) #1

declare dso_local i32 @mlxsw_sp_nve_mc_record_put(%struct.mlxsw_sp_nve_mc_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
