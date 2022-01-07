; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_tso_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_tso_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tso_state = type { i32, i32, i32, i32, i64, i32, i32, i64, i8*, i8*, i64, i32, i64 }
%struct.efx_nic = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.efx_tx_queue = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tso_state*, %struct.efx_nic*, %struct.efx_tx_queue*, %struct.sk_buff*)* @tso_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tso_start(%struct.tso_state* %0, %struct.efx_nic* %1, %struct.efx_tx_queue* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.tso_state*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_tx_queue*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.tso_state* %0, %struct.tso_state** %5, align 8
  store %struct.efx_nic* %1, %struct.efx_nic** %6, align 8
  store %struct.efx_tx_queue* %2, %struct.efx_tx_queue** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i32 @skb_network_header(%struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub i32 %18, %21
  %23 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %24 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call i32 @skb_transport_header(%struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub i32 %26, %29
  %31 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %32 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %34 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 2
  %41 = add i32 %35, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @skb_headlen(%struct.sk_buff* %42)
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %48 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %51 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %53 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ETH_P_IP, align 4
  %56 = call i64 @htons(i32 %55)
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %4
  %59 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %60 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %63 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub i32 %61, %64
  %66 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %67 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ntohs(i32 %71)
  %73 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %74 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %73, i32 0, i32 12
  store i64 %72, i64* %74, align 8
  br label %87

75:                                               ; preds = %4
  %76 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %77 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %80 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %78, %81
  %83 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %84 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %86 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %85, i32 0, i32 12
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %75, %58
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ntohl(i32 %91)
  %93 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %94 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %105)
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %117 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %116, i32 0, i32 10
  store i64 %115, i64* %117, align 8
  %118 = load %struct.device*, %struct.device** %9, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = call i32 @skb_headlen(%struct.sk_buff* %122)
  %124 = load i32, i32* @DMA_TO_DEVICE, align 4
  %125 = call i8* @dma_map_single(%struct.device* %118, i32 %121, i32 %123, i32 %124)
  store i8* %125, i8** %12, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %128 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %127, i32 0, i32 9
  store i8* %126, i8** %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = call i32 @skb_headlen(%struct.sk_buff* %129)
  %131 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %132 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load i8*, i8** %12, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr i8, i8* %133, i64 %135
  %137 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %138 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %140 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %139, i32 0, i32 7
  store i64 0, i64* %140, align 8
  %141 = load %struct.device*, %struct.device** %9, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @dma_mapping_error(%struct.device* %141, i8* %142)
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %87
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  br label %150

149:                                              ; preds = %87
  br label %150

150:                                              ; preds = %149, %146
  %151 = phi i32 [ %148, %146 ], [ 0, %149 ]
  ret i32 %151
}

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
