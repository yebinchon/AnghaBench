; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_build_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_build_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.net_device*, %struct.mlx5_core_dev* }
%struct.net_device = type { i32, i32, i32, i32* }
%struct.mlx5_core_dev = type { i32 }

@MLX5_ACCEL_IPSEC_CAP_ESP = common dso_local global i32 0, align 4
@swp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"mlx5e: ESP and SWP offload not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mlx5e: IPSec ESP acceleration enabled\0A\00", align 1
@mlx5e_ipsec_xfrmdev_ops = common dso_local global i32 0, align 4
@NETIF_F_HW_ESP = common dso_local global i32 0, align 4
@swp_csum = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"mlx5e: SWP checksum not supported\0A\00", align 1
@NETIF_F_HW_ESP_TX_CSUM = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_LSO = common dso_local global i32 0, align 4
@swp_lso = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"mlx5e: ESP LSO not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"mlx5e: ESP GSO capability turned on\0A\00", align 1
@NETIF_F_GSO_ESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_ipsec_build_netdev(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 2
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_core_dev* %7, %struct.mlx5_core_dev** %3, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %94

16:                                               ; preds = %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = call i32 @mlx5_accel_ipsec_device_caps(%struct.mlx5_core_dev* %17)
  %19 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_ESP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %24 = load i32, i32* @swp, align 4
  %25 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %94

30:                                               ; preds = %22
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %32 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 3
  store i32* @mlx5e_ipsec_xfrmdev_ops, i32** %34, align 8
  %35 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %46 = load i32, i32* @swp_csum, align 4
  %47 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %30
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %51 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %94

52:                                               ; preds = %30
  %53 = load i32, i32* @NETIF_F_HW_ESP_TX_CSUM, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @NETIF_F_HW_ESP_TX_CSUM, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %64 = call i32 @mlx5_accel_ipsec_device_caps(%struct.mlx5_core_dev* %63)
  %65 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_LSO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %70 = load i32, i32* @swp_lso, align 4
  %71 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68, %52
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %75 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %94

76:                                               ; preds = %68
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %78 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @NETIF_F_GSO_ESP, align 4
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @NETIF_F_GSO_ESP, align 4
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @NETIF_F_GSO_ESP, align 4
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %76, %73, %49, %27, %15
  ret void
}

declare dso_local i32 @mlx5_accel_ipsec_device_caps(%struct.mlx5_core_dev*) #1

declare dso_local i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
