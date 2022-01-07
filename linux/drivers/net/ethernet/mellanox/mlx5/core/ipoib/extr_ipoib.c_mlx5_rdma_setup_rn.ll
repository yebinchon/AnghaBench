; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5_rdma_setup_rn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5_rdma_setup_rn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_profile = type { i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5_core_dev.0*, %struct.net_device*, %struct.mlx5e_profile*, %struct.mlx5i_priv*)* }
%struct.mlx5e_priv = type opaque
%struct.mlx5_core_dev.0 = type opaque
%struct.mlx5i_priv = type { i64, %struct.rdma_netdev }
%struct.rdma_netdev = type { i32, i32, i32, i32, %struct.ib_device* }
%struct.mlx5e_priv.1 = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"allocate qpn_to_netdev ht failed\0A\00", align 1
@mlx5i_xmit = common dso_local global i32 0, align 4
@mlx5i_attach_mcast = common dso_local global i32 0, align 4
@mlx5i_detach_mcast = common dso_local global i32 0, align 4
@mlx5i_set_pkey_index = common dso_local global i32 0, align 4
@mlx5_rdma_netdev_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.net_device*, i8*)* @mlx5_rdma_setup_rn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_rdma_setup_rn(%struct.ib_device* %0, i32 %1, %struct.net_device* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca %struct.mlx5e_profile*, align 8
  %12 = alloca %struct.mlx5i_priv*, align 8
  %13 = alloca %struct.mlx5e_priv.1*, align 8
  %14 = alloca %struct.rdma_netdev*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.mlx5_core_dev*
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %10, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %19 = call %struct.mlx5e_profile* @mlx5_get_profile(%struct.mlx5_core_dev* %18)
  store %struct.mlx5e_profile* %19, %struct.mlx5e_profile** %11, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call %struct.mlx5i_priv* @netdev_priv(%struct.net_device* %20)
  store %struct.mlx5i_priv* %21, %struct.mlx5i_priv** %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call %struct.mlx5e_priv.1* @mlx5i_epriv(%struct.net_device* %22)
  store %struct.mlx5e_priv.1* %23, %struct.mlx5e_priv.1** %13, align 8
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %25 = call i64 @mlx5_is_sub_interface(%struct.mlx5_core_dev* %24)
  %26 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %12, align 8
  %27 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %12, align 8
  %29 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %4
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = call i32 @mlx5i_pkey_qpn_ht_init(%struct.net_device* %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %39 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %5, align 4
  br label %108

41:                                               ; preds = %32
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %43 = call i32 @mlx5e_create_mdev_resources(%struct.mlx5_core_dev* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %104

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %11, align 8
  %50 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %49, i32 0, i32 1
  %51 = load i32 (%struct.mlx5_core_dev.0*, %struct.net_device*, %struct.mlx5e_profile*, %struct.mlx5i_priv*)*, i32 (%struct.mlx5_core_dev.0*, %struct.net_device*, %struct.mlx5e_profile*, %struct.mlx5i_priv*)** %50, align 8
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %53 = bitcast %struct.mlx5_core_dev* %52 to %struct.mlx5_core_dev.0*
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %11, align 8
  %56 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %12, align 8
  %57 = call i32 %51(%struct.mlx5_core_dev.0* %53, %struct.net_device* %54, %struct.mlx5e_profile* %55, %struct.mlx5i_priv* %56)
  %58 = load %struct.mlx5e_priv.1*, %struct.mlx5e_priv.1** %13, align 8
  %59 = call i32 @mlx5e_attach_netdev(%struct.mlx5e_priv.1* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %88

63:                                               ; preds = %48
  %64 = load %struct.net_device*, %struct.net_device** %8, align 8
  %65 = call i32 @netif_carrier_off(%struct.net_device* %64)
  %66 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %12, align 8
  %67 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %66, i32 0, i32 1
  store %struct.rdma_netdev* %67, %struct.rdma_netdev** %14, align 8
  %68 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %69 = load %struct.rdma_netdev*, %struct.rdma_netdev** %14, align 8
  %70 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %69, i32 0, i32 4
  store %struct.ib_device* %68, %struct.ib_device** %70, align 8
  %71 = load i32, i32* @mlx5i_xmit, align 4
  %72 = load %struct.rdma_netdev*, %struct.rdma_netdev** %14, align 8
  %73 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @mlx5i_attach_mcast, align 4
  %75 = load %struct.rdma_netdev*, %struct.rdma_netdev** %14, align 8
  %76 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @mlx5i_detach_mcast, align 4
  %78 = load %struct.rdma_netdev*, %struct.rdma_netdev** %14, align 8
  %79 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @mlx5i_set_pkey_index, align 4
  %81 = load %struct.rdma_netdev*, %struct.rdma_netdev** %14, align 8
  %82 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @mlx5_rdma_netdev_free, align 4
  %84 = load %struct.net_device*, %struct.net_device** %8, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.net_device*, %struct.net_device** %8, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %108

88:                                               ; preds = %62
  %89 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %11, align 8
  %90 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %89, i32 0, i32 0
  %91 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %90, align 8
  %92 = load %struct.mlx5e_priv.1*, %struct.mlx5e_priv.1** %13, align 8
  %93 = bitcast %struct.mlx5e_priv.1* %92 to %struct.mlx5e_priv*
  %94 = call i32 %91(%struct.mlx5e_priv* %93)
  %95 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %12, align 8
  %96 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %5, align 4
  br label %108

101:                                              ; preds = %88
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %103 = call i32 @mlx5e_destroy_mdev_resources(%struct.mlx5_core_dev* %102)
  br label %104

104:                                              ; preds = %101, %46
  %105 = load %struct.net_device*, %struct.net_device** %8, align 8
  %106 = call i32 @mlx5i_pkey_qpn_ht_cleanup(%struct.net_device* %105)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %99, %63, %37
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.mlx5e_profile* @mlx5_get_profile(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5i_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlx5e_priv.1* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i64 @mlx5_is_sub_interface(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5i_pkey_qpn_ht_init(%struct.net_device*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5e_create_mdev_resources(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5e_attach_netdev(%struct.mlx5e_priv.1*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mlx5e_destroy_mdev_resources(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5i_pkey_qpn_ht_cleanup(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
