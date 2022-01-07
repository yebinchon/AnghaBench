; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_free_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_free_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32, %struct.tlan_list*, %struct.tlan_list* }
%struct.tlan_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@TLAN_NUM_TX_LISTS = common dso_local global i32 0, align 4
@TLAN_MIN_FRAME_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TLAN_NUM_RX_LISTS = common dso_local global i32 0, align 4
@TLAN_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_free_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_free_lists(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlan_list*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.tlan_priv* %8, %struct.tlan_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %55, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TLAN_NUM_TX_LISTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %9
  %14 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %15 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %14, i32 0, i32 2
  %16 = load %struct.tlan_list*, %struct.tlan_list** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %16, i64 %18
  store %struct.tlan_list* %19, %struct.tlan_list** %5, align 8
  %20 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %21 = call %struct.sk_buff* @tlan_get_skb(%struct.tlan_list* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %13
  %25 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %29 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @TLAN_MIN_FRAME_SIZE, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @max(i32 %36, i32 %38)
  %40 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %41 = call i32 @pci_unmap_single(i32 %27, i64 %33, i32 %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %42)
  %44 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %45 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %50 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 9
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %24, %13
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %9

58:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %100, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TLAN_NUM_RX_LISTS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %59
  %64 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %65 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %64, i32 0, i32 1
  %66 = load %struct.tlan_list*, %struct.tlan_list** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %66, i64 %68
  store %struct.tlan_list* %69, %struct.tlan_list** %5, align 8
  %70 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %71 = call %struct.sk_buff* @tlan_get_skb(%struct.tlan_list* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %6, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %63
  %75 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %76 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %79 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @TLAN_MAX_FRAME_SIZE, align 4
  %85 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %86 = call i32 @pci_unmap_single(i32 %77, i64 %83, i32 %84, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %87)
  %89 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %90 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %95 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 9
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %74, %63
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %59

103:                                              ; preds = %59
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @tlan_get_skb(%struct.tlan_list*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
