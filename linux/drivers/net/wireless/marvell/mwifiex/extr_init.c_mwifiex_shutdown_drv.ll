; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_shutdown_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_shutdown_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i64, i32, %struct.mwifiex_private**, i32, i32, i32, i32, i32*, i32 }
%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mwifiex_rxinfo = type { i64 }

@MWIFIEX_HW_STATUS_NOT_READY = common dso_local global i64 0, align 8
@WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"curr_cmd is still in processing\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"info: shutdown mwifiex...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_shutdown_drv(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_rxinfo*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MWIFIEX_HW_STATUS_NOT_READY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %123

13:                                               ; preds = %1
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %20 = load i32, i32* @WARN, align 4
  %21 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %19, i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 9
  %24 = call i32 @del_timer_sync(i32* %23)
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter* %25, i32* %28)
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %30, i32 0, i32 8
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %18, %13
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %34 = load i32, i32* @MSG, align 4
  %35 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %33, i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %64, %32
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 3
  %45 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %45, i64 %46
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %47, align 8
  %49 = icmp ne %struct.mwifiex_private* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %51, i32 0, i32 3
  %53 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %53, i64 %54
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %55, align 8
  store %struct.mwifiex_private* %56, %struct.mwifiex_private** %3, align 8
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %58 = call i32 @mwifiex_clean_auto_tdls(%struct.mwifiex_private* %57)
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %60 = call i32 @mwifiex_abort_cac(%struct.mwifiex_private* %59)
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %62 = call i32 @mwifiex_free_priv(%struct.mwifiex_private* %61)
  br label %63

63:                                               ; preds = %50, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %36

67:                                               ; preds = %36
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %68, i32 0, i32 7
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %76, %67
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %72, i32 0, i32 6
  %74 = call %struct.sk_buff* @skb_dequeue(i32* %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %5, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter* %77, %struct.sk_buff* %78, i32 0, i32 0)
  br label %71

80:                                               ; preds = %71
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 2
  %83 = call i32 @spin_lock_bh(i32* %82)
  br label %84

84:                                               ; preds = %111, %80
  %85 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %85, i32 0, i32 5
  %87 = call %struct.sk_buff* @skb_dequeue(i32* %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %5, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call %struct.mwifiex_rxinfo* @MWIFIEX_SKB_RXCB(%struct.sk_buff* %90)
  store %struct.mwifiex_rxinfo* %91, %struct.mwifiex_rxinfo** %6, align 8
  %92 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %92, i32 0, i32 4
  %94 = call i32 @atomic_dec(i32* %93)
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %95, i32 0, i32 3
  %97 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %96, align 8
  %98 = load %struct.mwifiex_rxinfo*, %struct.mwifiex_rxinfo** %6, align 8
  %99 = getelementptr inbounds %struct.mwifiex_rxinfo, %struct.mwifiex_rxinfo* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %97, i64 %100
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %101, align 8
  store %struct.mwifiex_private* %102, %struct.mwifiex_private** %3, align 8
  %103 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %104 = icmp ne %struct.mwifiex_private* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %89
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %107 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %89
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %112)
  br label %84

114:                                              ; preds = %84
  %115 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %115, i32 0, i32 2
  %117 = call i32 @spin_unlock_bh(i32* %116)
  %118 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %119 = call i32 @mwifiex_adapter_cleanup(%struct.mwifiex_adapter* %118)
  %120 = load i64, i64* @MWIFIEX_HW_STATUS_NOT_READY, align 8
  %121 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %114, %12
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter*, i32*) #1

declare dso_local i32 @mwifiex_clean_auto_tdls(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_abort_cac(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_free_priv(%struct.mwifiex_private*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_rxinfo* @MWIFIEX_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_adapter_cleanup(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
