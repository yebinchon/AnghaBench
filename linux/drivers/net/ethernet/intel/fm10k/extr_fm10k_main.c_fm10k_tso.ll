; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fm10k_tx_buffer = type { i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i8*, i64 }
%struct.fm10k_tx_desc = type { i32, i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@FM10K_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"TSO requested for unsupported tunnel, disabling offload\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_ring*, %struct.fm10k_tx_buffer*)* @fm10k_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_tso(%struct.fm10k_ring* %0, %struct.fm10k_tx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca %struct.fm10k_tx_buffer*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fm10k_tx_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %4, align 8
  store %struct.fm10k_tx_buffer* %1, %struct.fm10k_tx_buffer** %5, align 8
  %10 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %10, i32 0, i32 3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @skb_is_gso(%struct.sk_buff* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %109

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @fm10k_tx_encap_offload(%struct.sk_buff* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %92

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i8* @skb_inner_transport_header(%struct.sk_buff* %35)
  store i8* %36, i8** %8, align 8
  br label %40

37:                                               ; preds = %24
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i8* @skb_transport_header(%struct.sk_buff* %38)
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %41 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to %struct.tcphdr*
  %50 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @FM10K_TX_FLAGS_CSUM, align 4
  %57 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %5, align 8
  %66 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %78 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %79 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.fm10k_tx_desc* @FM10K_TX_DESC(%struct.fm10k_ring* %77, i32 %80)
  store %struct.fm10k_tx_desc* %81, %struct.fm10k_tx_desc** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %84 = getelementptr inbounds %struct.fm10k_tx_desc, %struct.fm10k_tx_desc* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cpu_to_le16(i32 %88)
  %90 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %91 = getelementptr inbounds %struct.fm10k_tx_desc, %struct.fm10k_tx_desc* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 1, i32* %3, align 4
  br label %109

92:                                               ; preds = %33
  %93 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %96 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %94
  store i32 %100, i32* %98, align 4
  %101 = call i64 (...) @net_ratelimit()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %105 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = call i32 @netdev_err(%struct.TYPE_4__* %106, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %92
  store i32 -1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %40, %23, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @fm10k_tx_encap_offload(%struct.sk_buff*) #1

declare dso_local i8* @skb_inner_transport_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.fm10k_tx_desc* @FM10K_TX_DESC(%struct.fm10k_ring*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
