; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_txstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wmi_event_txstatus = type { i32, %struct.__wmi_event_txstatus* }
%struct.__wmi_event_txstatus = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ath9k_htc_tx_event = type { i32, i32 }

@HTC_MAX_TX_STATUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_txstatus(%struct.ath9k_htc_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wmi_event_txstatus*, align 8
  %6 = alloca %struct.__wmi_event_txstatus*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ath9k_htc_tx_event*, align 8
  %9 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wmi_event_txstatus*
  store %struct.wmi_event_txstatus* %11, %struct.wmi_event_txstatus** %5, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %70, %2
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.wmi_event_txstatus*, %struct.wmi_event_txstatus** %5, align 8
  %15 = getelementptr inbounds %struct.wmi_event_txstatus, %struct.wmi_event_txstatus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %12
  %19 = load %struct.wmi_event_txstatus*, %struct.wmi_event_txstatus** %5, align 8
  %20 = getelementptr inbounds %struct.wmi_event_txstatus, %struct.wmi_event_txstatus* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HTC_MAX_TX_STATUS, align 4
  %23 = icmp sgt i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.wmi_event_txstatus*, %struct.wmi_event_txstatus** %5, align 8
  %27 = getelementptr inbounds %struct.wmi_event_txstatus, %struct.wmi_event_txstatus* %26, i32 0, i32 1
  %28 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %28, i64 %30
  store %struct.__wmi_event_txstatus* %31, %struct.__wmi_event_txstatus** %6, align 8
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %33 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %34 = call %struct.sk_buff* @ath9k_htc_tx_get_packet(%struct.ath9k_htc_priv* %32, %struct.__wmi_event_txstatus* %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %18
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.ath9k_htc_tx_event* @kzalloc(i32 8, i32 %38)
  store %struct.ath9k_htc_tx_event* %39, %struct.ath9k_htc_tx_event** %8, align 8
  %40 = load %struct.ath9k_htc_tx_event*, %struct.ath9k_htc_tx_event** %8, align 8
  %41 = icmp ne %struct.ath9k_htc_tx_event* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %70

43:                                               ; preds = %37
  %44 = load %struct.ath9k_htc_tx_event*, %struct.ath9k_htc_tx_event** %8, align 8
  %45 = getelementptr inbounds %struct.ath9k_htc_tx_event, %struct.ath9k_htc_tx_event* %44, i32 0, i32 1
  %46 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %47 = call i32 @memcpy(i32* %45, %struct.__wmi_event_txstatus* %46, i32 4)
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.ath9k_htc_tx_event*, %struct.ath9k_htc_tx_event** %8, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_tx_event, %struct.ath9k_htc_tx_event* %53, i32 0, i32 0
  %55 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %54, i32* %58)
  %60 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %61 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  br label %70

65:                                               ; preds = %18
  %66 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %69 = call i32 @ath9k_htc_tx_process(%struct.ath9k_htc_priv* %66, %struct.sk_buff* %67, %struct.__wmi_event_txstatus* %68)
  br label %70

70:                                               ; preds = %65, %43, %42
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %12

73:                                               ; preds = %12
  %74 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %75 = call i32 @ath9k_htc_check_wake_queues(%struct.ath9k_htc_priv* %74)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @ath9k_htc_tx_get_packet(%struct.ath9k_htc_priv*, %struct.__wmi_event_txstatus*) #1

declare dso_local %struct.ath9k_htc_tx_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.__wmi_event_txstatus*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ath9k_htc_tx_process(%struct.ath9k_htc_priv*, %struct.sk_buff*, %struct.__wmi_event_txstatus*) #1

declare dso_local i32 @ath9k_htc_check_wake_queues(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
