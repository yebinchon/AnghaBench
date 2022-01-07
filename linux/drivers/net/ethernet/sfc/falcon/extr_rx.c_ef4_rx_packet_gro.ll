; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_rx_packet_gro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_rx_packet_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { %struct.TYPE_6__, %struct.ef4_nic*, %struct.napi_struct }
%struct.TYPE_6__ = type { i32 }
%struct.ef4_nic = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.napi_struct = type { i32 }
%struct.ef4_rx_buffer = type { i32, i32, i32*, i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.ef4_rx_queue = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@EF4_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_channel*, %struct.ef4_rx_buffer*, i32, i32*)* @ef4_rx_packet_gro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_rx_packet_gro(%struct.ef4_channel* %0, %struct.ef4_rx_buffer* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ef4_channel*, align 8
  %6 = alloca %struct.ef4_rx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.napi_struct*, align 8
  %10 = alloca %struct.ef4_nic*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ef4_rx_queue*, align 8
  store %struct.ef4_channel* %0, %struct.ef4_channel** %5, align 8
  store %struct.ef4_rx_buffer* %1, %struct.ef4_rx_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.ef4_channel*, %struct.ef4_channel** %5, align 8
  %14 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %13, i32 0, i32 2
  store %struct.napi_struct* %14, %struct.napi_struct** %9, align 8
  %15 = load %struct.ef4_channel*, %struct.ef4_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %15, i32 0, i32 1
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %16, align 8
  store %struct.ef4_nic* %17, %struct.ef4_nic** %10, align 8
  %18 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %19 = call %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.ef4_channel*, %struct.ef4_channel** %5, align 8
  %28 = call %struct.ef4_rx_queue* @ef4_channel_get_rx_queue(%struct.ef4_channel* %27)
  store %struct.ef4_rx_queue* %28, %struct.ef4_rx_queue** %12, align 8
  %29 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %12, align 8
  %30 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ef4_free_rx_buffers(%struct.ef4_rx_queue* %29, %struct.ef4_rx_buffer* %30, i32 %31)
  br label %124

33:                                               ; preds = %4
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %10, align 8
  %35 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NETIF_F_RXHASH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %10, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @ef4_rx_buf_hash(%struct.ef4_nic* %44, i32* %45)
  %47 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %48 = call i32 @skb_set_hash(%struct.sk_buff* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @EF4_RX_PKT_CSUMMED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @CHECKSUM_NONE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %96, %60
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %77 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @skb_fill_page_desc(%struct.sk_buff* %65, i32 %69, i32* %72, i32 %75, i32 %78)
  %80 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %81 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  %82 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %64
  br label %101

96:                                               ; preds = %64
  %97 = load %struct.ef4_channel*, %struct.ef4_channel** %5, align 8
  %98 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %97, i32 0, i32 0
  %99 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %6, align 8
  %100 = call %struct.ef4_rx_buffer* @ef4_rx_buf_next(%struct.TYPE_6__* %98, %struct.ef4_rx_buffer* %99)
  store %struct.ef4_rx_buffer* %100, %struct.ef4_rx_buffer** %6, align 8
  br label %64

101:                                              ; preds = %95
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.ef4_nic*, %struct.ef4_nic** %10, align 8
  %109 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul i32 %107, %110
  %112 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = load %struct.ef4_channel*, %struct.ef4_channel** %5, align 8
  %118 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @skb_record_rx_queue(%struct.sk_buff* %116, i32 %120)
  %122 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %123 = call i32 @napi_gro_frags(%struct.napi_struct* %122)
  br label %124

124:                                              ; preds = %101, %26
  ret void
}

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ef4_rx_queue* @ef4_channel_get_rx_queue(%struct.ef4_channel*) #1

declare dso_local i32 @ef4_free_rx_buffers(%struct.ef4_rx_queue*, %struct.ef4_rx_buffer*, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ef4_rx_buf_hash(%struct.ef4_nic*, i32*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.ef4_rx_buffer* @ef4_rx_buf_next(%struct.TYPE_6__*, %struct.ef4_rx_buffer*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_frags(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
