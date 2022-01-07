; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_rx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mt7615_mcu_rxd = type { i64, i32 }

@MCU_EXT_EVENT_THERMAL_PROTECT = common dso_local global i64 0, align 8
@MCU_EXT_EVENT_FW_LOG_2_HOST = common dso_local global i64 0, align 8
@MCU_EXT_EVENT_ASSERT_DUMP = common dso_local global i64 0, align 8
@MCU_EXT_EVENT_PS_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7615_mcu_rx_event(%struct.mt7615_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mt7615_mcu_rxd*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.mt7615_mcu_rxd*
  store %struct.mt7615_mcu_rxd* %9, %struct.mt7615_mcu_rxd** %5, align 8
  %10 = load %struct.mt7615_mcu_rxd*, %struct.mt7615_mcu_rxd** %5, align 8
  %11 = getelementptr inbounds %struct.mt7615_mcu_rxd, %struct.mt7615_mcu_rxd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MCU_EXT_EVENT_THERMAL_PROTECT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = load %struct.mt7615_mcu_rxd*, %struct.mt7615_mcu_rxd** %5, align 8
  %17 = getelementptr inbounds %struct.mt7615_mcu_rxd, %struct.mt7615_mcu_rxd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MCU_EXT_EVENT_FW_LOG_2_HOST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = load %struct.mt7615_mcu_rxd*, %struct.mt7615_mcu_rxd** %5, align 8
  %23 = getelementptr inbounds %struct.mt7615_mcu_rxd, %struct.mt7615_mcu_rxd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MCU_EXT_EVENT_ASSERT_DUMP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = load %struct.mt7615_mcu_rxd*, %struct.mt7615_mcu_rxd** %5, align 8
  %29 = getelementptr inbounds %struct.mt7615_mcu_rxd, %struct.mt7615_mcu_rxd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MCU_EXT_EVENT_PS_SYNC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.mt7615_mcu_rxd*, %struct.mt7615_mcu_rxd** %5, align 8
  %35 = getelementptr inbounds %struct.mt7615_mcu_rxd, %struct.mt7615_mcu_rxd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33, %27, %21, %15, %2
  %39 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @mt7615_mcu_rx_unsolicited_event(%struct.mt7615_dev* %39, %struct.sk_buff* %40)
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @mt76_mcu_rx_event(i32* %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @mt7615_mcu_rx_unsolicited_event(%struct.mt7615_dev*, %struct.sk_buff*) #1

declare dso_local i32 @mt76_mcu_rx_event(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
