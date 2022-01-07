; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_tx_aggr_tmo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_tx_aggr_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_aggr_tmr_cnxt = type { %struct.usb_tx_data_port*, %struct.mwifiex_adapter* }
%struct.usb_tx_data_port = type { i32, i64, i32, i32, %struct.urb_context*, i32 }
%struct.urb_context = type { i32 }
%struct.mwifiex_adapter = type { i32 }
%struct.timer_list = type { i32 }
%struct.sk_buff = type { i32 }

@hold_timer = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"prepare tx aggr skb failed, err=%d\0A\00", align 1
@MWIFIEX_TX_DATA_URB = common dso_local global i64 0, align 8
@timer_context = common dso_local global %struct.tx_aggr_tmr_cnxt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mwifiex_usb_tx_aggr_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_usb_tx_aggr_tmo(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.urb_context*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tx_aggr_tmr_cnxt*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.usb_tx_data_port*, align 8
  %8 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store %struct.urb_context* null, %struct.urb_context** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %9 = load %struct.tx_aggr_tmr_cnxt*, %struct.tx_aggr_tmr_cnxt** %5, align 8
  %10 = ptrtoint %struct.tx_aggr_tmr_cnxt* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @hold_timer, align 4
  %13 = call %struct.tx_aggr_tmr_cnxt* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.tx_aggr_tmr_cnxt* %13, %struct.tx_aggr_tmr_cnxt** %5, align 8
  %14 = load %struct.tx_aggr_tmr_cnxt*, %struct.tx_aggr_tmr_cnxt** %5, align 8
  %15 = getelementptr inbounds %struct.tx_aggr_tmr_cnxt, %struct.tx_aggr_tmr_cnxt* %14, i32 0, i32 1
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  store %struct.mwifiex_adapter* %16, %struct.mwifiex_adapter** %6, align 8
  %17 = load %struct.tx_aggr_tmr_cnxt*, %struct.tx_aggr_tmr_cnxt** %5, align 8
  %18 = getelementptr inbounds %struct.tx_aggr_tmr_cnxt, %struct.tx_aggr_tmr_cnxt* %17, i32 0, i32 0
  %19 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %18, align 8
  store %struct.usb_tx_data_port* %19, %struct.usb_tx_data_port** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %21 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %24 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %25 = call i32 @mwifiex_usb_prepare_tx_aggr_skb(%struct.mwifiex_adapter* %23, %struct.usb_tx_data_port* %24, %struct.sk_buff** %4)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %29, i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %80

33:                                               ; preds = %1
  %34 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %35 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %34, i32 0, i32 5
  %36 = call i64 @atomic_read(i32* %35)
  %37 = load i64, i64* @MWIFIEX_TX_DATA_URB, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %41 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %43 = call i32 @mwifiex_usb_data_sent(%struct.mwifiex_adapter* %42)
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 -1, i32* %8, align 4
  br label %72

46:                                               ; preds = %33
  %47 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %48 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MWIFIEX_TX_DATA_URB, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %54 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %57 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %56, i32 0, i32 4
  %58 = load %struct.urb_context*, %struct.urb_context** %57, align 8
  %59 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %60 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %58, i64 %61
  store %struct.urb_context* %63, %struct.urb_context** %3, align 8
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %65 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %66 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %67 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @mwifiex_usb_construct_send_urb(%struct.mwifiex_adapter* %64, %struct.usb_tx_data_port* %65, i32 %68, %struct.urb_context* %69, %struct.sk_buff* %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %55, %39
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter* %76, %struct.sk_buff* %77, i32 0, i32 -1)
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %28
  %81 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %7, align 8
  %82 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %81, i32 0, i32 2
  %83 = call i32 @spin_unlock_bh(i32* %82)
  ret void
}

declare dso_local %struct.tx_aggr_tmr_cnxt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mwifiex_usb_prepare_tx_aggr_skb(%struct.mwifiex_adapter*, %struct.usb_tx_data_port*, %struct.sk_buff**) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_usb_data_sent(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_usb_construct_send_urb(%struct.mwifiex_adapter*, %struct.usb_tx_data_port*, i32, %struct.urb_context*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
