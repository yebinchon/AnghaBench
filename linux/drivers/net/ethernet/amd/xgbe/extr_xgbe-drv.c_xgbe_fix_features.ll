; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_RX_UDP_TUNNEL_PORT = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"forcing tx udp tunnel support\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"forcing both tx and rx udp tunnel support\0A\00", align 1
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"forcing tx udp tunnel checksumming on\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"forcing tx udp tunnel checksumming off\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"VXLAN acceleration disabled, turning off udp tunnel features\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xgbe_fix_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %6, align 8
  %11 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %12 = load i32, i32* @NETIF_F_RX_UDP_TUNNEL_PORT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %3, align 4
  br label %118

28:                                               ; preds = %2
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %3, align 4
  br label %118

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @netdev_notice(%struct.net_device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %44, %39
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @netdev_notice(%struct.net_device* %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %70 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = call i32 @netdev_notice(%struct.net_device* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %74
  br label %99

86:                                               ; preds = %67
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 @netdev_notice(%struct.net_device* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %86
  br label %99

99:                                               ; preds = %98, %85
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %104 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %106 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %99
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = call i32 @netdev_notice(%struct.net_device* %110, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %8, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %109, %99
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %34, %26
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
