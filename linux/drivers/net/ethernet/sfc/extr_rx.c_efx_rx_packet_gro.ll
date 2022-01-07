; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_packet_gro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_packet_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.TYPE_6__, %struct.efx_nic*, %struct.napi_struct }
%struct.TYPE_6__ = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.napi_struct = type { i32 }
%struct.efx_rx_buffer = type { i32, i32, i32*, i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.efx_rx_queue = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@EFX_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@EFX_RX_PKT_CSUM_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*, %struct.efx_rx_buffer*, i32, i32*)* @efx_rx_packet_gro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_rx_packet_gro(%struct.efx_channel* %0, %struct.efx_rx_buffer* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.efx_channel*, align 8
  %6 = alloca %struct.efx_rx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.napi_struct*, align 8
  %10 = alloca %struct.efx_nic*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.efx_rx_queue*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %5, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 2
  store %struct.napi_struct* %14, %struct.napi_struct** %9, align 8
  %15 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %16 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %15, i32 0, i32 1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %16, align 8
  store %struct.efx_nic* %17, %struct.efx_nic** %10, align 8
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
  %27 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %28 = call %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel* %27)
  store %struct.efx_rx_queue* %28, %struct.efx_rx_queue** %12, align 8
  %29 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %12, align 8
  %30 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @efx_free_rx_buffers(%struct.efx_rx_queue* %29, %struct.efx_rx_buffer* %30, i32 %31)
  br label %135

33:                                               ; preds = %4
  %34 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %35 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NETIF_F_RXHASH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @efx_rx_buf_hash(%struct.efx_nic* %44, i32* %45)
  %47 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %48 = call i32 @skb_set_hash(%struct.sk_buff* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @EFX_RX_PKT_CSUMMED, align 4
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
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EFX_RX_PKT_CSUM_LEVEL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %107, %60
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %82 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %85 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @skb_fill_page_desc(%struct.sk_buff* %76, i32 %80, i32* %83, i32 %86, i32 %89)
  %91 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %94 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %75
  br label %112

107:                                              ; preds = %75
  %108 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %109 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %108, i32 0, i32 0
  %110 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %6, align 8
  %111 = call %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.TYPE_6__* %109, %struct.efx_rx_buffer* %110)
  store %struct.efx_rx_buffer* %111, %struct.efx_rx_buffer** %6, align 8
  br label %75

112:                                              ; preds = %106
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %120 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = mul i32 %118, %121
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %128 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %129 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @skb_record_rx_queue(%struct.sk_buff* %127, i32 %131)
  %133 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %134 = call i32 @napi_gro_frags(%struct.napi_struct* %133)
  br label %135

135:                                              ; preds = %112, %26
  ret void
}

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel*) #1

declare dso_local i32 @efx_free_rx_buffers(%struct.efx_rx_queue*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @efx_rx_buf_hash(%struct.efx_nic*, i32*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.TYPE_6__*, %struct.efx_rx_buffer*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_frags(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
