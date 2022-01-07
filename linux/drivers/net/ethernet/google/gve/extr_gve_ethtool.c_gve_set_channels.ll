; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_ethtool.c_gve_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_ethtool.c_gve_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i64 }
%struct.gve_priv = type { %struct.gve_queue_config, %struct.gve_queue_config }
%struct.gve_queue_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @gve_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.gve_priv*, align 8
  %7 = alloca %struct.gve_queue_config, align 4
  %8 = alloca %struct.gve_queue_config, align 4
  %9 = alloca %struct.ethtool_channels, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.gve_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.gve_priv* %13, %struct.gve_priv** %6, align 8
  %14 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %15 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %14, i32 0, i32 1
  %16 = bitcast %struct.gve_queue_config* %7 to i8*
  %17 = bitcast %struct.gve_queue_config* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %19 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %18, i32 0, i32 0
  %20 = bitcast %struct.gve_queue_config* %8 to i8*
  %21 = bitcast %struct.gve_queue_config* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @gve_get_channels(%struct.net_device* %28, %struct.ethtool_channels* %9)
  %30 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %9, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %2
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @netif_carrier_ok(%struct.net_device* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %55 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.gve_queue_config, %struct.gve_queue_config* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %59 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.gve_queue_config, %struct.gve_queue_config* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %72

61:                                               ; preds = %48
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.gve_queue_config, %struct.gve_queue_config* %7, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds %struct.gve_queue_config, %struct.gve_queue_config* %8, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %67 = getelementptr inbounds %struct.gve_queue_config, %struct.gve_queue_config* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.gve_queue_config, %struct.gve_queue_config* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gve_adjust_queues(%struct.gve_priv* %66, i32 %68, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %52, %45, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.gve_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gve_get_channels(%struct.net_device*, %struct.ethtool_channels*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @gve_adjust_queues(%struct.gve_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
