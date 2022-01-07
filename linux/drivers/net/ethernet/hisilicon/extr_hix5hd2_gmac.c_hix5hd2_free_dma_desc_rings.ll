; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_free_dma_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_free_dma_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { %struct.sk_buff**, i32, %struct.TYPE_4__, %struct.sk_buff**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.hix5hd2_desc* }
%struct.hix5hd2_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { %struct.hix5hd2_desc* }

@RX_DESC_NUM = common dso_local global i32 0, align 4
@MAC_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_DESC_NUM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*)* @hix5hd2_free_dma_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_free_dma_desc_rings(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_priv*, align 8
  %3 = alloca %struct.hix5hd2_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %2, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %50, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RX_DESC_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %14 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %13, i32 0, i32 3
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %15, i64 %17
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %50

23:                                               ; preds = %12
  %24 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %25 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %27, i64 %29
  store %struct.hix5hd2_desc* %30, %struct.hix5hd2_desc** %3, align 8
  %31 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %3, align 8
  %32 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %36 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MAC_MAX_FRAME_SIZE, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %42)
  %44 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %45 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %44, i32 0, i32 3
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %48
  store %struct.sk_buff* null, %struct.sk_buff** %49, align 8
  br label %50

50:                                               ; preds = %23, %22
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %8

53:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %98, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TX_DESC_NUM, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %60 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %59, i32 0, i32 0
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %61, i64 %63
  %65 = load %struct.sk_buff*, %struct.sk_buff** %64, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = icmp eq %struct.sk_buff* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %98

69:                                               ; preds = %58
  %70 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %71 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %73, i64 %75
  store %struct.hix5hd2_desc* %76, %struct.hix5hd2_desc** %3, align 8
  %77 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %3, align 8
  %78 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %82 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @dma_unmap_single(i32 %83, i32 %84, i32 %87, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %90)
  %92 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %93 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %92, i32 0, i32 0
  %94 = load %struct.sk_buff**, %struct.sk_buff*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %94, i64 %96
  store %struct.sk_buff* null, %struct.sk_buff** %97, align 8
  br label %98

98:                                               ; preds = %69, %68
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %54

101:                                              ; preds = %54
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
