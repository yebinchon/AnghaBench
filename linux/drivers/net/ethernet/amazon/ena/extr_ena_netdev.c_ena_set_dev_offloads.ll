; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_set_dev_offloads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_set_dev_offloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev_get_features_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32, i32, i32 }

@ENA_ADMIN_FEATURE_OFFLOAD_DESC_TX_L4_IPV4_CSUM_PART_MASK = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_OFFLOAD_DESC_TX_L4_IPV6_CSUM_PART_MASK = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV4_MASK = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV6_MASK = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_ECN_MASK = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_L4_IPV4_CSUM_MASK = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_L4_IPV6_CSUM_MASK = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev_get_features_ctx*, %struct.net_device*)* @ena_set_dev_offloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_set_dev_offloads(%struct.ena_com_dev_get_features_ctx* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.ena_com_dev_get_features_ctx*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ena_com_dev_get_features_ctx* %0, %struct.ena_com_dev_get_features_ctx** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ENA_ADMIN_FEATURE_OFFLOAD_DESC_TX_L4_IPV4_CSUM_PART_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ENA_ADMIN_FEATURE_OFFLOAD_DESC_TX_L4_IPV6_CSUM_PART_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV4_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @NETIF_F_TSO, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_IPV6_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @NETIF_F_TSO6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ENA_ADMIN_FEATURE_OFFLOAD_DESC_TSO_ECN_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_L4_IPV4_CSUM_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ENA_ADMIN_FEATURE_OFFLOAD_DESC_RX_L4_IPV6_CSUM_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %77
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @NETIF_F_SG, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NETIF_F_RXHASH, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
