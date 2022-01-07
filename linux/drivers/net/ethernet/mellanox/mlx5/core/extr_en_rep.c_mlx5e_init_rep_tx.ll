; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_init_rep_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_init_rep_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { %struct.mlx5_rep_uplink_priv, %struct.TYPE_3__* }
%struct.mlx5_rep_uplink_priv = type { i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"create tises failed, %d\0A\00", align 1
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@mlx5e_nic_rep_netdevice_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to register netdev notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_init_rep_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_init_rep_tx(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  %5 = alloca %struct.mlx5_rep_uplink_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 1
  %9 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %8, align 8
  store %struct.mlx5e_rep_priv* %9, %struct.mlx5e_rep_priv** %4, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %11 = call i32 @mlx5e_create_tises(%struct.mlx5e_priv* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mlx5_core_warn(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %78

21:                                               ; preds = %1
  %22 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %21
  %30 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %30, i32 0, i32 0
  store %struct.mlx5_rep_uplink_priv* %31, %struct.mlx5_rep_uplink_priv** %5, align 8
  %32 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %32, i32 0, i32 5
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %35, i32 0, i32 4
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %38, i32 0, i32 0
  %40 = call i32 @mlx5e_tc_esw_init(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %74

44:                                               ; preds = %29
  %45 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %45, i32 0, i32 3
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mlx5_init_port_tun_entropy(i32* %46, i32 %49)
  %51 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %51, i32 0, i32 2
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load i32, i32* @mlx5e_nic_rep_netdevice_event, align 4
  %55 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %58, i32 0, i32 1
  %60 = call i32 @register_netdevice_notifier(%struct.TYPE_4__* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %44
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mlx5_core_err(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %70

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %21
  store i32 0, i32* %2, align 4
  br label %78

70:                                               ; preds = %63
  %71 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %71, i32 0, i32 0
  %73 = call i32 @mlx5e_tc_esw_cleanup(i32* %72)
  br label %74

74:                                               ; preds = %70, %43
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %76 = call i32 @mlx5e_destroy_tises(%struct.mlx5e_priv* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %69, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @mlx5e_create_tises(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlx5e_tc_esw_init(i32*) #1

declare dso_local i32 @mlx5_init_port_tun_entropy(i32*, i32) #1

declare dso_local i32 @register_netdevice_notifier(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx5_core_err(i32, i8*) #1

declare dso_local i32 @mlx5e_tc_esw_cleanup(i32*) #1

declare dso_local i32 @mlx5e_destroy_tises(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
