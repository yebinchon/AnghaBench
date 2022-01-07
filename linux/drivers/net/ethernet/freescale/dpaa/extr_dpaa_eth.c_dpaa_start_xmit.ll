; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32 }
%struct.dpaa_percpu_priv = type { i32, %struct.rtnl_link_stats64 }
%struct.netdev_queue = type { i32 }
%struct.dpaa_priv = type { i64, i32, i32 }
%struct.qm_fd = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@DPAA_SGT_MAX_ENTRIES = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@FM_FD_CMD_UPD = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @dpaa_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtnl_link_stats64*, align 8
  %9 = alloca %struct.dpaa_percpu_priv*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.dpaa_priv*, align 8
  %12 = alloca %struct.qm_fd, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_is_nonlinear(%struct.sk_buff* %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.dpaa_priv* %20, %struct.dpaa_priv** %11, align 8
  %21 = load %struct.dpaa_priv*, %struct.dpaa_priv** %11, align 8
  %22 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.dpaa_percpu_priv* @this_cpu_ptr(i32 %23)
  store %struct.dpaa_percpu_priv* %24, %struct.dpaa_percpu_priv** %9, align 8
  %25 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %9, align 8
  %26 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %25, i32 0, i32 1
  store %struct.rtnl_link_stats64* %26, %struct.rtnl_link_stats64** %8, align 8
  %27 = call i32 @qm_fd_clear_fd(%struct.qm_fd* %12)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.dpaa_priv*, %struct.dpaa_priv** %11, align 8
  %33 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @skb_cow_head(%struct.sk_buff* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %133

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @skb_is_nonlinear(%struct.sk_buff* %39)
  %41 = call i32 @WARN_ON(i32 %40)
  br label %42

42:                                               ; preds = %38, %2
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DPAA_SGT_MAX_ENTRIES, align 8
  %51 = icmp sge i64 %49, %50
  br label %52

52:                                               ; preds = %45, %42
  %53 = phi i1 [ false, %42 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i64 @__skb_linearize(%struct.sk_buff* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %133

62:                                               ; preds = %57
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @skb_is_nonlinear(%struct.sk_buff* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.dpaa_priv*, %struct.dpaa_priv** %11, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_to_sg_fd(%struct.dpaa_priv* %69, %struct.sk_buff* %70, %struct.qm_fd* %12)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %9, align 8
  %73 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %80

76:                                               ; preds = %65
  %77 = load %struct.dpaa_priv*, %struct.dpaa_priv** %11, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @skb_to_contig_fd(%struct.dpaa_priv* %77, %struct.sk_buff* %78, %struct.qm_fd* %12, i32* %13)
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %68
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %132

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %88, i32 %89)
  store %struct.netdev_queue* %90, %struct.netdev_queue** %10, align 8
  %91 = load i32, i32* @jiffies, align 4
  %92 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %93 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.dpaa_priv*, %struct.dpaa_priv** %11, align 8
  %95 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %87
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load i32, i32* @FM_FD_CMD_UPD, align 4
  %108 = call i32 @cpu_to_be32(i32 %107)
  %109 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %106, %98, %87
  %119 = load %struct.dpaa_priv*, %struct.dpaa_priv** %11, align 8
  %120 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @dpaa_xmit(%struct.dpaa_priv* %119, %struct.rtnl_link_stats64* %120, i32 %121, %struct.qm_fd* %12)
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i64 @likely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %128, i32* %3, align 4
  br label %141

129:                                              ; preds = %118
  %130 = load %struct.dpaa_priv*, %struct.dpaa_priv** %11, align 8
  %131 = call i32 @dpaa_cleanup_tx_fd(%struct.dpaa_priv* %130, %struct.qm_fd* %12)
  br label %132

132:                                              ; preds = %129, %86
  br label %133

133:                                              ; preds = %132, %61, %37
  %134 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %135 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @dev_kfree_skb(%struct.sk_buff* %138)
  %140 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %133, %127
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dpaa_percpu_priv* @this_cpu_ptr(i32) #1

declare dso_local i32 @qm_fd_clear_fd(%struct.qm_fd*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @skb_to_sg_fd(%struct.dpaa_priv*, %struct.sk_buff*, %struct.qm_fd*) #1

declare dso_local i32 @skb_to_contig_fd(%struct.dpaa_priv*, %struct.sk_buff*, %struct.qm_fd*, i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @dpaa_xmit(%struct.dpaa_priv*, %struct.rtnl_link_stats64*, i32, %struct.qm_fd*) #1

declare dso_local i32 @dpaa_cleanup_tx_fd(%struct.dpaa_priv*, %struct.qm_fd*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
