; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.de_private = type { i32, i32, %struct.TYPE_2__*, i32, %struct.de_desc* }
%struct.TYPE_2__ = type { i32, %struct.sk_buff* }
%struct.de_desc = type { i8*, i8*, i8* }

@FirstFrag = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DE_TX_RING_SIZE = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@TxSwInt = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tx queued, slot %d, skblen %d\0A\00", align 1
@TxPoll = common dso_local global i32 0, align 4
@NormalTxPoll = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @de_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.de_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.de_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.de_private* @netdev_priv(%struct.net_device* %13)
  store %struct.de_private* %14, %struct.de_private** %6, align 8
  %15 = load i32, i32* @FirstFrag, align 4
  %16 = load i32, i32* @LastFrag, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.de_private*, %struct.de_private** %6, align 8
  %19 = getelementptr inbounds %struct.de_private, %struct.de_private* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.de_private*, %struct.de_private** %6, align 8
  %22 = call i32 @TX_BUFFS_AVAIL(%struct.de_private* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @netif_stop_queue(%struct.net_device* %26)
  %28 = load %struct.de_private*, %struct.de_private** %6, align 8
  %29 = getelementptr inbounds %struct.de_private, %struct.de_private* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %31, i32* %3, align 4
  br label %135

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %8, align 4
  %35 = load %struct.de_private*, %struct.de_private** %6, align 8
  %36 = getelementptr inbounds %struct.de_private, %struct.de_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load %struct.de_private*, %struct.de_private** %6, align 8
  %39 = getelementptr inbounds %struct.de_private, %struct.de_private* %38, i32 0, i32 4
  %40 = load %struct.de_desc*, %struct.de_desc** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %40, i64 %42
  store %struct.de_desc* %43, %struct.de_desc** %12, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.de_private*, %struct.de_private** %6, align 8
  %48 = getelementptr inbounds %struct.de_private, %struct.de_private* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %55 = call i32 @pci_map_single(i32 %49, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %32
  %61 = load i32, i32* @RingEnd, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %32
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %70 = sdiv i32 %69, 2
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %64
  %73 = load i32, i32* @TxSwInt, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.de_desc*, %struct.de_desc** %12, align 8
  %83 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.de_desc*, %struct.de_desc** %12, align 8
  %87 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load %struct.de_private*, %struct.de_private** %6, align 8
  %90 = getelementptr inbounds %struct.de_private, %struct.de_private* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store %struct.sk_buff* %88, %struct.sk_buff** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.de_private*, %struct.de_private** %6, align 8
  %98 = getelementptr inbounds %struct.de_private, %struct.de_private* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %96, i32* %103, align 8
  %104 = call i32 (...) @wmb()
  %105 = load i32, i32* @DescOwn, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.de_desc*, %struct.de_desc** %12, align 8
  %108 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = call i32 (...) @wmb()
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @NEXT_TX(i32 %110)
  %112 = load %struct.de_private*, %struct.de_private** %6, align 8
  %113 = getelementptr inbounds %struct.de_private, %struct.de_private* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.de_private*, %struct.de_private** %6, align 8
  %115 = load i32, i32* @tx_queued, align 4
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @netif_dbg(%struct.de_private* %114, i32 %115, %struct.net_device* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %76
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = call i32 @netif_stop_queue(%struct.net_device* %125)
  br label %127

127:                                              ; preds = %124, %76
  %128 = load %struct.de_private*, %struct.de_private** %6, align 8
  %129 = getelementptr inbounds %struct.de_private, %struct.de_private* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock_irq(i32* %129)
  %131 = load i32, i32* @TxPoll, align 4
  %132 = load i32, i32* @NormalTxPoll, align 4
  %133 = call i32 @dw32(i32 %131, i32 %132)
  %134 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %127, %25
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @TX_BUFFS_AVAIL(%struct.de_private*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @netif_dbg(%struct.de_private*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @dw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
