; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_update_hw_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_update_hw_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, %struct.mlx5e_rep_priv*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.rtnl_link_stats64 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32 }
%struct.mlx5e_rep_priv = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.ifla_vf_stats = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"vport %d error %d reading stats\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_rep_update_hw_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_rep_update_hw_counters(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca %struct.rtnl_link_stats64*, align 8
  %7 = alloca %struct.ifla_vf_stats, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %13, align 8
  store %struct.mlx5_eswitch* %14, %struct.mlx5_eswitch** %3, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %16, align 8
  store %struct.mlx5e_rep_priv* %17, %struct.mlx5e_rep_priv** %4, align 8
  %18 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %18, i32 0, i32 0
  %20 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %19, align 8
  store %struct.mlx5_eswitch_rep* %20, %struct.mlx5_eswitch_rep** %5, align 8
  %21 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %22 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx5_eswitch_get_vport_stats(%struct.mlx5_eswitch* %21, i32 %24, %struct.ifla_vf_stats* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %54

34:                                               ; preds = %1
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.rtnl_link_stats64* %37, %struct.rtnl_link_stats64** %6, align 8
  %38 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %7, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %53 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @mlx5_eswitch_get_vport_stats(%struct.mlx5_eswitch*, i32, %struct.ifla_vf_stats*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
