; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_context = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@HV_TCP4_L4HASH = common dso_local global i32 0, align 4
@HV_TCP6_L4HASH = common dso_local global i32 0, align 4
@HV_UDP4_L4HASH = common dso_local global i32 0, align 4
@HV_UDP6_L4HASH = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device_context*, %struct.ethtool_rxnfc*)* @netvsc_set_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_set_rss_hash_opts(%struct.net_device_context* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device_context*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  store %struct.net_device_context* %0, %struct.net_device_context** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %6 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RXH_IP_SRC, align 4
  %10 = load i32, i32* @RXH_IP_DST, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RXH_L4_B_0_1, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RXH_L4_B_2_3, align 4
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %8, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %45 [
    i32 131, label %21
    i32 130, label %27
    i32 129, label %33
    i32 128, label %39
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @HV_TCP4_L4HASH, align 4
  %23 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %24 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %48

27:                                               ; preds = %17
  %28 = load i32, i32* @HV_TCP6_L4HASH, align 4
  %29 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %30 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %48

33:                                               ; preds = %17
  %34 = load i32, i32* @HV_UDP4_L4HASH, align 4
  %35 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %36 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %48

39:                                               ; preds = %17
  %40 = load i32, i32* @HV_UDP6_L4HASH, align 4
  %41 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %42 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %48

45:                                               ; preds = %17
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %96

48:                                               ; preds = %39, %33, %27, %21
  store i32 0, i32* %3, align 4
  br label %96

49:                                               ; preds = %2
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RXH_IP_SRC, align 4
  %54 = load i32, i32* @RXH_IP_DST, align 4
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %49
  %58 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %89 [
    i32 131, label %61
    i32 130, label %68
    i32 129, label %75
    i32 128, label %82
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @HV_TCP4_L4HASH, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %65 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %92

68:                                               ; preds = %57
  %69 = load i32, i32* @HV_TCP6_L4HASH, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %72 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %92

75:                                               ; preds = %57
  %76 = load i32, i32* @HV_UDP4_L4HASH, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %79 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %92

82:                                               ; preds = %57
  %83 = load i32, i32* @HV_UDP6_L4HASH, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %86 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %92

89:                                               ; preds = %57
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %96

92:                                               ; preds = %82, %75, %68, %61
  store i32 0, i32* %3, align 4
  br label %96

93:                                               ; preds = %49
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %92, %89, %48, %45
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
