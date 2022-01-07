; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_ring = type { i32 }
%struct.sk_buff = type { i64, i8*, i32 }
%union.anon = type { %struct.iphdr* }
%struct.iphdr = type { i32, i32, i64, i32 }
%union.anon.0 = type { %struct.tcphdr* }
%struct.tcphdr = type { i32, i32 }
%struct.ipv6hdr = type { i64 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@E1000_ADVTXD_TUCMD_L4T_TCP = common dso_local global i32 0, align 4
@E1000_ADVTXD_TUCMD_IPV4 = common dso_local global i32 0, align 4
@E1000_ADVTXD_L4LEN_SHIFT = common dso_local global i32 0, align 4
@E1000_ADVTXD_MSS_SHIFT = common dso_local global i32 0, align 4
@E1000_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@IGBVF_TX_FLAGS_VLAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_ring*, %struct.sk_buff*, i32, i32*)* @igbvf_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_tso(%struct.igbvf_ring* %0, %struct.sk_buff* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.igbvf_ring*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.anon, align 8
  %14 = alloca %union.anon.0, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.igbvf_ring* %0, %struct.igbvf_ring** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %161

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @skb_is_gso(%struct.sk_buff* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %161

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @skb_cow_head(%struct.sk_buff* %32, i32 0)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %5, align 4
  br label %161

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i8* @skb_network_header(%struct.sk_buff* %39)
  %41 = bitcast %union.anon* %13 to i8**
  store i8* %40, i8** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i8* @skb_checksum_start(%struct.sk_buff* %42)
  %44 = bitcast %union.anon.0* %14 to i8**
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @E1000_ADVTXD_TUCMD_L4T_TCP, align 4
  store i32 %45, i32* %11, align 4
  %46 = bitcast %union.anon* %13 to %struct.iphdr**
  %47 = load %struct.iphdr*, %struct.iphdr** %46, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %81

51:                                               ; preds = %38
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i8* @skb_checksum_start(%struct.sk_buff* %52)
  store i8* %53, i8** %18, align 8
  %54 = bitcast %union.anon* %13 to i8**
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast %union.anon* %13 to %struct.iphdr**
  %57 = load %struct.iphdr*, %struct.iphdr** %56, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %55, i64 %61
  store i8* %62, i8** %19, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @csum_partial(i8* %63, i32 %69, i32 0)
  %71 = call i32 @csum_fold(i32 %70)
  %72 = bitcast %union.anon* %13 to %struct.iphdr**
  %73 = load %struct.iphdr*, %struct.iphdr** %72, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* @E1000_ADVTXD_TUCMD_IPV4, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = bitcast %union.anon* %13 to %struct.iphdr**
  %79 = load %struct.iphdr*, %struct.iphdr** %78, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  br label %85

81:                                               ; preds = %38
  %82 = bitcast %union.anon* %13 to %struct.ipv6hdr**
  %83 = load %struct.ipv6hdr*, %struct.ipv6hdr** %82, align 8
  %84 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %51
  %86 = bitcast %union.anon.0* %14 to i8**
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %87 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %16, align 4
  %95 = bitcast %union.anon.0* %14 to %struct.tcphdr**
  %96 = load %struct.tcphdr*, %struct.tcphdr** %95, align 8
  %97 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 4
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %15, align 4
  %108 = bitcast %union.anon.0* %14 to %struct.tcphdr**
  %109 = load %struct.tcphdr*, %struct.tcphdr** %108, align 8
  %110 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %109, i32 0, i32 1
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @htonl(i32 %111)
  %113 = call i32 @csum_replace_by_diff(i32* %110, i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %16, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* @E1000_ADVTXD_L4LEN_SHIFT, align 4
  %119 = shl i32 %117, %118
  store i32 %119, i32* %12, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @E1000_ADVTXD_MSS_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = bitcast %union.anon.0* %14 to i8**
  %129 = load i8*, i8** %128, align 8
  %130 = bitcast %union.anon* %13 to i8**
  %131 = load i8*, i8** %130, align 8
  %132 = ptrtoint i8* %129 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  %136 = bitcast %union.anon* %13 to i8**
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %137 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = load i32, i32* @E1000_ADVTXD_MACLEN_SHIFT, align 4
  %145 = zext i32 %144 to i64
  %146 = shl i64 %143, %145
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = or i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @IGBVF_TX_FLAGS_VLAN_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @igbvf_tx_ctxtdesc(%struct.igbvf_ring* %156, i32 %157, i32 %158, i32 %159)
  store i32 1, i32* %5, align 4
  br label %161

161:                                              ; preds = %85, %36, %30, %25
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_checksum_start(%struct.sk_buff*) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @csum_partial(i8*, i32, i32) #1

declare dso_local i32 @csum_replace_by_diff(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @igbvf_tx_ctxtdesc(%struct.igbvf_ring*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
