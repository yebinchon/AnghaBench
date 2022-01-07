; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_txrx.c_mwifiex_write_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_txrx.c_mwifiex_write_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.mwifiex_private = type { i32, i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mwifiex_txinfo = type { i32, i64, i32, i32 }
%struct.netdev_queue = type { i32 }

@MWIFIEX_BUF_FLAG_BRIDGED_PKT = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_AGGR_PKT = common dso_local global i32 0, align 4
@mwifiex_1d_to_wmm_queue = common dso_local global i32* null, align 8
@LOW_TX_PENDING = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wake queue: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_private*, align 8
  %11 = alloca %struct.mwifiex_txinfo*, align 8
  %12 = alloca %struct.netdev_queue*, align 8
  %13 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %131

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %18)
  store %struct.mwifiex_txinfo* %19, %struct.mwifiex_txinfo** %11, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %21 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %22 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %25 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.mwifiex_private* @mwifiex_get_priv_by_id(%struct.mwifiex_adapter* %20, i32 %23, i32 %26)
  store %struct.mwifiex_private* %27, %struct.mwifiex_private** %10, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %29 = icmp ne %struct.mwifiex_private* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %128

31:                                               ; preds = %17
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mwifiex_set_trans_start(i32 %34)
  %36 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %37 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MWIFIEX_BUF_FLAG_BRIDGED_PKT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 1
  %45 = call i64 @atomic_dec_return(i32* %44)
  br label %46

46:                                               ; preds = %42, %31
  %47 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %48 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MWIFIEX_BUF_FLAG_AGGR_PKT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %128

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %54
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %59 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %64 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %65
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %57
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %57
  br label %87

81:                                               ; preds = %54
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %80
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %128

91:                                               ; preds = %87
  %92 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %92, i32 0, i32 0
  %94 = call i32 @atomic_dec(i32* %93)
  %95 = load i32*, i32** @mwifiex_1d_to_wmm_queue, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  %101 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %102 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i64 @atomic_dec_return(i32* %106)
  %108 = load i64, i64* @LOW_TX_PENDING, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %91
  %111 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %112 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %113, i32 %114)
  store %struct.netdev_queue* %115, %struct.netdev_queue** %12, align 8
  %116 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %117 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %121 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %120)
  %122 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %123 = load i32, i32* @DATA, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %122, i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %119, %110
  br label %127

127:                                              ; preds = %126, %91
  br label %128

128:                                              ; preds = %127, %90, %53, %30
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %129)
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %16
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv_by_id(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @mwifiex_set_trans_start(i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
