; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i64, %struct.hnae_desc_cb*, %struct.hnae_desc* }
%struct.hnae_desc_cb = type { i32, i32, i32, i8* }
%struct.hnae_desc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.sk_buff = type { i64, i64 }

@HNS_TXD_VLD_B = common dso_local global i32 0, align 4
@HNS_TXD_BUFNUM_S = common dso_local global i32 0, align 4
@DESC_TYPE_SKB = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@HNS_TXD_L3CS_B = common dso_local global i32 0, align 4
@HNS_TXD_L4CS_B = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@HNS_TXD_IPOFFSET_S = common dso_local global i32 0, align 4
@HNS_TXD_FE_B = common dso_local global i32 0, align 4
@next_to_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, i8*, i32, i32, i32, i32, i32, i32)* @fill_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_desc(%struct.hnae_ring* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.hnae_ring*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hnae_desc*, align 8
  %18 = alloca %struct.hnae_desc_cb*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.hnae_ring* %0, %struct.hnae_ring** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %25 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %24, i32 0, i32 2
  %26 = load %struct.hnae_desc*, %struct.hnae_desc** %25, align 8
  %27 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %28 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %26, i64 %29
  store %struct.hnae_desc* %30, %struct.hnae_desc** %17, align 8
  %31 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %32 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %31, i32 0, i32 1
  %33 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %32, align 8
  %34 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %35 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %33, i64 %36
  store %struct.hnae_desc_cb* %37, %struct.hnae_desc_cb** %18, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %18, align 8
  %40 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %18, align 8
  %43 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %18, align 8
  %46 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %18, align 8
  %49 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @cpu_to_le64(i32 %50)
  %52 = load %struct.hnae_desc*, %struct.hnae_desc** %17, align 8
  %53 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.hnae_desc*, %struct.hnae_desc** %17, align 8
  %57 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* @HNS_TXD_VLD_B, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %23, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @HNS_TXD_BUFNUM_S, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %22, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @DESC_TYPE_SKB, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %135

71:                                               ; preds = %8
  %72 = load i8*, i8** %10, align 8
  %73 = bitcast i8* %72 to %struct.sk_buff*
  store %struct.sk_buff* %73, %struct.sk_buff** %19, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %134

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %20, align 8
  %83 = load i32, i32* @ETH_HLEN, align 4
  store i32 %83, i32* %21, align 4
  %84 = load i64, i64* %20, align 8
  %85 = load i32, i32* @ETH_P_8021Q, align 4
  %86 = call i64 @htons(i32 %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = load i64, i64* @VLAN_HLEN, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %21, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %95 = call i64 @vlan_get_protocol(%struct.sk_buff* %94)
  store i64 %95, i64* %20, align 8
  %96 = load i64, i64* %20, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %88, %79
  %100 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @ETH_P_IP, align 4
  %104 = call i64 @htons(i32 %103)
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load i32, i32* @HNS_TXD_L3CS_B, align 4
  %108 = shl i32 1, %107
  %109 = load i32, i32* %23, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* @HNS_TXD_L4CS_B, align 4
  %112 = shl i32 1, %111
  %113 = load i32, i32* %23, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %23, align 4
  br label %128

115:                                              ; preds = %99
  %116 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @ETH_P_IPV6, align 4
  %120 = call i64 @htons(i32 %119)
  %121 = icmp eq i64 %118, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32, i32* @HNS_TXD_L4CS_B, align 4
  %124 = shl i32 1, %123
  %125 = load i32, i32* %23, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %23, align 4
  br label %127

127:                                              ; preds = %122, %115
  br label %128

128:                                              ; preds = %127, %106
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* @HNS_TXD_IPOFFSET_S, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %23, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %23, align 4
  br label %134

134:                                              ; preds = %128, %71
  br label %135

135:                                              ; preds = %134, %8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @HNS_TXD_FE_B, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* %23, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %22, align 4
  %142 = call i8* @cpu_to_le16(i32 %141)
  %143 = load %struct.hnae_desc*, %struct.hnae_desc** %17, align 8
  %144 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  %146 = load i32, i32* %23, align 4
  %147 = call i32 @cpu_to_le32(i32 %146)
  %148 = load %struct.hnae_desc*, %struct.hnae_desc** %17, align 8
  %149 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %152 = load i32, i32* @next_to_use, align 4
  %153 = call i32 @ring_ptr_move_fw(%struct.hnae_ring* %151, i32 %152)
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hnae_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
