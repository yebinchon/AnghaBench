; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_reset_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_reset_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32, %struct.tlan_list*, i32, i64, i64, %struct.tlan_list*, i64, i64 }
%struct.tlan_list = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sk_buff = type { i32 }

@TLAN_NUM_TX_LISTS = common dso_local global i32 0, align 4
@TLAN_CSTAT_UNUSED = common dso_local global i32 0, align 4
@TLAN_NUM_RX_LISTS = common dso_local global i32 0, align 4
@TLAN_CSTAT_READY = common dso_local global i32 0, align 4
@TLAN_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@TLAN_LAST_BUFFER = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_reset_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_reset_lists(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlan_list*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.tlan_priv* %9, %struct.tlan_priv** %3, align 8
  %10 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %11 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %10, i32 0, i32 7
  store i64 0, i64* %11, align 8
  %12 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TLAN_NUM_TX_LISTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %19, i32 0, i32 5
  %21 = load %struct.tlan_list*, %struct.tlan_list** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %21, i64 %23
  store %struct.tlan_list* %24, %struct.tlan_list** %5, align 8
  %25 = load i32, i32* @TLAN_CSTAT_UNUSED, align 4
  %26 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %27 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %29 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %34 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %39 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %44 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %49 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 9
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %18
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %58 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @TLAN_NUM_RX_LISTS, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %62 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %134, %56
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @TLAN_NUM_RX_LISTS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %137

67:                                               ; preds = %63
  %68 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %69 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %68, i32 0, i32 1
  %70 = load %struct.tlan_list*, %struct.tlan_list** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %70, i64 %72
  store %struct.tlan_list* %73, %struct.tlan_list** %5, align 8
  %74 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %75 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 32, %78
  %80 = add i64 %76, %79
  store i64 %80, i64* %6, align 8
  %81 = load i32, i32* @TLAN_CSTAT_READY, align 4
  %82 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %83 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @TLAN_MAX_FRAME_SIZE, align 4
  %85 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %86 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @TLAN_MAX_FRAME_SIZE, align 4
  %88 = load i32, i32* @TLAN_LAST_BUFFER, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %91 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %89, i32* %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load i32, i32* @TLAN_MAX_FRAME_SIZE, align 4
  %97 = add nsw i32 %96, 5
  %98 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %95, i32 %97)
  store %struct.sk_buff* %98, %struct.sk_buff** %7, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %67
  br label %137

102:                                              ; preds = %67
  %103 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %104 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @TLAN_MAX_FRAME_SIZE, align 4
  %110 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %111 = call i64 @pci_map_single(i32 %105, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %113 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 %111, i64* %116, align 8
  %117 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = call i32 @tlan_store_skb(%struct.tlan_list* %117, %struct.sk_buff* %118)
  %120 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %121 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %126 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 32
  %132 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %133 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %102
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %63

137:                                              ; preds = %101, %63
  br label %138

138:                                              ; preds = %142, %137
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @TLAN_NUM_RX_LISTS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %144 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %143, i32 0, i32 1
  %145 = load %struct.tlan_list*, %struct.tlan_list** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %145, i64 %147
  %149 = call i32 @tlan_store_skb(%struct.tlan_list* %148, %struct.sk_buff* null)
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %138

152:                                              ; preds = %138
  %153 = load %struct.tlan_list*, %struct.tlan_list** %5, align 8
  %154 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @tlan_store_skb(%struct.tlan_list*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
