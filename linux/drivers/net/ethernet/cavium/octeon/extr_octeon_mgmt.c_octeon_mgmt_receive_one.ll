; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_receive_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_receive_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i64, i64, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%union.cvmx_mixx_ircnt = type { i64 }
%union.mgmt_port_ring_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RING_ENTRY_CODE_DONE = common dso_local global i64 0, align 8
@RING_ENTRY_CODE_MORE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MIX_IRCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_mgmt*)* @octeon_mgmt_receive_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mgmt_receive_one(%struct.octeon_mgmt* %0) #0 {
  %2 = alloca %struct.octeon_mgmt*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %union.cvmx_mixx_ircnt, align 8
  %5 = alloca %union.mgmt_port_ring_entry, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %union.mgmt_port_ring_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skb_shared_hwtstamps*, align 8
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %2, align 8
  %13 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %3, align 8
  store i32 1, i32* %10, align 4
  %16 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %17 = call i8* @octeon_mgmt_dequeue_rx_buffer(%struct.octeon_mgmt* %16, %struct.sk_buff** %6)
  %18 = bitcast %union.mgmt_port_ring_entry* %5 to i8**
  store i8* %17, i8** %18, align 8
  %19 = bitcast %union.mgmt_port_ring_entry* %5 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RING_ENTRY_CODE_DONE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = bitcast %union.mgmt_port_ring_entry* %5 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @skb_put(%struct.sk_buff* %28, i64 %31)
  br label %33

33:                                               ; preds = %145, %27
  %34 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %35 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %44)
  store %struct.skb_shared_hwtstamps* %45, %struct.skb_shared_hwtstamps** %12, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ns_to_ktime(i32 %46)
  %48 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %12, align 8
  %49 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @__skb_pull(%struct.sk_buff* %50, i32 8)
  br label %52

52:                                               ; preds = %38, %33
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @eth_type_trans(%struct.sk_buff* %53, %struct.net_device* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %65
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @netif_receive_skb(%struct.sk_buff* %73)
  store i32 0, i32* %10, align 4
  br label %150

75:                                               ; preds = %1
  %76 = bitcast %union.mgmt_port_ring_entry* %5 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RING_ENTRY_CODE_MORE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %146

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = bitcast %union.mgmt_port_ring_entry* %5 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @skb_put(%struct.sk_buff* %82, i64 %85)
  br label %87

87:                                               ; preds = %139, %81
  %88 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %89 = call i8* @octeon_mgmt_dequeue_rx_buffer(%struct.octeon_mgmt* %88, %struct.sk_buff** %7)
  %90 = bitcast %union.mgmt_port_ring_entry* %9 to i8**
  store i8* %89, i8** %90, align 8
  %91 = bitcast %union.mgmt_port_ring_entry* %9 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RING_ENTRY_CODE_MORE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = bitcast %union.mgmt_port_ring_entry* %9 to %struct.TYPE_4__*
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @RING_ENTRY_CODE_DONE, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %151

103:                                              ; preds = %96, %87
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = bitcast %union.mgmt_port_ring_entry* %9 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @skb_put(%struct.sk_buff* %104, i64 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @GFP_ATOMIC, align 4
  %114 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %109, i32 0, i64 %112, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %8, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = icmp ne %struct.sk_buff* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %103
  br label %151

118:                                              ; preds = %103
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call i32 @skb_tail_pointer(%struct.sk_buff* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @skb_copy_bits(%struct.sk_buff* %119, i32 0, i32 %121, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %151

128:                                              ; preds = %118
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @skb_put(%struct.sk_buff* %129, i64 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %138, %struct.sk_buff** %6, align 8
  br label %139

139:                                              ; preds = %128
  %140 = bitcast %union.mgmt_port_ring_entry* %9 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @RING_ENTRY_CODE_MORE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %87, label %145

145:                                              ; preds = %139
  br label %33

146:                                              ; preds = %75
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %147)
  br label %149

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %149, %52
  br label %174

151:                                              ; preds = %127, %117, %102
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %154)
  br label %156

156:                                              ; preds = %162, %151
  %157 = bitcast %union.mgmt_port_ring_entry* %9 to %struct.TYPE_4__*
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @RING_ENTRY_CODE_MORE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %164 = call i8* @octeon_mgmt_dequeue_rx_buffer(%struct.octeon_mgmt* %163, %struct.sk_buff** %7)
  %165 = bitcast %union.mgmt_port_ring_entry* %9 to i8**
  store i8* %164, i8** %165, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %166)
  br label %156

168:                                              ; preds = %156
  %169 = load %struct.net_device*, %struct.net_device** %3, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %168, %150
  %175 = bitcast %union.cvmx_mixx_ircnt* %4 to i64*
  store i64 0, i64* %175, align 8
  %176 = bitcast %union.cvmx_mixx_ircnt* %4 to %struct.TYPE_6__*
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %179 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @MIX_IRCNT, align 8
  %182 = add nsw i64 %180, %181
  %183 = bitcast %union.cvmx_mixx_ircnt* %4 to i64*
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @cvmx_write_csr(i64 %182, i64 %184)
  %186 = load i32, i32* %10, align 4
  ret i32 %186
}

declare dso_local i8* @octeon_mgmt_dequeue_rx_buffer(%struct.octeon_mgmt*, %struct.sk_buff**) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
