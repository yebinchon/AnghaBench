; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_clear_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_clear_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc35815_local = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@TX_FD_NUM = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tc35815_clear_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc35815_clear_queues(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tc35815_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tc35815_local* @netdev_priv(%struct.net_device* %7)
  store %struct.tc35815_local* %8, %struct.tc35815_local** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %95, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TX_FD_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %98

13:                                               ; preds = %9
  %14 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %15 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %28 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  br label %36

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %35, %26
  %37 = phi %struct.sk_buff* [ %34, %26 ], [ null, %35 ]
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %39 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = icmp ne %struct.sk_buff* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %52, label %85

52:                                               ; preds = %36
  %53 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %54 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %57 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %68 = call i32 @pci_unmap_single(i32 %55, i64 %63, i32 %66, i32 %67)
  %69 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %70 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %75, align 8
  %76 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %77 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %52, %36
  %86 = call i32 @cpu_to_le32(i32 -1)
  %87 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %88 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %86, i32* %94, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %9

98:                                               ; preds = %9
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = call i32 @tc35815_init_queues(%struct.net_device* %99)
  ret void
}

declare dso_local %struct.tc35815_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @tc35815_init_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
