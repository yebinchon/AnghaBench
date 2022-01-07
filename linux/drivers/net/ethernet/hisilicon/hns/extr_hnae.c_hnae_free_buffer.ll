; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i32 }
%struct.hnae_desc_cb = type { i64, i32* }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }

@DESC_TYPE_SKB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, %struct.hnae_desc_cb*)* @hnae_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_free_buffer(%struct.hnae_ring* %0, %struct.hnae_desc_cb* %1) #0 {
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca %struct.hnae_desc_cb*, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %3, align 8
  store %struct.hnae_desc_cb* %1, %struct.hnae_desc_cb** %4, align 8
  %5 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %6 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %16 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DESC_TYPE_SKB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %22 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.sk_buff*
  %25 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %24)
  br label %38

26:                                               ; preds = %14
  %27 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %28 = call i32 @is_rx_ring(%struct.hnae_ring* %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %33 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to %struct.page*
  %36 = call i32 @put_page(%struct.page* %35)
  br label %37

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %40 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %38, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @is_rx_ring(%struct.hnae_ring*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
