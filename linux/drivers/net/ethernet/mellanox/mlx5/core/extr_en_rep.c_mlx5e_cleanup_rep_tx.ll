; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_cleanup_rep_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_cleanup_rep_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_cleanup_rep_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_cleanup_rep_tx(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_rep_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 0
  %6 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  store %struct.mlx5e_rep_priv* %6, %struct.mlx5e_rep_priv** %3, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %8 = call i32 @mlx5e_destroy_tises(%struct.mlx5e_priv* %7)
  %9 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = call i32 @unregister_netdevice_notifier(i32* %19)
  %21 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %22 = call i32 @mlx5e_rep_indr_clean_block_privs(%struct.mlx5e_rep_priv* %21)
  %23 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @mlx5e_tc_esw_cleanup(i32* %25)
  %27 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @mutex_destroy(i32* %29)
  br label %31

31:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @mlx5e_destroy_tises(%struct.mlx5e_priv*) #1

declare dso_local i32 @unregister_netdevice_notifier(i32*) #1

declare dso_local i32 @mlx5e_rep_indr_clean_block_privs(%struct.mlx5e_rep_priv*) #1

declare dso_local i32 @mlx5e_tc_esw_cleanup(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
