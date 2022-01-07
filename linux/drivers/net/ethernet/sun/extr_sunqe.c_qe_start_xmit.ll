; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sunqe = type { i32, i32, i64, %struct.TYPE_5__*, i32, %struct.sunqe_buffers* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sunqe_buffers = type { i8** }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@tx_buf = common dso_local global i32 0, align 4
@TXD_UPDATE = common dso_local global i32 0, align 4
@TXD_OWN = common dso_local global i32 0, align 4
@TXD_SOP = common dso_local global i32 0, align 4
@TXD_EOP = common dso_local global i32 0, align 4
@TXD_LENGTH = common dso_local global i32 0, align 4
@CREG_CTRL_TWAKEUP = common dso_local global i32 0, align 4
@CREG_CTRL = common dso_local global i64 0, align 8
@CREG_TIMASK = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qe_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sunqe*, align 8
  %6 = alloca %struct.sunqe_buffers*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.sunqe* @netdev_priv(%struct.net_device* %12)
  store %struct.sunqe* %13, %struct.sunqe** %5, align 8
  %14 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %15 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %14, i32 0, i32 5
  %16 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %15, align 8
  store %struct.sunqe_buffers* %16, %struct.sunqe_buffers** %6, align 8
  %17 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %18 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %22 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %25 = call i32 @qe_tx_reclaim(%struct.sunqe* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %30 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %6, align 8
  %33 = getelementptr inbounds %struct.sunqe_buffers, %struct.sunqe_buffers* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @TX_RING_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8* %42, i8** %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @tx_buf, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @TX_RING_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  %49 = call i64 @qebuf_offset(i32 %44, i32 %48)
  %50 = add nsw i64 %43, %49
  store i64 %50, i64* %7, align 8
  %51 = load i32, i32* @TXD_UPDATE, align 4
  %52 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %53 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %51, i32* %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %61, i8* %62, i32 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %67 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 %65, i64* %74, align 8
  %75 = load i32, i32* @TXD_OWN, align 4
  %76 = load i32, i32* @TXD_SOP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @TXD_EOP, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @TXD_LENGTH, align 4
  %82 = and i32 %80, %81
  %83 = or i32 %79, %82
  %84 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %85 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %84, i32 0, i32 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %83, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @NEXT_TX(i32 %93)
  %95 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %96 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @CREG_CTRL_TWAKEUP, align 4
  %98 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %99 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CREG_CTRL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @sbus_writel(i32 %97, i64 %102)
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %116 = call i64 @TX_BUFFS_AVAIL(%struct.sunqe* %115)
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %2
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = call i32 @netif_stop_queue(%struct.net_device* %119)
  %121 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %122 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CREG_TIMASK, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @sbus_writel(i32 0, i64 %125)
  br label %127

127:                                              ; preds = %118, %2
  %128 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %129 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock_irq(i32* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = call i32 @dev_kfree_skb(%struct.sk_buff* %131)
  %133 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %133
}

declare dso_local %struct.sunqe* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @qe_tx_reclaim(%struct.sunqe*) #1

declare dso_local i64 @qebuf_offset(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.sunqe*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
