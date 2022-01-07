; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_reuse_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_reuse_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hns3_enet_ring = type { i64, %struct.hns3_desc* }
%struct.hns3_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hns3_desc_cb = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.hns3_enet_ring*, i32, %struct.hns3_desc_cb*)* @hns3_nic_reuse_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_reuse_page(%struct.sk_buff* %0, i32 %1, %struct.hns3_enet_ring* %2, i32 %3, %struct.hns3_desc_cb* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns3_enet_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns3_desc_cb*, align 8
  %11 = alloca %struct.hns3_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hns3_enet_ring* %2, %struct.hns3_enet_ring** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.hns3_desc_cb* %4, %struct.hns3_desc_cb** %10, align 8
  %14 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %15 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %14, i32 0, i32 1
  %16 = load %struct.hns3_desc*, %struct.hns3_desc** %15, align 8
  %17 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %18 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %16, i64 %19
  store %struct.hns3_desc* %20, %struct.hns3_desc** %11, align 8
  %21 = load %struct.hns3_desc*, %struct.hns3_desc** %11, align 8
  %22 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %27 = call i64 @hns3_buf_size(%struct.hns3_enet_ring* %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %31 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %34 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @skb_add_rx_frag(%struct.sk_buff* %28, i32 %29, i32 %32, i64 %38, i32 %41, i64 %42)
  %44 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %45 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @page_to_nid(i32 %46)
  %48 = call i64 (...) @numa_mem_id()
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %5
  %54 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %55 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %60 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @page_count(i32 %61)
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %5
  br label %102

65:                                               ; preds = %58, %53
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %68 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %72 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %77 = call i64 @hns3_page_size(%struct.hns3_enet_ring* %76)
  %78 = icmp sle i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %65
  %80 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %81 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  %82 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %83 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @get_page(i32 %84)
  br label %102

86:                                               ; preds = %65
  %87 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %88 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @page_count(i32 %89)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %94 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  %95 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %96 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %98 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @get_page(i32 %99)
  br label %101

101:                                              ; preds = %92, %86
  br label %102

102:                                              ; preds = %64, %101, %79
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @hns3_buf_size(%struct.hns3_enet_ring*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i64, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_to_nid(i32) #1

declare dso_local i64 @numa_mem_id(...) #1

declare dso_local i32 @page_count(i32) #1

declare dso_local i64 @hns3_page_size(%struct.hns3_enet_ring*) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
