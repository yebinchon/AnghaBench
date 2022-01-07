; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i64, i64, %struct.TYPE_4__, i64, %struct.TYPE_3__*, %struct.tx_ring_info*, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tx_ring_info = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }

@tx_done = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tx done %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*, i64)* @sky2_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_tx_complete(%struct.sky2_port* %0, i64 %1) #0 {
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_ring_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 6
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %16 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %22 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %74, %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  %29 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %30 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %29, i32 0, i32 5
  %31 = load %struct.tx_ring_info*, %struct.tx_ring_info** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %31, i64 %32
  store %struct.tx_ring_info* %33, %struct.tx_ring_info** %9, align 8
  %34 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %35 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %10, align 8
  %37 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %38 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %43 = call i32 @sky2_tx_unmap(i32 %41, %struct.tx_ring_info* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %73

46:                                               ; preds = %28
  %47 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %48 = load i32, i32* @tx_done, align 4
  %49 = load i32, i32* @KERN_DEBUG, align 4
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @netif_printk(%struct.sky2_port* %47, i32 %48, i32 %49, %struct.net_device* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load %struct.tx_ring_info*, %struct.tx_ring_info** %9, align 8
  %63 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %62, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %64)
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %68 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @RING_NEXT(i64 %66, i64 %69)
  %71 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %72 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %46, %28
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %77 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @RING_NEXT(i64 %75, i64 %78)
  store i64 %79, i64* %6, align 8
  br label %24

80:                                               ; preds = %24
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %83 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = call i32 (...) @smp_mb()
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @netdev_completed_queue(%struct.net_device* %85, i32 %86, i32 %87)
  %89 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %90 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = call i32 @u64_stats_update_begin(i32* %91)
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %95 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add i32 %97, %93
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %101 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %106 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = call i32 @u64_stats_update_end(i32* %107)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sky2_tx_unmap(i32, %struct.tx_ring_info*) #1

declare dso_local i32 @netif_printk(%struct.sky2_port*, i32, i32, %struct.net_device*, i8*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @RING_NEXT(i64, i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
