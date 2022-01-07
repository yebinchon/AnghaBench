; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_fill_skb_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_fill_skb_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.hns3_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@HNS3_INNER_VLAN_TAG = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@HNS3_TXD_VLAN_B = common dso_local global i32 0, align 4
@HNS3_OUTER_VLAN_TAG = common dso_local global i32 0, align 4
@HNS3_TXD_OVLAN_B = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.sk_buff*, %struct.hns3_desc*)* @hns3_fill_skb_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_fill_skb_desc(%struct.hns3_enet_ring* %0, %struct.sk_buff* %1, %struct.hns3_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns3_enet_ring*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hns3_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.hns3_desc* %2, %struct.hns3_desc** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @hns3_handle_vtags(%struct.hns3_enet_ring* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %29, i32 0, i32 0
  %31 = call i32 @u64_stats_update_begin(i32* %30)
  %32 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %33 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %38 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %37, i32 0, i32 0
  %39 = call i32 @u64_stats_update_end(i32* %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %4, align 4
  br label %180

41:                                               ; preds = %3
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @HNS3_INNER_VLAN_TAG, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @HNS3_TXD_VLAN_B, align 4
  %59 = call i32 @hns3_set_field(i32 %57, i32 %58, i32 1)
  br label %80

60:                                               ; preds = %41
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @HNS3_OUTER_VLAN_TAG, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @HNS3_TXD_OVLAN_B, align 4
  %78 = call i32 @hns3_set_field(i32 %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %64, %60
  br label %80

80:                                               ; preds = %79, %45
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %149

87:                                               ; preds = %81
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @skb_reset_mac_len(%struct.sk_buff* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call i32 @hns3_get_l4_protocol(%struct.sk_buff* %90, i32* %15, i32* %16)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %97 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %96, i32 0, i32 0
  %98 = call i32 @u64_stats_update_begin(i32* %97)
  %99 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %100 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %105 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %104, i32 0, i32 0
  %106 = call i32 @u64_stats_update_end(i32* %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %4, align 4
  br label %180

108:                                              ; preds = %87
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @hns3_set_l2l3l4(%struct.sk_buff* %109, i32 %110, i32 %111, i32* %9, i32* %8)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %108
  %117 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %118 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %117, i32 0, i32 0
  %119 = call i32 @u64_stats_update_begin(i32* %118)
  %120 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %121 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %126 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %125, i32 0, i32 0
  %127 = call i32 @u64_stats_update_end(i32* %126)
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %4, align 4
  br label %180

129:                                              ; preds = %108
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i32 @hns3_set_tso(%struct.sk_buff* %130, i32* %10, i32* %13, i32* %9)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %137 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %136, i32 0, i32 0
  %138 = call i32 @u64_stats_update_begin(i32* %137)
  %139 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %140 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %145 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %144, i32 0, i32 0
  %146 = call i32 @u64_stats_update_end(i32* %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %4, align 4
  br label %180

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148, %81
  %150 = load i32, i32* %8, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %153 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  store i8* %151, i8** %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %158 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  store i8* %156, i8** %159, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i8* @cpu_to_le32(i32 %160)
  %162 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %163 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  store i8* %161, i8** %164, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %168 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  store i8* %166, i8** %169, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i8* @cpu_to_le16(i32 %170)
  %172 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %173 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i8* %171, i8** %174, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i8* @cpu_to_le16(i32 %175)
  %177 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %178 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i8* %176, i8** %179, align 8
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %149, %135, %116, %95, %28
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @hns3_handle_vtags(%struct.hns3_enet_ring*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @hns3_set_field(i32, i32, i32) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @hns3_get_l4_protocol(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @hns3_set_l2l3l4(%struct.sk_buff*, i32, i32, i32*, i32*) #1

declare dso_local i32 @hns3_set_tso(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
