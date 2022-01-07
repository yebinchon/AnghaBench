; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_nic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_profile = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_2__, i32, %struct.mlx5e_rss_params }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_rss_params = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"IPSec initialization failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"TLS initialization failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.net_device*, %struct.mlx5e_profile*, i8*)* @mlx5e_nic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_nic_init(%struct.mlx5_core_dev* %0, %struct.net_device* %1, %struct.mlx5e_profile* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlx5e_profile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5e_priv*, align 8
  %11 = alloca %struct.mlx5e_rss_params*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.mlx5e_profile* %2, %struct.mlx5e_profile** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %10, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 3
  store %struct.mlx5e_rss_params* %16, %struct.mlx5e_rss_params** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %20 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @mlx5e_netdev_init(%struct.net_device* %17, %struct.mlx5e_priv* %18, %struct.mlx5_core_dev* %19, %struct.mlx5e_profile* %20, i8* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %68

27:                                               ; preds = %4
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 2
  %31 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %11, align 8
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlx5e_build_nic_params(%struct.mlx5_core_dev* %28, i32* %30, %struct.mlx5e_rss_params* %31, i32* %34, i32 %37, i32 %40)
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %43 = call i32 @mlx5e_timestamp_init(%struct.mlx5e_priv* %42)
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %45 = call i32 @mlx5e_ipsec_init(%struct.mlx5e_priv* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %27
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %54 = call i32 @mlx5e_tls_init(%struct.mlx5e_priv* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = call i32 @mlx5e_build_nic_netdev(%struct.net_device* %62)
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %65 = call i32 @mlx5e_build_tc2txq_maps(%struct.mlx5e_priv* %64)
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %67 = call i32 @mlx5e_health_create_reporters(%struct.mlx5e_priv* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %25
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_netdev_init(%struct.net_device*, %struct.mlx5e_priv*, %struct.mlx5_core_dev*, %struct.mlx5e_profile*, i8*) #1

declare dso_local i32 @mlx5e_build_nic_params(%struct.mlx5_core_dev*, i32*, %struct.mlx5e_rss_params*, i32*, i32, i32) #1

declare dso_local i32 @mlx5e_timestamp_init(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_ipsec_init(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5e_tls_init(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_build_nic_netdev(%struct.net_device*) #1

declare dso_local i32 @mlx5e_build_tc2txq_maps(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_health_create_reporters(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
