; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_free_pending_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_free_pending_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { %struct.xge_desc_ring*, %struct.TYPE_3__* }
%struct.xge_desc_ring = type { %struct.TYPE_4__*, %struct.xge_raw_desc* }
%struct.TYPE_4__ = type { i8*, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.xge_raw_desc = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xge_free_pending_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xge_free_pending_skb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xge_pdata*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xge_desc_ring*, align 8
  %6 = alloca %struct.xge_raw_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %11)
  store %struct.xge_pdata* %12, %struct.xge_pdata** %3, align 8
  %13 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %17, i32 0, i32 0
  %19 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %18, align 8
  store %struct.xge_desc_ring* %19, %struct.xge_desc_ring** %5, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %67, %1
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  %25 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %26 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %25, i32 0, i32 1
  %27 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %27, i64 %29
  store %struct.xge_raw_desc* %30, %struct.xge_raw_desc** %6, align 8
  %31 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %6, align 8
  %32 = call i32 @is_tx_pending(%struct.xge_raw_desc* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %67

35:                                               ; preds = %24
  %36 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %37 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %8, align 8
  %44 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %45 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  %52 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %53 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dma_free_coherent(%struct.device* %60, i32 %61, i8* %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %35, %34
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %20

70:                                               ; preds = %20
  ret void
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_tx_pending(%struct.xge_raw_desc*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
