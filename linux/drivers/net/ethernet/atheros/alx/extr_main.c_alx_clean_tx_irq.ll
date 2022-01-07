; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_tx_queue = type { i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.alx_priv = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@ALX_DEFAULT_TX_WORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_tx_queue*)* @alx_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_clean_tx_irq(%struct.alx_tx_queue* %0) #0 {
  %2 = alloca %struct.alx_tx_queue*, align 8
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.alx_tx_queue* %0, %struct.alx_tx_queue** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @ALX_DEFAULT_TX_WORK, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.alx_priv* @netdev_priv(i32 %14)
  store %struct.alx_priv* %15, %struct.alx_priv** %3, align 8
  %16 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %17 = call %struct.netdev_queue* @alx_get_tx_queue(%struct.alx_tx_queue* %16)
  store %struct.netdev_queue* %17, %struct.netdev_queue** %4, align 8
  %18 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %19 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %22 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %21, i32 0, i32 1
  %23 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %24 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @alx_read_mem16(i32* %22, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %73, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i1 [ false, %31 ], [ %37, %35 ]
  br i1 %39, label %40, label %74

40:                                               ; preds = %38
  %41 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %42 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %10, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %50, %40
  %63 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @alx_free_txbuf(%struct.alx_tx_queue* %63, i64 %64)
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  %68 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %69 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i64 0, i64* %6, align 8
  br label %73

73:                                               ; preds = %72, %62
  br label %31

74:                                               ; preds = %38
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %77 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %1
  %83 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %84 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %88 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @netif_carrier_ok(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %94 = call i32 @alx_tpd_avail(%struct.alx_tx_queue* %93)
  %95 = sext i32 %94 to i64
  %96 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %97 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = udiv i64 %98, 4
  %100 = icmp ugt i64 %95, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %103 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %102)
  br label %104

104:                                              ; preds = %101, %92, %86, %82
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  ret i32 %108
}

declare dso_local %struct.alx_priv* @netdev_priv(i32) #1

declare dso_local %struct.netdev_queue* @alx_get_tx_queue(%struct.alx_tx_queue*) #1

declare dso_local i64 @alx_read_mem16(i32*, i32) #1

declare dso_local i32 @alx_free_txbuf(%struct.alx_tx_queue*, i64) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @alx_tpd_avail(%struct.alx_tx_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
