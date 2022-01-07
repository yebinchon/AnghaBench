; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_tx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { %struct.net_device*, i32, i32, i32, i64, %struct.cb* }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cb = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.cb* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@cb_complete = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cb[%d]->status = 0x%04X\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_tx_clean(%struct.nic* %0) #0 {
  %2 = alloca %struct.nic*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cb*, align 8
  %5 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %2, align 8
  %6 = load %struct.nic*, %struct.nic** %2, align 8
  %7 = getelementptr inbounds %struct.nic, %struct.nic* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.nic*, %struct.nic** %2, align 8
  %10 = getelementptr inbounds %struct.nic, %struct.nic* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.nic*, %struct.nic** %2, align 8
  %13 = getelementptr inbounds %struct.nic, %struct.nic* %12, i32 0, i32 5
  %14 = load %struct.cb*, %struct.cb** %13, align 8
  store %struct.cb* %14, %struct.cb** %4, align 8
  br label %15

15:                                               ; preds = %103, %1
  %16 = load %struct.cb*, %struct.cb** %4, align 8
  %17 = getelementptr inbounds %struct.cb, %struct.cb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @cb_complete, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %109

23:                                               ; preds = %15
  %24 = call i32 (...) @dma_rmb()
  %25 = load %struct.nic*, %struct.nic** %2, align 8
  %26 = load i32, i32* @tx_done, align 4
  %27 = load i32, i32* @KERN_DEBUG, align 4
  %28 = load %struct.nic*, %struct.nic** %2, align 8
  %29 = getelementptr inbounds %struct.nic, %struct.nic* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = load %struct.cb*, %struct.cb** %4, align 8
  %32 = bitcast %struct.cb* %31 to i8*
  %33 = load %struct.nic*, %struct.nic** %2, align 8
  %34 = getelementptr inbounds %struct.nic, %struct.nic* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint i8* %32 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = udiv i64 %39, 32
  %41 = trunc i64 %40 to i32
  %42 = load %struct.cb*, %struct.cb** %4, align 8
  %43 = getelementptr inbounds %struct.cb, %struct.cb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netif_printk(%struct.nic* %25, i32 %26, i32 %27, %struct.net_device* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.cb*, %struct.cb** %4, align 8
  %47 = getelementptr inbounds %struct.cb, %struct.cb* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %23
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.cb*, %struct.cb** %4, align 8
  %60 = getelementptr inbounds %struct.cb, %struct.cb* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %63
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.nic*, %struct.nic** %2, align 8
  %72 = getelementptr inbounds %struct.nic, %struct.nic* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cb*, %struct.cb** %4, align 8
  %75 = getelementptr inbounds %struct.cb, %struct.cb* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load %struct.cb*, %struct.cb** %4, align 8
  %82 = getelementptr inbounds %struct.cb, %struct.cb* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %89 = call i32 @pci_unmap_single(i32 %73, i32 %80, i32 %87, i32 %88)
  %90 = load %struct.cb*, %struct.cb** %4, align 8
  %91 = getelementptr inbounds %struct.cb, %struct.cb* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = call i32 @dev_kfree_skb_any(%struct.TYPE_10__* %92)
  %94 = load %struct.cb*, %struct.cb** %4, align 8
  %95 = getelementptr inbounds %struct.cb, %struct.cb* %94, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %95, align 8
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %53, %23
  %97 = load %struct.cb*, %struct.cb** %4, align 8
  %98 = getelementptr inbounds %struct.cb, %struct.cb* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.nic*, %struct.nic** %2, align 8
  %100 = getelementptr inbounds %struct.nic, %struct.nic* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96
  %104 = load %struct.cb*, %struct.cb** %4, align 8
  %105 = getelementptr inbounds %struct.cb, %struct.cb* %104, i32 0, i32 3
  %106 = load %struct.cb*, %struct.cb** %105, align 8
  %107 = load %struct.nic*, %struct.nic** %2, align 8
  %108 = getelementptr inbounds %struct.nic, %struct.nic* %107, i32 0, i32 5
  store %struct.cb* %106, %struct.cb** %108, align 8
  store %struct.cb* %106, %struct.cb** %4, align 8
  br label %15

109:                                              ; preds = %15
  %110 = load %struct.nic*, %struct.nic** %2, align 8
  %111 = getelementptr inbounds %struct.nic, %struct.nic* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.nic*, %struct.nic** %2, align 8
  %117 = getelementptr inbounds %struct.nic, %struct.nic* %116, i32 0, i32 0
  %118 = load %struct.net_device*, %struct.net_device** %117, align 8
  %119 = call i64 @netif_queue_stopped(%struct.net_device* %118)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %115, %109
  %122 = phi i1 [ false, %109 ], [ %120, %115 ]
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.nic*, %struct.nic** %2, align 8
  %128 = getelementptr inbounds %struct.nic, %struct.nic* %127, i32 0, i32 0
  %129 = load %struct.net_device*, %struct.net_device** %128, align 8
  %130 = call i32 @netif_wake_queue(%struct.net_device* %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
