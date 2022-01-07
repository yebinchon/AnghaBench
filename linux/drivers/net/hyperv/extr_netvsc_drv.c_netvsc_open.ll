; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { %struct.rndis_device* }
%struct.rndis_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to open device (ret %d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to open slave: %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netvsc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device_context*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca %struct.rndis_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %9)
  store %struct.net_device_context* %10, %struct.net_device_context** %4, align 8
  %11 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %12 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @rtnl_dereference(i32 %13)
  %15 = bitcast i8* %14 to %struct.net_device*
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %17 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @rtnl_dereference(i32 %18)
  %20 = bitcast i8* %19 to %struct.netvsc_device*
  store %struct.netvsc_device* %20, %struct.netvsc_device** %6, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %24 = call i32 @rndis_filter_open(%struct.netvsc_device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %1
  %33 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %34 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %33, i32 0, i32 0
  %35 = load %struct.rndis_device*, %struct.rndis_device** %34, align 8
  store %struct.rndis_device* %35, %struct.rndis_device** %7, align 8
  %36 = load %struct.rndis_device*, %struct.rndis_device** %7, align 8
  %37 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netif_carrier_on(%struct.net_device* %41)
  %43 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netvsc_tx_enable(%struct.netvsc_device* %43, %struct.net_device* %44)
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 @dev_open(%struct.net_device* %50, i32* null)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @netdev_warn(%struct.net_device* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  br label %62

62:                                               ; preds = %61, %46
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_open(%struct.netvsc_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netvsc_tx_enable(%struct.netvsc_device*, %struct.net_device*) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
