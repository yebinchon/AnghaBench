; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_handle_bdinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_handle_bdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_11__, %struct.hns3_desc*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.hns3_desc = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@HNS3_RXD_TRUNCAT_B = common dso_local global i32 0, align 4
@HNS3_RXD_L2E_B = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@HNS3_RXD_DMAC_M = common dso_local global i32 0, align 4
@HNS3_RXD_DMAC_S = common dso_local global i32 0, align 4
@HNS3_L2_TYPE_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.sk_buff*)* @hns3_handle_bdinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_handle_bdinfo(%struct.hns3_enet_ring* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns3_enet_ring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hns3_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %17 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %16, i32 0, i32 6
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %6, align 8
  %24 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %35 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32 [ %32, %28 ], [ %37, %33 ]
  store i32 %39, i32* %13, align 4
  %40 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %41 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %40, i32 0, i32 5
  %42 = load %struct.hns3_desc*, %struct.hns3_desc** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %42, i64 %44
  store %struct.hns3_desc* %45, %struct.hns3_desc** %11, align 8
  %46 = load %struct.hns3_desc*, %struct.hns3_desc** %11, align 8
  %47 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.hns3_desc*, %struct.hns3_desc** %11, align 8
  %52 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.hns3_desc*, %struct.hns3_desc** %11, align 8
  %57 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %38
  %68 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %69 = load %struct.hns3_desc*, %struct.hns3_desc** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @hns3_parse_vlan_tag(%struct.hns3_enet_ring* %68, %struct.hns3_desc* %69, i32 %70, i32* %15)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load i32, i32* @ETH_P_8021Q, align 4
  %76 = call i32 @htons(i32 %75)
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %38
  %81 = load %struct.hns3_desc*, %struct.hns3_desc** %11, align 8
  %82 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @HNS3_RXD_TRUNCAT_B, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = load i32, i32* @HNS3_RXD_L2E_B, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = or i32 %89, %91
  %93 = and i32 %87, %92
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %86, %80
  %96 = phi i1 [ true, %80 ], [ %94, %86 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %95
  %101 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %102 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %101, i32 0, i32 3
  %103 = call i32 @u64_stats_update_begin(i32* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @HNS3_RXD_L2E_B, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %111 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %121

115:                                              ; preds = %100
  %116 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %117 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %123 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %122, i32 0, i32 3
  %124 = call i32 @u64_stats_update_end(i32* %123)
  %125 = load i32, i32* @EFAULT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %206

127:                                              ; preds = %95
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %12, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = call i32 @eth_type_trans(%struct.sk_buff* %131, %struct.net_device* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @hns3_set_gro_and_checksum(%struct.hns3_enet_ring* %136, %struct.sk_buff* %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %127
  %146 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %147 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %146, i32 0, i32 3
  %148 = call i32 @u64_stats_update_begin(i32* %147)
  %149 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %150 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %155 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %154, i32 0, i32 3
  %156 = call i32 @u64_stats_update_end(i32* %155)
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %3, align 4
  br label %206

158:                                              ; preds = %127
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @HNS3_RXD_DMAC_M, align 4
  %161 = load i32, i32* @HNS3_RXD_DMAC_S, align 4
  %162 = call i32 @hnae3_get_field(i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %164 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %163, i32 0, i32 3
  %165 = call i32 @u64_stats_update_begin(i32* %164)
  %166 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %167 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %173 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %175, %171
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @HNS3_L2_TYPE_MULTICAST, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %158
  %181 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %182 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %158
  %187 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %188 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %187, i32 0, i32 3
  %189 = call i32 @u64_stats_update_end(i32* %188)
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %192 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %191, i32 0, i32 2
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = add i32 %196, %190
  store i32 %197, i32* %195, align 4
  %198 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = load %struct.hns3_desc*, %struct.hns3_desc** %11, align 8
  %201 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le32_to_cpu(i32 %203)
  %205 = call i32 @hns3_set_rx_skb_rss_type(%struct.hns3_enet_ring* %198, %struct.sk_buff* %199, i32 %204)
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %186, %145, %121
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @hns3_parse_vlan_tag(%struct.hns3_enet_ring*, %struct.hns3_desc*, i32, i32*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @hns3_set_gro_and_checksum(%struct.hns3_enet_ring*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @hns3_set_rx_skb_rss_type(%struct.hns3_enet_ring*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
