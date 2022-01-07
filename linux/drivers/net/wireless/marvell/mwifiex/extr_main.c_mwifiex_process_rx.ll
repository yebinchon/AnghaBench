; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_process_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)*, i32 (%struct.mwifiex_adapter.1*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.sk_buff = type { i32 }
%struct.mwifiex_adapter.1 = type opaque
%struct.mwifiex_rxinfo = type { i64 }

@MWIFIEX_USB = common dso_local global i64 0, align 8
@LOW_RX_PENDING = common dso_local global i64 0, align 8
@MWIFIEX_TYPE_AGGR_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_process_rx(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mwifiex_rxinfo*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %1
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %18, i32 0, i32 3
  %20 = call i32 @spin_unlock_bh(i32* %19)
  br label %112

21:                                               ; preds = %12
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 3
  %26 = call i32 @spin_unlock_bh(i32* %25)
  br label %27

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %102, %27
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 6
  %31 = call %struct.sk_buff* @skb_dequeue(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %3, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %103

33:                                               ; preds = %28
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %34, i32 0, i32 5
  %36 = call i32 @atomic_dec(i32* %35)
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MWIFIEX_USB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41, %33
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %48, i32 0, i32 5
  %50 = call i64 @atomic_read(i32* %49)
  %51 = load i64, i64* @LOW_RX_PENDING, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.mwifiex_adapter.1*)*, i32 (%struct.mwifiex_adapter.1*)** %56, align 8
  %58 = icmp ne i32 (%struct.mwifiex_adapter.1*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (%struct.mwifiex_adapter.1*)*, i32 (%struct.mwifiex_adapter.1*)** %62, align 8
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %65 = bitcast %struct.mwifiex_adapter* %64 to %struct.mwifiex_adapter.1*
  %66 = call i32 %63(%struct.mwifiex_adapter.1* %65)
  br label %67

67:                                               ; preds = %59, %53
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %71 = call i32 @mwifiex_queue_main_work(%struct.mwifiex_adapter* %70)
  br label %72

72:                                               ; preds = %67, %47, %41
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call %struct.mwifiex_rxinfo* @MWIFIEX_SKB_RXCB(%struct.sk_buff* %73)
  store %struct.mwifiex_rxinfo* %74, %struct.mwifiex_rxinfo** %4, align 8
  %75 = load %struct.mwifiex_rxinfo*, %struct.mwifiex_rxinfo** %4, align 8
  %76 = getelementptr inbounds %struct.mwifiex_rxinfo, %struct.mwifiex_rxinfo* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MWIFIEX_TYPE_AGGR_DATA, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %72
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)*, i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)** %83, align 8
  %85 = icmp ne i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)*, i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)** %89, align 8
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %92 = bitcast %struct.mwifiex_adapter* %91 to %struct.mwifiex_adapter.0*
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = call i32 %90(%struct.mwifiex_adapter.0* %92, %struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %86, %80
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %96)
  br label %102

98:                                               ; preds = %72
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = call i32 @mwifiex_handle_rx_packet(%struct.mwifiex_adapter* %99, %struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %28

103:                                              ; preds = %28
  %104 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %104, i32 0, i32 3
  %106 = call i32 @spin_lock_bh(i32* %105)
  %107 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %109, i32 0, i32 3
  %111 = call i32 @spin_unlock_bh(i32* %110)
  br label %112

112:                                              ; preds = %103, %17
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_queue_main_work(%struct.mwifiex_adapter*) #1

declare dso_local %struct.mwifiex_rxinfo* @MWIFIEX_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @mwifiex_handle_rx_packet(%struct.mwifiex_adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
