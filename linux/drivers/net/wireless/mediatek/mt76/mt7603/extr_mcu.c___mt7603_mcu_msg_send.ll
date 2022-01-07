; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mcu.c___mt7603_mcu_msg_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mcu.c___mt7603_mcu_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.mt76_dev, i64 }
%struct.mt76_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mt7603_mcu_txd = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@MCU_CMD_FW_SCATTER = common dso_local global i32 0, align 4
@MCU_PORT_QUEUE_FW = common dso_local global i32 0, align 4
@MCU_PORT_QUEUE = common dso_local global i32 0, align 4
@MCU_PKT_ID = common dso_local global i32 0, align 4
@MCU_Q_NA = common dso_local global i32 0, align 4
@MCU_CMD_EXT_CID = common dso_local global i32 0, align 4
@MCU_Q_SET = common dso_local global i32 0, align 4
@MT_TXQ_MCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*, %struct.sk_buff*, i32, i32*)* @__mt7603_mcu_msg_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt7603_mcu_msg_send(%struct.mt7603_dev* %0, %struct.sk_buff* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mt7603_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt76_dev*, align 8
  %11 = alloca %struct.mt7603_mcu_txd*, align 8
  %12 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i64 40, i64 12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %20, i32 0, i32 0
  store %struct.mt76_dev* %21, %struct.mt76_dev** %10, align 8
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %10, align 8
  %23 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %4
  %32 = load %struct.mt76_dev*, %struct.mt76_dev** %10, align 8
  %33 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %31, %4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @skb_push(%struct.sk_buff* %40, i32 %41)
  %43 = inttoptr i64 %42 to %struct.mt7603_mcu_txd*
  store %struct.mt7603_mcu_txd* %43, %struct.mt7603_mcu_txd** %11, align 8
  %44 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memset(%struct.mt7603_mcu_txd* %44, i32 0, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %52 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MCU_CMD_FW_SCATTER, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %39
  %58 = load i32, i32* @MCU_PORT_QUEUE_FW, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %61 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  br label %67

62:                                               ; preds = %39
  %63 = load i32, i32* @MCU_PORT_QUEUE, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %66 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @MCU_PKT_ID, align 4
  %69 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %70 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %73 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %80 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @MCU_Q_NA, align 4
  %82 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %83 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  br label %96

84:                                               ; preds = %67
  %85 = load i32, i32* @MCU_CMD_EXT_CID, align 4
  %86 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %87 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %90 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @MCU_Q_SET, align 4
  %92 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %93 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mt7603_mcu_txd*, %struct.mt7603_mcu_txd** %11, align 8
  %95 = getelementptr inbounds %struct.mt7603_mcu_txd, %struct.mt7603_mcu_txd* %94, i32 0, i32 3
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %84, %76
  %97 = load i32*, i32** %8, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %104 = load i32, i32* @MT_TXQ_MCU, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i32 @mt76_tx_queue_skb_raw(%struct.mt7603_dev* %103, i32 %104, %struct.sk_buff* %105, i32 0)
  ret i32 %106
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.mt7603_mcu_txd*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mt76_tx_queue_skb_raw(%struct.mt7603_dev*, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
