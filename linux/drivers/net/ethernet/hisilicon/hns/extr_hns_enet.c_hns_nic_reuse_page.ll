; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_reuse_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_reuse_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hnae_ring = type { i64, %struct.hnae_desc* }
%struct.hnae_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hnae_desc_cb = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@HNS_BUFFER_SIZE_2048 = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.hnae_ring*, i32, %struct.hnae_desc_cb*)* @hns_nic_reuse_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_reuse_page(%struct.sk_buff* %0, i32 %1, %struct.hnae_ring* %2, i32 %3, %struct.hnae_desc_cb* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnae_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hnae_desc_cb*, align 8
  %11 = alloca %struct.hnae_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hnae_ring* %2, %struct.hnae_ring** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.hnae_desc_cb* %4, %struct.hnae_desc_cb** %10, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = icmp slt i32 %16, 8192
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %20 = call i64 @hnae_buf_size(%struct.hnae_ring* %19)
  %21 = load i64, i64* @HNS_BUFFER_SIZE_2048, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %18, %5
  %24 = phi i1 [ false, %5 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %27 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %26, i32 0, i32 1
  %28 = load %struct.hnae_desc*, %struct.hnae_desc** %27, align 8
  %29 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %30 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %28, i64 %31
  store %struct.hnae_desc* %32, %struct.hnae_desc** %11, align 8
  %33 = load %struct.hnae_desc*, %struct.hnae_desc** %11, align 8
  %34 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %42 = call i64 @hnae_buf_size(%struct.hnae_ring* %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %54

44:                                               ; preds = %23
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @L1_CACHE_BYTES, align 4
  %47 = call i32 @ALIGN(i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %49 = call i64 @hnae_page_size(%struct.hnae_ring* %48)
  %50 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  %51 = call i64 @hnae_buf_size(%struct.hnae_ring* %50)
  %52 = sub nsw i64 %49, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %44, %40
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %58 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %61 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @skb_add_rx_frag(%struct.sk_buff* %55, i32 %56, i32 %59, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %71 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @page_to_nid(i32 %72)
  %74 = call i64 (...) @numa_node_id()
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %54
  br label %123

80:                                               ; preds = %54
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %85 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @page_count(i32 %86)
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = call i64 @likely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %95 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %99 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %101 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @get_page(i32 %102)
  br label %104

104:                                              ; preds = %92, %83
  br label %123

105:                                              ; preds = %80
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %108 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %112 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %118 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %10, align 8
  %120 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @get_page(i32 %121)
  br label %123

123:                                              ; preds = %79, %104, %116, %105
  ret void
}

declare dso_local i64 @hnae_buf_size(%struct.hnae_ring*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @hnae_page_size(%struct.hnae_ring*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_to_nid(i32) #1

declare dso_local i64 @numa_node_id(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @page_count(i32) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
