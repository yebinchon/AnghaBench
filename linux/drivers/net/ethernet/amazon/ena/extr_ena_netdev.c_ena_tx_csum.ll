; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_tx_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.ena_com_tx_meta }
%struct.ena_com_tx_meta = type { i32, i32, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ENA_ETH_IO_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@ENA_ETH_IO_L3_PROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ENA_ETH_IO_L4_PROTO_TCP = common dso_local global i32 0, align 4
@ENA_ETH_IO_L4_PROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_tx_ctx*, %struct.sk_buff*)* @ena_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_tx_csum(%struct.ena_com_tx_ctx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ena_com_tx_ctx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_com_tx_meta*, align 8
  %7 = alloca i64, align 8
  store %struct.ena_com_tx_ctx* %0, %struct.ena_com_tx_ctx** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %12, i32 0, i32 8
  store %struct.ena_com_tx_meta* %13, %struct.ena_com_tx_meta** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %19, %2
  %23 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %35 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  br label %45

38:                                               ; preds = %22
  %39 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %42 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %38, %27
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %84 [
    i32 128, label %50
    i32 6, label %76
  ]

50:                                               ; preds = %45
  %51 = load i32, i32* @ENA_ETH_IO_L3_PROTO_IPV4, align 4
  %52 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IP_DF, align 4
  %59 = call i32 @htons(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %69, i32 0, i32 4
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %7, align 8
  br label %85

76:                                               ; preds = %45
  %77 = load i32, i32* @ENA_ETH_IO_L3_PROTO_IPV6, align 4
  %78 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %7, align 8
  br label %85

84:                                               ; preds = %45
  br label %85

85:                                               ; preds = %84, %76, %71
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @IPPROTO_TCP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @ENA_ETH_IO_L4_PROTO_TCP, align 4
  %91 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  br label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @ENA_ETH_IO_L4_PROTO_UDP, align 4
  %95 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %100 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @skb_network_header_len(%struct.sk_buff* %101)
  %103 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %104 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @skb_network_offset(%struct.sk_buff* %105)
  %107 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %108 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %109, i32 0, i32 5
  store i32 1, i32* %110, align 4
  br label %114

111:                                              ; preds = %19
  %112 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %112, i32 0, i32 5
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %97
  ret void
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
