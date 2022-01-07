; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_ring = type { i32, i32, %struct.igbvf_buffer*, %struct.igbvf_adapter* }
%struct.igbvf_buffer = type { %union.e1000_adv_tx_desc*, %struct.sk_buff* }
%union.e1000_adv_tx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.igbvf_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@IGBVF_TX_QUEUE_WAKE = common dso_local global i64 0, align 8
@__IGBVF_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_ring*)* @igbvf_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_clean_tx_irq(%struct.igbvf_ring* %0) #0 {
  %2 = alloca %struct.igbvf_ring*, align 8
  %3 = alloca %struct.igbvf_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.igbvf_buffer*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %union.e1000_adv_tx_desc*, align 8
  %8 = alloca %union.e1000_adv_tx_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.igbvf_ring* %0, %struct.igbvf_ring** %2, align 8
  %16 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %17 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %16, i32 0, i32 3
  %18 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %17, align 8
  store %struct.igbvf_adapter* %18, %struct.igbvf_adapter** %3, align 8
  %19 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %19, i32 0, i32 2
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %23 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %26 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %25, i32 0, i32 2
  %27 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %27, i64 %29
  store %struct.igbvf_buffer* %30, %struct.igbvf_buffer** %5, align 8
  %31 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %31, i32 0, i32 0
  %33 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %32, align 8
  store %union.e1000_adv_tx_desc* %33, %union.e1000_adv_tx_desc** %8, align 8
  br label %34

34:                                               ; preds = %124, %1
  %35 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %8, align 8
  %36 = icmp ne %union.e1000_adv_tx_desc* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %130

38:                                               ; preds = %34
  %39 = call i32 (...) @smp_rmb()
  %40 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %8, align 8
  %41 = bitcast %union.e1000_adv_tx_desc* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %130

49:                                               ; preds = %38
  %50 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %50, i32 0, i32 0
  store %union.e1000_adv_tx_desc* null, %union.e1000_adv_tx_desc** %51, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %117, %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %120

56:                                               ; preds = %52
  %57 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %union.e1000_adv_tx_desc* @IGBVF_TX_DESC_ADV(%struct.igbvf_ring* byval(%struct.igbvf_ring) align 8 %57, i32 %58)
  store %union.e1000_adv_tx_desc* %59, %union.e1000_adv_tx_desc** %7, align 8
  %60 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %7, align 8
  %61 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %8, align 8
  %62 = icmp eq %union.e1000_adv_tx_desc* %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %64, i32 0, i32 1
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %6, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %95

69:                                               ; preds = %56
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %75
  %78 = phi i64 [ %73, %75 ], [ 1, %76 ]
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub i32 %80, 1
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call i32 @skb_headlen(%struct.sk_buff* %82)
  %84 = mul i32 %81, %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %84, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %77, %56
  %96 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %97 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %5, align 8
  %98 = call i32 @igbvf_put_txbuf(%struct.igbvf_adapter* %96, %struct.igbvf_buffer* %97)
  %99 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %7, align 8
  %100 = bitcast %union.e1000_adv_tx_desc* %99 to %struct.TYPE_4__*
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %106 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %109, %95
  %111 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %112 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %111, i32 0, i32 2
  %113 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %113, i64 %115
  store %struct.igbvf_buffer* %116, %struct.igbvf_buffer** %5, align 8
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %52

120:                                              ; preds = %52
  %121 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %5, align 8
  %122 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %121, i32 0, i32 0
  %123 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %122, align 8
  store %union.e1000_adv_tx_desc* %123, %union.e1000_adv_tx_desc** %8, align 8
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %127 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %34, label %130

130:                                              ; preds = %124, %48, %37
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %133 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = call i64 @netif_carrier_ok(%struct.net_device* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %142 = call i64 @igbvf_desc_unused(%struct.igbvf_ring* %141)
  %143 = load i64, i64* @IGBVF_TX_QUEUE_WAKE, align 8
  %144 = icmp sge i64 %142, %143
  br label %145

145:                                              ; preds = %140, %136, %130
  %146 = phi i1 [ false, %136 ], [ false, %130 ], [ %144, %140 ]
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %145
  %151 = call i32 (...) @smp_mb()
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = call i64 @netif_queue_stopped(%struct.net_device* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %150
  %156 = load i32, i32* @__IGBVF_DOWN, align 4
  %157 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %157, i32 0, i32 1
  %159 = call i32 @test_bit(i32 %156, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %155
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 @netif_wake_queue(%struct.net_device* %162)
  %164 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %161, %155, %150
  br label %169

169:                                              ; preds = %168, %145
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add i32 %180, %176
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %184 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ult i32 %182, %185
  %187 = zext i1 %186 to i32
  ret i32 %187
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %union.e1000_adv_tx_desc* @IGBVF_TX_DESC_ADV(%struct.igbvf_ring* byval(%struct.igbvf_ring) align 8, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @igbvf_put_txbuf(%struct.igbvf_adapter*, %struct.igbvf_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @igbvf_desc_unused(%struct.igbvf_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
