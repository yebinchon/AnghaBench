; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_tx_poll_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_tx_poll_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { i32, %struct.TYPE_3__, %struct.hnae_ring* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hnae_ring = type { i32, i32, %struct.TYPE_4__, i32*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.hns_nic_priv = type { i32, i64 }

@RCB_REG_HEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"wrong head (%d, %d-%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NIC_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_nic_ring_data*, i32, i8*)* @hns_nic_tx_poll_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_tx_poll_one(%struct.hns_nic_ring_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_nic_ring_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hnae_ring*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.hns_nic_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %16 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %15, i32 0, i32 2
  %17 = load %struct.hnae_ring*, %struct.hnae_ring** %16, align 8
  store %struct.hnae_ring* %17, %struct.hnae_ring** %8, align 8
  %18 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %19 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.hns_nic_priv* %23, %struct.hns_nic_priv** %11, align 8
  %24 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %25 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RCB_REG_HEAD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  store i32 %29, i32* %12, align 4
  %30 = call i32 (...) @rmb()
  %31 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %32 = call i64 @is_ring_empty(%struct.hnae_ring* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %37 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %3
  store i32 0, i32* %4, align 4
  br label %162

41:                                               ; preds = %34
  %42 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @is_valid_clean_head(%struct.hnae_ring* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %50 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %53 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %57 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %162

63:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %70, %63
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %67 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %72 = call i32 @hns_nic_reclaim_one_desc(%struct.hnae_ring* %71, i32* %13, i32* %14)
  %73 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %74 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %77 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = call i32 @prefetch(i32* %80)
  br label %64

82:                                               ; preds = %64
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %85 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %91 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load %struct.net_device*, %struct.net_device** %9, align 8
  %96 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %97 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %95, i32 %98)
  store %struct.netdev_queue* %99, %struct.netdev_queue** %10, align 8
  %100 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %100, i32 %101, i32 %102)
  %104 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %11, align 8
  %105 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %82
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = call i64 @netif_carrier_ok(%struct.net_device* %109)
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %108, %82
  %114 = phi i1 [ false, %82 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.net_device*, %struct.net_device** %9, align 8
  %120 = call i32 @netif_carrier_on(%struct.net_device* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load %struct.net_device*, %struct.net_device** %9, align 8
  %126 = call i64 @netif_carrier_ok(%struct.net_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %130 = call i32 @ring_space(%struct.hnae_ring* %129)
  %131 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %132 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 2
  %135 = icmp sge i32 %130, %134
  br label %136

136:                                              ; preds = %128, %124, %121
  %137 = phi i1 [ false, %124 ], [ false, %121 ], [ %135, %128 ]
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %136
  %142 = call i32 (...) @smp_mb()
  %143 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %144 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load i32, i32* @NIC_STATE_DOWN, align 4
  %148 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %11, align 8
  %149 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %148, i32 0, i32 0
  %150 = call i32 @test_bit(i32 %147, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %146
  %153 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %154 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %153)
  %155 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %156 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %152, %146, %141
  br label %161

161:                                              ; preds = %160, %136
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %46, %40
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @is_ring_empty(%struct.hnae_ring*) #1

declare dso_local i32 @is_valid_clean_head(%struct.hnae_ring*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @hns_nic_reclaim_one_desc(%struct.hnae_ring*, i32*, i32*) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @ring_space(%struct.hnae_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
