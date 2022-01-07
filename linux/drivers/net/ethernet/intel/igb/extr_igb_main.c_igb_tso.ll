; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32 }
%struct.igb_tx_buffer = type { i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i8*, i32 }
%union.anon = type { %struct.iphdr* }
%struct.iphdr = type { i32, i32, i64, i32 }
%union.anon.0 = type { %struct.tcphdr* }
%struct.tcphdr = type { i32, i32 }
%struct.ipv6hdr = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@E1000_ADVTXD_TUCMD_L4T_TCP = common dso_local global i32 0, align 4
@E1000_ADVTXD_TUCMD_IPV4 = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@E1000_ADVTXD_L4LEN_SHIFT = common dso_local global i32 0, align 4
@E1000_ADVTXD_MSS_SHIFT = common dso_local global i32 0, align 4
@E1000_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_VLAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_ring*, %struct.igb_tx_buffer*, i32*)* @igb_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_tso(%struct.igb_ring* %0, %struct.igb_tx_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %struct.igb_tx_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %union.anon, align 8
  %13 = alloca %union.anon.0, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %5, align 8
  store %struct.igb_tx_buffer* %1, %struct.igb_tx_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %19, i32 0, i32 3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %199

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = call i32 @skb_is_gso(%struct.sk_buff* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %199

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = call i32 @skb_cow_head(%struct.sk_buff* %34, i32 0)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %4, align 4
  br label %199

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = call i8* @skb_network_header(%struct.sk_buff* %41)
  %43 = bitcast %union.anon* %12 to i8**
  store i8* %42, i8** %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = call i8* @skb_checksum_start(%struct.sk_buff* %44)
  %46 = bitcast %union.anon.0* %13 to i8**
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @E1000_ADVTXD_TUCMD_L4T_TCP, align 4
  store i32 %47, i32* %9, align 4
  %48 = bitcast %union.anon* %12 to %struct.iphdr**
  %49 = load %struct.iphdr*, %struct.iphdr** %48, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %92

53:                                               ; preds = %40
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = call i8* @skb_checksum_start(%struct.sk_buff* %54)
  store i8* %55, i8** %17, align 8
  %56 = bitcast %union.anon* %12 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast %union.anon* %12 to %struct.iphdr**
  %59 = load %struct.iphdr*, %struct.iphdr** %58, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %57, i64 %63
  store i8* %64, i8** %18, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @csum_partial(i8* %65, i32 %71, i32 0)
  %73 = call i32 @csum_fold(i32 %72)
  %74 = bitcast %union.anon* %12 to %struct.iphdr**
  %75 = load %struct.iphdr*, %struct.iphdr** %74, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @E1000_ADVTXD_TUCMD_IPV4, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = bitcast %union.anon* %12 to %struct.iphdr**
  %81 = load %struct.iphdr*, %struct.iphdr** %80, align 8
  %82 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @IGB_TX_FLAGS_TSO, align 4
  %84 = load i32, i32* @IGB_TX_FLAGS_CSUM, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IGB_TX_FLAGS_IPV4, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %89 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %103

92:                                               ; preds = %40
  %93 = bitcast %union.anon* %12 to %struct.ipv6hdr**
  %94 = load %struct.ipv6hdr*, %struct.ipv6hdr** %93, align 8
  %95 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @IGB_TX_FLAGS_TSO, align 4
  %97 = load i32, i32* @IGB_TX_FLAGS_CSUM, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %92, %53
  %104 = bitcast %union.anon.0* %13 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %105 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %15, align 4
  %113 = bitcast %union.anon.0* %13 to %struct.tcphdr**
  %114 = load %struct.tcphdr*, %struct.tcphdr** %113, align 8
  %115 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %14, align 4
  %126 = bitcast %union.anon.0* %13 to %struct.tcphdr**
  %127 = load %struct.tcphdr*, %struct.tcphdr** %126, align 8
  %128 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %127, i32 0, i32 1
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @htonl(i32 %129)
  %131 = call i32 @csum_replace_by_diff(i32* %128, i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %137 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %139 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %141, %143
  %145 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %146 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load i32, i32* @E1000_ADVTXD_L4LEN_SHIFT, align 4
  %154 = shl i32 %152, %153
  store i32 %154, i32* %10, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %156 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %155)
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @E1000_ADVTXD_MSS_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = bitcast %union.anon.0* %13 to i8**
  %164 = load i8*, i8** %163, align 8
  %165 = bitcast %union.anon* %12 to i8**
  %166 = load i8*, i8** %165, align 8
  %167 = ptrtoint i8* %164 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %8, align 4
  %171 = bitcast %union.anon* %12 to i8**
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = ptrtoint i8* %172 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = load i32, i32* @E1000_ADVTXD_MACLEN_SHIFT, align 4
  %180 = zext i32 %179 to i64
  %181 = shl i64 %178, %180
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = or i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %8, align 4
  %186 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %187 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @IGB_TX_FLAGS_VLAN_MASK, align 4
  %190 = and i32 %188, %189
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %8, align 4
  %193 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %194 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @igb_tx_ctxtdesc(%struct.igb_ring* %193, %struct.igb_tx_buffer* %194, i32 %195, i32 %196, i32 %197)
  store i32 1, i32* %4, align 4
  br label %199

199:                                              ; preds = %103, %38, %32, %27
  %200 = load i32, i32* %4, align 4
  ret i32 %200
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

declare dso_local i32 @igb_tx_ctxtdesc(%struct.igb_ring*, %struct.igb_tx_buffer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
