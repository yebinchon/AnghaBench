; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { i32 }
%struct.sockaddr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @netvsc_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %11)
  store %struct.net_device_context* %12, %struct.net_device_context** %6, align 8
  %13 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %14 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @rtnl_dereference(i32 %15)
  %17 = bitcast i8* %16 to %struct.net_device*
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %19 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @rtnl_dereference(i32 %20)
  %22 = bitcast i8* %21 to %struct.netvsc_device*
  store %struct.netvsc_device* %22, %struct.netvsc_device** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.sockaddr*
  store %struct.sockaddr* %24, %struct.sockaddr** %9, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @eth_prepare_mac_addr_change(%struct.net_device* %25, i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %2
  %33 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %34 = icmp ne %struct.netvsc_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %80

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %44 = call i32 @dev_set_mac_address(%struct.net_device* %42, %struct.sockaddr* %43, i32* null)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %80

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %52 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %53 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rndis_filter_set_device_mac(%struct.netvsc_device* %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @eth_commit_mac_addr_change(%struct.net_device* %59, i8* %60)
  br label %78

62:                                               ; preds = %50
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = icmp ne %struct.net_device* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %67 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %76 = call i32 @dev_set_mac_address(%struct.net_device* %74, %struct.sockaddr* %75, i32* null)
  br label %77

77:                                               ; preds = %65, %62
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %47, %35, %30
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @eth_prepare_mac_addr_change(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_set_mac_address(%struct.net_device*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @rndis_filter_set_device_mac(%struct.netvsc_device*, i32) #1

declare dso_local i32 @eth_commit_mac_addr_change(%struct.net_device*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
