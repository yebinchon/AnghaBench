; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { i64 }
%struct.ndis_offload_params = type { i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED = common dso_local global i8* null, align 8
@NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netvsc_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device_context*, align 8
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ndis_offload_params, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %17)
  store %struct.net_device_context* %18, %struct.net_device_context** %7, align 8
  %19 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %20 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @rtnl_dereference(i32 %21)
  %23 = bitcast i8* %22 to %struct.netvsc_device*
  store %struct.netvsc_device* %23, %struct.netvsc_device** %8, align 8
  %24 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %25 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @rtnl_dereference(i32 %26)
  %28 = bitcast i8* %27 to %struct.net_device*
  store %struct.net_device* %28, %struct.net_device** %9, align 8
  store i32 0, i32* %11, align 4
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %30 = icmp ne %struct.netvsc_device* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %33 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %2
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NETIF_F_LRO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %75

45:                                               ; preds = %39
  %46 = call i32 @memset(%struct.ndis_offload_params* %10, i32 0, i32 16)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NETIF_F_LRO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED, align 8
  %53 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %10, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED, align 8
  %55 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %10, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  br label %61

56:                                               ; preds = %45
  %57 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED, align 8
  %58 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %10, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED, align 8
  %60 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %10, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %64 = call i32 @rndis_filter_set_offload_params(%struct.net_device* %62, %struct.netvsc_device* %63, %struct.ndis_offload_params* %10)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @NETIF_F_LRO, align 4
  %69 = load i32, i32* %5, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %61
  br label %75

75:                                               ; preds = %74, %44
  %76 = load %struct.net_device*, %struct.net_device** %9, align 8
  %77 = icmp ne %struct.net_device* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %87

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.net_device*, %struct.net_device** %9, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.net_device*, %struct.net_device** %9, align 8
  %85 = call i32 @netdev_update_features(%struct.net_device* %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %78, %36
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @memset(%struct.ndis_offload_params*, i32, i32) #1

declare dso_local i32 @rndis_filter_set_offload_params(%struct.net_device*, %struct.netvsc_device*, %struct.ndis_offload_params*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
