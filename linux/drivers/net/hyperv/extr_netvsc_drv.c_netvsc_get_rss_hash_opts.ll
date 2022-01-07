; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_context = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@HV_TCP4_L4HASH = common dso_local global i32 0, align 4
@HV_TCP6_L4HASH = common dso_local global i32 0, align 4
@HV_UDP4_L4HASH = common dso_local global i32 0, align 4
@HV_UDP6_L4HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device_context*, %struct.ethtool_rxnfc*)* @netvsc_get_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_get_rss_hash_opts(%struct.net_device_context* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.net_device_context*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device_context* %0, %struct.net_device_context** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %6 = load i32, i32* @RXH_L4_B_0_1, align 4
  %7 = load i32, i32* @RXH_L4_B_2_3, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @RXH_IP_SRC, align 4
  %10 = load i32, i32* @RXH_IP_DST, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %74 [
    i32 131, label %17
    i32 130, label %31
    i32 129, label %45
    i32 128, label %59
    i32 133, label %73
    i32 132, label %73
  ]

17:                                               ; preds = %2
  %18 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %19 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HV_TCP4_L4HASH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %17
  br label %77

31:                                               ; preds = %2
  %32 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %33 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HV_TCP6_L4HASH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %31
  br label %77

45:                                               ; preds = %2
  %46 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %47 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HV_UDP4_L4HASH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %45
  br label %77

59:                                               ; preds = %2
  %60 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %61 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HV_UDP6_L4HASH, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %59
  br label %77

73:                                               ; preds = %2, %2
  br label %77

74:                                               ; preds = %2
  %75 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %73, %72, %58, %44, %30
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
