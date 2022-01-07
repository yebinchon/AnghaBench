; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i64, i32, i32, i64, i32, %struct.TYPE_10__, i32*, %struct.sk_buff*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.hns3_desc_cb* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hns3_desc_cb = type { i32, i32 }

@HNS3_RX_HEAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"alloc rx skb fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@next_to_clean = common dso_local global i32 0, align 4
@HNS3_NEED_ADD_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, i32, i8*)* @hns3_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_alloc_skb(%struct.hns3_enet_ring* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns3_enet_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hns3_desc_cb*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %12 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %11, i32 0, i32 10
  %13 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %14 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %15 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %13, i64 %16
  store %struct.hns3_desc_cb* %17, %struct.hns3_desc_cb** %8, align 8
  %18 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %19 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %18, i32 0, i32 9
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %9, align 8
  %26 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %27 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %26, i32 0, i32 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* @HNS3_RX_HEAD_SIZE, align 4
  %31 = call %struct.sk_buff* @napi_alloc_skb(i32* %29, i32 %30)
  %32 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %33 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %32, i32 0, i32 7
  store %struct.sk_buff* %31, %struct.sk_buff** %33, align 8
  %34 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %35 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %34, i32 0, i32 7
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %3
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = call i32 @hns3_rl_err(%struct.net_device* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %47 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %46, i32 0, i32 4
  %48 = call i32 @u64_stats_update_begin(i32* %47)
  %49 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %50 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %55 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %54, i32 0, i32 4
  %56 = call i32 @u64_stats_update_end(i32* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %140

59:                                               ; preds = %3
  %60 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @prefetchw(i32 %62)
  %64 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %65 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %67 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %69 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %68, i32 0, i32 6
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @HNS3_RX_HEAD_SIZE, align 4
  %72 = icmp ule i32 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %59
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @__skb_put(%struct.sk_buff* %74, i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ALIGN(i32 %78, i32 8)
  %80 = call i32 @memcpy(i32 %76, i8* %77, i32 %79)
  %81 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %8, align 8
  %82 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @page_to_nid(i32 %83)
  %85 = call i64 (...) @numa_mem_id()
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %8, align 8
  %92 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  br label %98

93:                                               ; preds = %73
  %94 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %8, align 8
  %95 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @put_page(i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %100 = load i32, i32* @next_to_clean, align 4
  %101 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %99, i32 %100)
  store i32 0, i32* %4, align 4
  br label %140

102:                                              ; preds = %59
  %103 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %104 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %103, i32 0, i32 4
  %105 = call i32 @u64_stats_update_begin(i32* %104)
  %106 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %107 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %112 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %111, i32 0, i32 4
  %113 = call i32 @u64_stats_update_end(i32* %112)
  %114 = load %struct.net_device*, %struct.net_device** %9, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* @HNS3_RX_HEAD_SIZE, align 4
  %117 = call i32 @eth_get_headlen(%struct.net_device* %114, i8* %115, i32 %116)
  %118 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %119 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %122 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @__skb_put(%struct.sk_buff* %120, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %127 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = trunc i64 %128 to i32
  %131 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %132 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %133 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %8, align 8
  %136 = call i32 @hns3_nic_reuse_page(%struct.sk_buff* %125, i32 %130, %struct.hns3_enet_ring* %131, i32 %134, %struct.hns3_desc_cb* %135)
  %137 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %138 = load i32, i32* @next_to_clean, align 4
  %139 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %137, i32 %138)
  store i32 1, i32* %4, align 4
  br label %140

140:                                              ; preds = %102, %98, %43
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hns3_rl_err(%struct.net_device*, i8*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @page_to_nid(i32) #1

declare dso_local i64 @numa_mem_id(...) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @eth_get_headlen(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @hns3_nic_reuse_page(%struct.sk_buff*, i32, %struct.hns3_enet_ring*, i32, %struct.hns3_desc_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
