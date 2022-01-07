; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c___mt7615_mcu_msg_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c___mt7615_mcu_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mt7615_mcu_txd = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32* }

@MCU_CMD_FW_SCATTER = common dso_local global i32 0, align 4
@MT_TX_MCU_PORT_RX_Q0 = common dso_local global i32 0, align 4
@MT_TX_TYPE_CMD = common dso_local global i32 0, align 4
@MT_TX_MCU_PORT_RX_FWDL = common dso_local global i32 0, align 4
@MT_TX_TYPE_FW = common dso_local global i32 0, align 4
@MT_TXD0_TX_BYTES = common dso_local global i32 0, align 4
@MT_TXD0_P_IDX = common dso_local global i32 0, align 4
@MT_TX_PORT_IDX_MCU = common dso_local global i32 0, align 4
@MT_TXD0_Q_IDX = common dso_local global i32 0, align 4
@MT_TXD1_LONG_FORMAT = common dso_local global i32 0, align 4
@MT_TXD1_HDR_FORMAT = common dso_local global i32 0, align 4
@MT_HDR_FORMAT_CMD = common dso_local global i32 0, align 4
@MT_TXD1_PKT_FMT = common dso_local global i32 0, align 4
@MCU_PKT_ID = common dso_local global i32 0, align 4
@MCU_Q_NA = common dso_local global i32 0, align 4
@MCU_CMD_EXT_CID = common dso_local global i32 0, align 4
@MCU_Q_SET = common dso_local global i32 0, align 4
@MCU_S2D_H2N = common dso_local global i32 0, align 4
@MT76_STATE_MCU_RUNNING = common dso_local global i32 0, align 4
@MT_TXQ_MCU = common dso_local global i32 0, align 4
@MT_TXQ_FWDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*, %struct.sk_buff*, i32, i32*)* @__mt7615_mcu_msg_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt7615_mcu_msg_send(%struct.mt7615_dev* %0, %struct.sk_buff* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mt7615_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mt7615_mcu_txd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %4
  %27 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %28 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %26, %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i64 @skb_push(%struct.sk_buff* %36, i32 56)
  %38 = inttoptr i64 %37 to %struct.mt7615_mcu_txd*
  store %struct.mt7615_mcu_txd* %38, %struct.mt7615_mcu_txd** %9, align 8
  %39 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %40 = call i32 @memset(%struct.mt7615_mcu_txd* %39, i32 0, i32 56)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MCU_CMD_FW_SCATTER, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @MT_TX_MCU_PORT_RX_Q0, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @MT_TX_TYPE_CMD, align 4
  store i32 %47, i32* %12, align 4
  br label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @MT_TX_MCU_PORT_RX_FWDL, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @MT_TX_TYPE_FW, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %53 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %52, i32 0, i32 9
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %15, align 8
  %55 = load i32, i32* @MT_TXD0_TX_BYTES, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FIELD_PREP(i32 %55, i32 %58)
  %60 = load i32, i32* @MT_TXD0_P_IDX, align 4
  %61 = load i32, i32* @MT_TX_PORT_IDX_MCU, align 4
  %62 = call i32 @FIELD_PREP(i32 %60, i32 %61)
  %63 = or i32 %59, %62
  %64 = load i32, i32* @MT_TXD0_Q_IDX, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @FIELD_PREP(i32 %64, i32 %65)
  %67 = or i32 %63, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @cpu_to_le32(i32 %68)
  %70 = load i32*, i32** %15, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @MT_TXD1_LONG_FORMAT, align 4
  %73 = load i32, i32* @MT_TXD1_HDR_FORMAT, align 4
  %74 = load i32, i32* @MT_HDR_FORMAT_CMD, align 4
  %75 = call i32 @FIELD_PREP(i32 %73, i32 %74)
  %76 = or i32 %72, %75
  %77 = load i32, i32* @MT_TXD1_PKT_FMT, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @FIELD_PREP(i32 %77, i32 %78)
  %80 = or i32 %76, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 %88, 8
  %90 = trunc i64 %89 to i32
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %93 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @MT_TX_PORT_IDX_MCU, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @MCU_PQ_ID(i32 %94, i32 %95)
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %99 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @MCU_PKT_ID, align 4
  %101 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %102 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %105 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %51
  %109 = load i32, i32* @MCU_Q_NA, align 4
  %110 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %111 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 0, %112
  %114 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %115 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %128

116:                                              ; preds = %51
  %117 = load i32, i32* @MCU_CMD_EXT_CID, align 4
  %118 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %119 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @MCU_Q_SET, align 4
  %121 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %122 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %125 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %127 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %126, i32 0, i32 3
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %116, %108
  %129 = load i32, i32* @MCU_S2D_H2N, align 4
  %130 = load %struct.mt7615_mcu_txd*, %struct.mt7615_mcu_txd** %9, align 8
  %131 = getelementptr inbounds %struct.mt7615_mcu_txd, %struct.mt7615_mcu_txd* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* %10, align 4
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %128
  %138 = load i32, i32* @MT76_STATE_MCU_RUNNING, align 4
  %139 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %140 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = call i64 @test_bit(i32 %138, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* @MT_TXQ_MCU, align 4
  store i32 %145, i32* %13, align 4
  br label %148

146:                                              ; preds = %137
  %147 = load i32, i32* @MT_TXQ_FWDL, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = call i32 @mt76_tx_queue_skb_raw(%struct.mt7615_dev* %149, i32 %150, %struct.sk_buff* %151, i32 0)
  ret i32 %152
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.mt7615_mcu_txd*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @MCU_PQ_ID(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76_tx_queue_skb_raw(%struct.mt7615_dev*, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
