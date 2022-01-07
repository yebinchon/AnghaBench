; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device_info = type { i32 }
%struct.net_device_context = type { %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.netvsc_device = type { i32, i32, %struct.rndis_device* }
%struct.rndis_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netvsc_device_info*)* @netvsc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_attach(%struct.net_device* %0, %struct.netvsc_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netvsc_device_info*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.hv_device*, align 8
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca %struct.rndis_device*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netvsc_device_info* %1, %struct.netvsc_device_info** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %11)
  store %struct.net_device_context* %12, %struct.net_device_context** %6, align 8
  %13 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %14 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %13, i32 0, i32 0
  %15 = load %struct.hv_device*, %struct.hv_device** %14, align 8
  store %struct.hv_device* %15, %struct.hv_device** %7, align 8
  %16 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %17 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %5, align 8
  %18 = call %struct.netvsc_device* @rndis_filter_device_add(%struct.hv_device* %16, %struct.netvsc_device_info* %17)
  store %struct.netvsc_device* %18, %struct.netvsc_device** %8, align 8
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %20 = call i64 @IS_ERR(%struct.netvsc_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.netvsc_device* %23)
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %27 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %33 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %5, align 8
  %34 = call i32 @rndis_set_subchannel(%struct.net_device* %31, %struct.netvsc_device* %32, %struct.netvsc_device_info* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %39 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %41 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netif_device_attach(%struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @netif_carrier_off(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i64 @netif_running(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %43
  %52 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %53 = call i32 @rndis_filter_open(%struct.netvsc_device* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %70

57:                                               ; preds = %51
  %58 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %59 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %58, i32 0, i32 2
  %60 = load %struct.rndis_device*, %struct.rndis_device** %59, align 8
  store %struct.rndis_device* %60, %struct.rndis_device** %9, align 8
  %61 = load %struct.rndis_device*, %struct.rndis_device** %9, align 8
  %62 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @netif_carrier_on(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %65, %57
  br label %69

69:                                               ; preds = %68, %43
  store i32 0, i32* %3, align 4
  br label %77

70:                                               ; preds = %56
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @netif_device_detach(%struct.net_device* %71)
  %73 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %74 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %75 = call i32 @rndis_filter_device_remove(%struct.hv_device* %73, %struct.netvsc_device* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %69, %22
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rndis_filter_device_add(%struct.hv_device*, %struct.netvsc_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.netvsc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.netvsc_device*) #1

declare dso_local i32 @rndis_set_subchannel(%struct.net_device*, %struct.netvsc_device*, %struct.netvsc_device_info*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_open(%struct.netvsc_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_device_remove(%struct.hv_device*, %struct.netvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
