; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.el3_private = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"el3_start_xmit(length = %ld) called, status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@TX_FIFO = common dso_local global i64 0, align 8
@TX_FREE = common dso_local global i64 0, align 8
@SetTxThreshold = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @el3_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.el3_private*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.el3_private* @netdev_priv(%struct.net_device* %11)
  store %struct.el3_private* %12, %struct.el3_private** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @EL3_STATUS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inw(i64 %21)
  %23 = call i32 @netdev_dbg(%struct.net_device* %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %22)
  %24 = load %struct.el3_private*, %struct.el3_private** %6, align 8
  %25 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @TX_FIFO, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outw(i32 %38, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @TX_FIFO, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outw(i32 0, i64 %47)
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @TX_FIFO, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 3
  %60 = ashr i32 %59, 2
  %61 = call i32 @outsl(i64 %52, i32 %55, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @TX_FREE, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @inw(i64 %65)
  %67 = icmp sle i32 %66, 1536
  br i1 %67, label %68, label %78

68:                                               ; preds = %2
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @netif_stop_queue(%struct.net_device* %69)
  %71 = load i32, i32* @SetTxThreshold, align 4
  %72 = add nsw i32 %71, 1536
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @EL3_CMD, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i32 %72, i64 %76)
  br label %78

78:                                               ; preds = %68, %2
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @pop_tx_status(%struct.net_device* %79)
  %81 = load %struct.el3_private*, %struct.el3_private** %6, align 8
  %82 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %81, i32 0, i32 0
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call i32 @dev_kfree_skb(%struct.sk_buff* %85)
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %87
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outsl(i64, i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pop_tx_status(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
