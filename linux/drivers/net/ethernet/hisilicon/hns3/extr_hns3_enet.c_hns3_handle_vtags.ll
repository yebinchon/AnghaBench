; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_handle_vtags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_handle_vtags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.vlan_ethhdr = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i64 0, align 8
@HNS3_OUTER_VLAN_TAG = common dso_local global i32 0, align 4
@HNS3_INNER_VLAN_TAG = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.sk_buff*)* @hns3_handle_vtags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_handle_vtags(%struct.hns3_enet_ring* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns3_enet_ring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca %struct.vlan_ethhdr*, align 8
  %8 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %10 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %12, align 8
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_8021Q, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %126

25:                                               ; preds = %20, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @skb_vlan_tagged_multi(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %31 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HNAE3_PORT_BASE_VLAN_ENABLE, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %126

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ETH_P_8021Q, align 4
  %48 = call i64 @htons(i32 %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %52 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i8* @vlan_get_protocol(%struct.sk_buff* %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %126

66:                                               ; preds = %50, %43
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @ETH_P_8021Q, align 4
  %75 = call i64 @htons(i32 %74)
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %79 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @HNS3_OUTER_VLAN_TAG, align 4
  store i32 %84, i32* %8, align 4
  br label %87

85:                                               ; preds = %77, %70
  %86 = load i32, i32* @HNS3_INNER_VLAN_TAG, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i8* @vlan_get_protocol(%struct.sk_buff* %88)
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %126

94:                                               ; preds = %66
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @skb_cow_head(%struct.sk_buff* %95, i32 0)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %126

104:                                              ; preds = %94
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %108, %struct.vlan_ethhdr** %7, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @cpu_to_be16(i32 %115)
  %117 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %7, align 8
  %118 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call i8* @vlan_get_protocol(%struct.sk_buff* %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %104, %102, %87, %60, %40, %24
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_vlan_tagged_multi(%struct.sk_buff*) #1

declare dso_local i8* @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
