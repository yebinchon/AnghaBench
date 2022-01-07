; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { %struct.rndis_device* }
%struct.rndis_device = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@ITAB_NUM = common dso_local global i32 0, align 4
@NETVSC_HASH_KEYLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @netvsc_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.net_device_context*, align 8
  %11 = alloca %struct.netvsc_device*, align 8
  %12 = alloca %struct.rndis_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %14)
  store %struct.net_device_context* %15, %struct.net_device_context** %10, align 8
  %16 = load %struct.net_device_context*, %struct.net_device_context** %10, align 8
  %17 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.netvsc_device* @rtnl_dereference(i32 %18)
  store %struct.netvsc_device* %19, %struct.netvsc_device** %11, align 8
  %20 = load %struct.netvsc_device*, %struct.netvsc_device** %11, align 8
  %21 = icmp ne %struct.netvsc_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.netvsc_device*, %struct.netvsc_device** %11, align 8
  %33 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %32, i32 0, i32 0
  %34 = load %struct.rndis_device*, %struct.rndis_device** %33, align 8
  store %struct.rndis_device* %34, %struct.rndis_device** %12, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @ITAB_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.rndis_device*, %struct.rndis_device** %12, align 8
  %44 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %31
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.rndis_device*, %struct.rndis_device** %12, align 8
  %64 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NETVSC_HASH_KEYLEN, align 4
  %67 = call i32 @memcpy(i32* %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %58
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
