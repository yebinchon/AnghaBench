; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_3__*, i32, %struct.mlx5_core_dev*, %struct.mlx5i_priv* }
%struct.TYPE_3__ = type { i32 (%struct.mlx5e_priv*)* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5i_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"prepare underlay qp state failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"attach underlay qp to ft failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx5i_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5i_priv*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %4, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 5
  %12 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %11, align 8
  store %struct.mlx5i_priv* %12, %struct.mlx5i_priv** %5, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 4
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %6, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %24 = call i32 @mlx5i_init_underlay_qp(%struct.mlx5e_priv* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %75

31:                                               ; preds = %1
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlx5_fs_add_rx_underlay_qpn(%struct.mlx5_core_dev* %32, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %72

44:                                               ; preds = %31
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %46, i32 0, i32 3
  %48 = call i32 @mlx5e_open_channels(%struct.mlx5e_priv* %45, i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %65

52:                                               ; preds = %44
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %56, align 8
  %58 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %59 = call i32 %57(%struct.mlx5e_priv* %58)
  %60 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %61 = call i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv* %60)
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %63 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 0, i32* %2, align 4
  br label %84

65:                                               ; preds = %51
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %67 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mlx5_fs_remove_rx_underlay_qpn(%struct.mlx5_core_dev* %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %40
  %73 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %74 = call i32 @mlx5i_uninit_underlay_qp(%struct.mlx5e_priv* %73)
  br label %75

75:                                               ; preds = %72, %27
  %76 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %77 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %77, i32 0, i32 1
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %75, %52
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mlx5i_init_underlay_qp(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_fs_add_rx_underlay_qpn(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5e_open_channels(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_fs_remove_rx_underlay_qpn(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5i_uninit_underlay_qp(%struct.mlx5e_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
