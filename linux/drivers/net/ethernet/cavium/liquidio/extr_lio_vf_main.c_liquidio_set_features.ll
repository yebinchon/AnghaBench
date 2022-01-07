; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_liquidio_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_liquidio_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { i32, i32 }

@NETIF_F_LRO = common dso_local global i32 0, align 4
@OCTNET_CMD_LRO_ENABLE = common dso_local global i32 0, align 4
@OCTNIC_LROIPV4 = common dso_local global i32 0, align 4
@OCTNIC_LROIPV6 = common dso_local global i32 0, align 4
@OCTNET_CMD_LRO_DISABLE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@OCTNET_CMD_TNL_RX_CSUM_CTL = common dso_local global i32 0, align 4
@OCTNET_CMD_RXCSUM_ENABLE = common dso_local global i32 0, align 4
@OCTNET_CMD_RXCSUM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @liquidio_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lio*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.lio* @netdev_priv(%struct.net_device* %7)
  store %struct.lio* %8, %struct.lio** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = xor i32 %11, %12
  %14 = load i32, i32* @NETIF_F_LRO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NETIF_F_LRO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.lio*, %struct.lio** %6, align 8
  %25 = getelementptr inbounds %struct.lio, %struct.lio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NETIF_F_LRO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load i32, i32* @OCTNET_CMD_LRO_ENABLE, align 4
  %33 = load i32, i32* @OCTNIC_LROIPV4, align 4
  %34 = load i32, i32* @OCTNIC_LROIPV6, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @liquidio_set_feature(%struct.net_device* %31, i32 %32, i32 %35)
  br label %57

37:                                               ; preds = %23, %18
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @NETIF_F_LRO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %37
  %43 = load %struct.lio*, %struct.lio** %6, align 8
  %44 = getelementptr inbounds %struct.lio, %struct.lio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NETIF_F_LRO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load i32, i32* @OCTNET_CMD_LRO_DISABLE, align 4
  %52 = load i32, i32* @OCTNIC_LROIPV4, align 4
  %53 = load i32, i32* @OCTNIC_LROIPV6, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @liquidio_set_feature(%struct.net_device* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %42, %37
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %57
  %65 = load %struct.lio*, %struct.lio** %6, align 8
  %66 = getelementptr inbounds %struct.lio, %struct.lio* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load i32, i32* @OCTNET_CMD_TNL_RX_CSUM_CTL, align 4
  %79 = load i32, i32* @OCTNET_CMD_RXCSUM_ENABLE, align 4
  %80 = call i32 @liquidio_set_rxcsum_command(%struct.net_device* %77, i32 %78, i32 %79)
  br label %106

81:                                               ; preds = %71, %64, %57
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %81
  %89 = load %struct.lio*, %struct.lio** %6, align 8
  %90 = getelementptr inbounds %struct.lio, %struct.lio* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = load i32, i32* @OCTNET_CMD_TNL_RX_CSUM_CTL, align 4
  %103 = load i32, i32* @OCTNET_CMD_RXCSUM_DISABLE, align 4
  %104 = call i32 @liquidio_set_rxcsum_command(%struct.net_device* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %95, %88, %81
  br label %106

106:                                              ; preds = %105, %76
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.lio* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @liquidio_set_feature(%struct.net_device*, i32, i32) #1

declare dso_local i32 @liquidio_set_rxcsum_command(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
