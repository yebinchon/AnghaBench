; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_rx_skb_rss_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_rx_skb_rss_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, %struct.sk_buff*, i64)* @hns3_set_rx_skb_rss_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_set_rx_skb_rss_type(%struct.hns3_enet_ring* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.hns3_enet_ring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hnae3_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %10 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %12, align 8
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @skb_set_hash(%struct.sk_buff* %24, i64 %25, i32 %26)
  ret void
}

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
