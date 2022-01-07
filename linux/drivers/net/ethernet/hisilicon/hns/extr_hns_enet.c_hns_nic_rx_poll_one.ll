; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_rx_poll_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_rx_poll_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { %struct.hnae_ring* }
%struct.hnae_ring = type { i64 }
%struct.sk_buff = type { i32 }

@RCB_REG_FBDNUM = common dso_local global i64 0, align 8
@RCB_NOF_ALLOC_RX_BUFF_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_nic_ring_data*, i32, i8*)* @hns_nic_rx_poll_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_rx_poll_one(%struct.hns_nic_ring_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hns_nic_ring_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hnae_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %16 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %4, align 8
  %17 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %16, i32 0, i32 0
  %18 = load %struct.hnae_ring*, %struct.hnae_ring** %17, align 8
  store %struct.hnae_ring* %18, %struct.hnae_ring** %7, align 8
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %20 = call i32 @hns_desc_unused(%struct.hnae_ring* %19)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %22 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RCB_REG_FBDNUM, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = call i32 (...) @rmb()
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %77, %74, %3
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %84

41:                                               ; preds = %39
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp sge i32 %44, 16
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %4, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @hns_nic_alloc_rx_buffers(%struct.hns_nic_ring_data* %47, i32 %50)
  store i32 0, i32* %13, align 4
  %52 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %53 = call i32 @hns_desc_unused(%struct.hnae_ring* %52)
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %4, align 8
  %56 = call i32 @hns_nic_poll_rx_skb(%struct.hns_nic_ring_data* %55, %struct.sk_buff** %8, i32* %10)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %85

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %31

77:                                               ; preds = %64
  %78 = load i8*, i8** %6, align 8
  %79 = bitcast i8* %78 to void (%struct.hns_nic_ring_data*, %struct.sk_buff*)*
  %80 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %4, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  call void %79(%struct.hns_nic_ring_data* %80, %struct.sk_buff* %81)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %31

84:                                               ; preds = %39
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %4, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i32 @hns_nic_alloc_rx_buffers(%struct.hns_nic_ring_data* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @hns_desc_unused(%struct.hnae_ring*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @hns_nic_alloc_rx_buffers(%struct.hns_nic_ring_data*, i32) #1

declare dso_local i32 @hns_nic_poll_rx_skb(%struct.hns_nic_ring_data*, %struct.sk_buff**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
